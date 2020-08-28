"""fruit URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/2.1/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.conf import settings
from django.conf.urls import url
from django.urls import include, path
from rest_framework import routers
from rest_framework import permissions
from django.contrib import admin
from rest_framework.documentation import include_docs_urls
from rest_framework.schemas import get_schema_view
from rest_framework_swagger.renderers import SwaggerUIRenderer, OpenAPIRenderer

schema_view = get_schema_view(title='API', renderer_classes=[OpenAPIRenderer, SwaggerUIRenderer])

urlpatterns = [
    path('admin/', admin.site.urls),
    url('api/product/', include('product.apis.urls')),
    url('api/order/', include('order.apis.urls')),
]

if settings.DEBUG:  # 线上环境中，最好去掉
    urlpatterns.append(
        path('swagger/', schema_view, name='swagger'),
    )
    urlpatterns.append(
        url(r'^docs/', include_docs_urls(
            title='源真视界api文档',
            public=False,
            permission_classes=[permissions.AllowAny]))
    )

