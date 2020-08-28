from django.shortcuts import render
from rest_framework import permissions
from rest_framework.decorators import action
from rest_framework.response import Response
from product.permissions import IsOwnerOrReadOnly
from product.models import *
from product.apis.serializers import *
from rest_framework.viewsets import GenericViewSet, ModelViewSet


class SPUFilter(FilterSet):
    """SPU过滤器"""
    min_id = django_filters.rest_framework.NumberFilter(field_name="id", lookup_expr='gte')
    max_id = django_filters.rest_framework.NumberFilter(field_name="id", lookup_expr='lte')
    name = django_filters.rest_framework.CharFilter(field_name='name', lookup_expr="icontains")  # icontains 包含,忽略大小写

    class Meta:
        model = SPU  # 关联的模型
        fields = ['min_id', 'max_id', 'name']  # 过滤的字段


class SPUDetailFilter(FilterSet):
    """SPUDetail过滤器"""
    generic_spec = django_filters.rest_framework.CharFilter(field_name='generic_spec', lookup_expr="icontains")  # icontains 包含,忽略大小写
    special_spec = django_filters.rest_framework.CharFilter(field_name='special_spec', lookup_expr="icontains")  # icontains 包含,忽略大小写

    class Meta:
        model = SPUDetail  # 关联的模型
        fields = ['generic_spec', 'special_spec']  # 过滤的字段


class SKUFilter(FilterSet):
    """SKU过滤器"""
    min_price = django_filters.rest_framework.NumberFilter(field_name="price", lookup_expr='gte')
    max_price = django_filters.rest_framework.NumberFilter(field_name="price", lookup_expr='lte')
    title = django_filters.rest_framework.CharFilter(field_name='title', lookup_expr="icontains")  # icontains 包含,忽略大小写

    class Meta:
        model = SKU  # 关联的模型
        fields = ['min_price', 'max_price', 'title']  # 过滤的字段


class StockFilter(FilterSet):
    """Stock过滤器"""
    min_seckill_stock = django_filters.rest_framework.NumberFilter(field_name="seckill_stock", lookup_expr='gte')
    max_seckill_stock = django_filters.rest_framework.NumberFilter(field_name="seckill_stock", lookup_expr='lte')
    min_seckill_total = django_filters.rest_framework.NumberFilter(field_name="seckill_total", lookup_expr='gte')
    max_seckill_total = django_filters.rest_framework.NumberFilter(field_name="seckill_total", lookup_expr='lte')
    min_stock = django_filters.rest_framework.NumberFilter(field_name="stock", lookup_expr='gte')
    max_stock = django_filters.rest_framework.NumberFilter(field_name="stock", lookup_expr='lte')

    class Meta:
        model = Stock  # 关联的模型
        fields = ['min_seckill_stock', 'max_seckill_stock', 'min_seckill_total',
                  'max_seckill_total', 'min_stock', 'max_stock']  # 过滤的字段


class BrandViewSet(ModelViewSet):
    queryset = Brand.objects.all()
    serializer_class = BrandSerializer
    permission_classes = [permissions.IsAuthenticatedOrReadOnly,
                          IsOwnerOrReadOnly]
    # 定义全局过滤器
    filter_backends = (DjangoFilterBackend, filters.SearchFilter, filters.OrderingFilter)
    # filter_class = BrandFilter  # 自定义模糊搜索
    filter_fields = ('id', 'brand_name')
    # SearchFilter过滤类依赖的过滤条件 => 接口：/spus/?search=...
    # eg：/spus/?search=1，name和id中包含1的数据都会被查询出
    search_fields = ('id', 'brand_name')

    # OrderingFilter过滤类依赖的过滤条件 => 接口：/spus/?ordering=...
    # eg：/spus/?ordering=-name,pk，先按name降序，如果出现name相同，再按pk升序
    ordering_fields = ['brand_order', 'id', 'brand_name']


class ProductCategoryViewSet(ModelViewSet):
    queryset = ProductCategory.objects.all()
    serializer_class = ProductCategorySerializer
    permission_classes = [permissions.IsAuthenticatedOrReadOnly,
                          IsOwnerOrReadOnly]
    # 定义全局过滤器
    filter_backends = (DjangoFilterBackend, filters.SearchFilter, filters.OrderingFilter)
    # filter_class = BrandFilter  # 自定义模糊搜索
    filter_fields = ('id', 'category_name', 'category_code', 'category_status', 'category_level')
    # SearchFilter过滤类依赖的过滤条件 => 接口：/spus/?search=...
    # eg：/spus/?search=1，name和id中包含1的数据都会被查询出
    search_fields = ('id', 'category_name', 'category_code', 'category_status', 'category_level')

    # OrderingFilter过滤类依赖的过滤条件 => 接口：/spus/?ordering=...
    # eg：/spus/?ordering=-name,pk，先按name降序，如果出现name相同，再按pk升序
    ordering_fields = ['updated_time', 'id', 'category_name', 'category_code', 'category_status', 'category_level']


class SpecGroupViewSet(ModelViewSet):
    queryset = SpecGroup.objects.all()
    serializer_class = SpecGroupSerializer
    permission_classes = [permissions.IsAuthenticatedOrReadOnly,
                          IsOwnerOrReadOnly]
    # 定义全局过滤器
    filter_backends = (DjangoFilterBackend, filters.SearchFilter, filters.OrderingFilter)
    # filter_class = BrandFilter  # 自定义模糊搜索
    filter_fields = ('id', 'name', 'category_id')
    # SearchFilter过滤类依赖的过滤条件 => 接口：/spus/?search=...
    # eg：/spus/?search=1，name和id中包含1的数据都会被查询出
    search_fields = ('id', 'name', 'category_id')

    # OrderingFilter过滤类依赖的过滤条件 => 接口：/spus/?ordering=...
    # eg：/spus/?ordering=-name,pk，先按name降序，如果出现name相同，再按pk升序
    ordering_fields = ['updated_time', 'id', 'name']


