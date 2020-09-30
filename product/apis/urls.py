from django.conf.urls import url
from django.urls import include, path
from rest_framework import routers
from product.views import *


# 自动视图注册
router = routers.DefaultRouter()
router.register(r'brands', BrandViewSet, basename='brands')
router.register(r'product_categories', ProductCategoryViewSet, basename='product_categories')
router.register(r'spec_groups', SpecGroupViewSet, basename='spec_groups')
router.register(r'spec_params', SpecParamViewSet, basename='spec_params')
router.register(r'spus', SPUViewSet, basename='spus')
router.register(r'spu_details', SPUDetailViewSet, basename='spu_details')
router.register(r'skus', SKUViewSet, basename='skus')
router.register(r'stocks', StockViewSet, basename='stocks')

urlpatterns = [
    url(r'^', include(router.urls)),  # 自动视图注册
]

