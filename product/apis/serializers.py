import logging
import re
from datetime import datetime

import django_filters
from rest_framework import serializers
from product.models import *
from rest_framework import mixins, viewsets, filters
from django_filters.rest_framework import DjangoFilterBackend, FilterSet


class BrandSerializer(serializers.ModelSerializer):

    class Meta:
        model = Brand
        fields = "__all__"


class ProductCategorySerializer(serializers.ModelSerializer):

    class Meta:
        model = ProductCategory
        fields = "__all__"


class SpecGroupSerializer(serializers.ModelSerializer):

    class Meta:
        model = SpecGroup
        fields = "__all__"


class SpecParamSerializer(serializers.ModelSerializer):

    class Meta:
        model = SpecParam
        fields = "__all__"


class SPUSerializer(serializers.ModelSerializer):

    class Meta:
        model = SPU
        fields = "__all__"


class SPUDetailSerializer(serializers.ModelSerializer):

    class Meta:
        model = SPUDetail
        fields = "__all__"


class SKUSerializer(serializers.ModelSerializer):

    class Meta:
        model = SKU
        fields = "__all__"


class StockSerializer(serializers.ModelSerializer):

    class Meta:
        model = Stock
        fields = "__all__"