class SpecParamViewSet(ModelViewSet):
    queryset = SpecParam.objects.all()
    serializer_class = SpecParamSerializer
    permission_classes = [permissions.IsAuthenticatedOrReadOnly,
                          IsOwnerOrReadOnly]
    # 定义全局过滤器
    filter_backends = (DjangoFilterBackend, filters.SearchFilter, filters.OrderingFilter)
    # filter_class = BrandFilter  # 自定义模糊搜索
    filter_fields = ('id', 'name', 'category_id', 'group_id')
    # SearchFilter过滤类依赖的过滤条件 => 接口：/spus/?search=...
    # eg：/spus/?search=1，name和id中包含1的数据都会被查询出
    search_fields = ('id', 'name', 'category_id', 'group_id')

    # OrderingFilter过滤类依赖的过滤条件 => 接口：/spus/?ordering=...
    # eg：/spus/?ordering=-name,pk，先按name降序，如果出现name相同，再按pk升序
    ordering_fields = ['updated_time', 'id', 'name']


class SPUViewSet(ModelViewSet):
    queryset = SPU.objects.all()
    serializer_class = SPUSerializer
    permission_classes = [permissions.IsAuthenticatedOrReadOnly,
                          IsOwnerOrReadOnly]
    # 定义全局过滤器
    filter_backends = (DjangoFilterBackend, filters.SearchFilter, filters.OrderingFilter)
    filter_class = SPUFilter  # 自定义模糊搜索
    filter_fields = ('id', 'name')
    # SearchFilter过滤类依赖的过滤条件 => 接口：/spus/?search=...
    # eg：/spus/?search=1，name和id中包含1的数据都会被查询出
    search_fields = ('id', 'name')

    # OrderingFilter过滤类依赖的过滤条件 => 接口：/spus/?ordering=...
    # eg：/spus/?ordering=-name,pk，先按name降序，如果出现name相同，再按pk升序
    ordering_fields = ['updated_time', 'id', 'name']

    @action(methods=['get'], detail=False)
    def latest(self, request):
        """
        返回最新的spu
        :param request:
        :return:
        """
        spu = SPU.objects.latest('updated_time')
        serializer = self.get_serializer(spu)
        return Response(serializer.data)


class SPUDetailViewSet(ModelViewSet):
    queryset = SPUDetail.objects.all()
    serializer_class = SPUDetailSerializer
    permission_classes = [permissions.IsAuthenticatedOrReadOnly,
                          IsOwnerOrReadOnly]
    # 定义全局过滤器
    filter_backends = (DjangoFilterBackend, filters.SearchFilter, filters.OrderingFilter)
    filter_class = SPUDetailFilter  # 自定义模糊搜索
    filter_fields = ('id', 'spu_id', 'generic_spec', 'special_spec')
    # SearchFilter过滤类依赖的过滤条件 => 接口：/spus/?search=...
    # eg：/spus/?search=1，name和id中包含1的数据都会被查询出
    search_fields = ('id', 'spu_id', 'generic_spec', 'special_spec')

    # OrderingFilter过滤类依赖的过滤条件 => 接口：/spus/?ordering=...
    # eg：/spus/?ordering=-name,pk，先按name降序，如果出现name相同，再按pk升序
    ordering_fields = ['updated_time', 'id', 'spu_id']


class SKUViewSet(ModelViewSet):
    queryset = SKU.objects.all()
    serializer_class = SKUSerializer
    permission_classes = [permissions.IsAuthenticatedOrReadOnly,
                          IsOwnerOrReadOnly]
    # 定义全局过滤器
    filter_backends = (DjangoFilterBackend, filters.SearchFilter, filters.OrderingFilter)
    filter_class = SKUFilter  # 自定义模糊搜索
    filter_fields = ('id', 'title', 'spu_id')
    # SearchFilter过滤类依赖的过滤条件 => 接口：/spus/?search=...
    # eg：/spus/?search=1，name和id中包含1的数据都会被查询出
    search_fields = ('id', 'title', 'spu_id')

    # OrderingFilter过滤类依赖的过滤条件 => 接口：/spus/?ordering=...
    # eg：/spus/?ordering=-name,pk，先按name降序，如果出现name相同，再按pk升序
    ordering_fields = ['price', 'id', 'spu_id']


class StockViewSet(ModelViewSet):
    queryset = Stock.objects.all()
    serializer_class = StockSerializer
    permission_classes = [permissions.IsAuthenticatedOrReadOnly,
                          IsOwnerOrReadOnly]
    # 定义全局过滤器
    filter_backends = (DjangoFilterBackend, filters.SearchFilter, filters.OrderingFilter)
    filter_class = StockFilter  # 自定义模糊搜索
    filter_fields = ('id', 'seckill_stock', 'seckill_total', 'stock')
    # SearchFilter过滤类依赖的过滤条件 => 接口：/spus/?search=...
    # eg：/spus/?search=1，name和id中包含1的数据都会被查询出
    search_fields = ('id', 'seckill_stock', 'seckill_total', 'stock')

    # OrderingFilter过滤类依赖的过滤条件 => 接口：/spus/?ordering=...
    # eg：/spus/?ordering=-name,pk，先按name降序，如果出现name相同，再按pk升序
    ordering_fields = ['stock', 'updated_time', 'id', 'sku_id']
