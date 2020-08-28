from django.conf.urls import url
from django.urls import include, path
from rest_framework import routers
from product.views import *


# 自动视图注册
router = routers.DefaultRouter()
router.register(r'brands', BrandViewSet, base_name='brands')
router.register(r'product_categories', ProductCategoryViewSet, base_name='product_categories')
router.register(r'spec_groups', SpecGroupViewSet, base_name='spec_groups')
router.register(r'spec_params', SpecParamViewSet, base_name='spec_params')
router.register(r'spus', SPUViewSet, base_name='spus')
router.register(r'spu_details', SPUDetailViewSet, base_name='spu_details')
router.register(r'skus', SKUViewSet, base_name='skus')
router.register(r'stocks', StockViewSet, base_name='stocks')

urlpatterns = [
    url(r'^', include(router.urls)),  # 自动视图注册
]

