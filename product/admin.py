from django.contrib import admin
from .models import *
# Register your models here.


@admin.register(Brand)
class BrandAdmin(admin.ModelAdmin):
    # 这会显示一个下拉列表, 用户可以选择3秒或5秒刷新一次页面.
    refresh_times = (3, 5)
    # 是否显示选择个数
    actions_selection_counter = True
    # 每页显示的数据行数
    list_per_page = 15
    # 显示顶部的选项
    actions_on_top = True
    # 显示底部的选项
    actions_on_bottom = True
    # 首页展示字段
    list_display = ['brand_name', 'telephone', 'brand_web', 'brand_logo', 'brand_desc', 'brand_status',
                    'brand_order', 'created_time', 'created_by', 'updated_time', 'updated_by']
    # 搜索字段
    search_fields = ['brand_name']
    # 筛选字段
    list_filter = ['brand_status',  'brand_order']


@admin.register(ProductCategory)
class ProductCategoryAdmin(admin.ModelAdmin):
    # 这会显示一个下拉列表, 用户可以选择3秒或5秒刷新一次页面.
    refresh_times = (3, 5)
    # 是否显示选择个数
    actions_selection_counter = True
    # 每页显示的数据行数
    list_per_page = 15
    # 显示顶部的选项
    actions_on_top = True
    # 显示底部的选项
    actions_on_bottom = True
    # 首页展示字段
    list_display = ['category_name', 'category_code', 'parent_id', 'category_level', 'category_status',
                    'created_time', 'created_by', 'updated_time', 'updated_by']
    # 搜索字段
    search_fields = ['category_name', 'category_code']
    # 筛选字段
    list_filter = ['category_status']


@admin.register(BrandCategoryMapping)
class BrandCategoryMappingAdmin(admin.ModelAdmin):
    # 这会显示一个下拉列表, 用户可以选择3秒或5秒刷新一次页面.
    refresh_times = (3, 5)
    # 是否显示选择个数
    actions_selection_counter = True
    # 每页显示的数据行数
    list_per_page = 15
    # 显示顶部的选项
    actions_on_top = True
    # 显示底部的选项
    actions_on_bottom = True
    # 首页展示字段
    list_display = ['category_id', 'brand_id', 'status']
    # 筛选字段
    list_filter = ['status']


@admin.register(SpecGroup)
class SpecGroupAdmin(admin.ModelAdmin):
    # 这会显示一个下拉列表, 用户可以选择3秒或5秒刷新一次页面.
    refresh_times = (3, 5)
    # 是否显示选择个数
    actions_selection_counter = True
    # 每页显示的数据行数
    list_per_page = 15
    # 显示顶部的选项
    actions_on_top = True
    # 显示底部的选项
    actions_on_bottom = True
    # 首页展示字段
    list_display = ['category_id', 'name', 'created_time', 'created_by', 'updated_time', 'updated_by']
    # 搜索字段
    search_fields = ['name', 'category_code']
    # 筛选字段
    list_filter = ['category_id']


@admin.register(SpecParam)
class SpecParamAdmin(admin.ModelAdmin):
    # 这会显示一个下拉列表, 用户可以选择3秒或5秒刷新一次页面.
    refresh_times = (3, 5)
    # 是否显示选择个数
    actions_selection_counter = True
    # 每页显示的数据行数
    list_per_page = 15
    # 显示顶部的选项
    actions_on_top = True
    # 显示底部的选项
    actions_on_bottom = True
    # 首页展示字段
    list_display = ['category_id', 'group_id', 'name', 'numeric', 'unit', 'generic', 'searchable', 'segments',
                    'created_time', 'created_by', 'updated_time', 'updated_by']
    # 搜索字段
    search_fields = ['name']
    # 筛选字段
    list_filter = ['generic', 'searchable']


@admin.register(SPU)
class SPUAdmin(admin.ModelAdmin):
    # 这会显示一个下拉列表, 用户可以选择3秒或5秒刷新一次页面.
    refresh_times = (3, 5)
    # 是否显示选择个数
    actions_selection_counter = True
    # 每页显示的数据行数
    list_per_page = 15
    # 显示顶部的选项
    actions_on_top = True
    # 显示底部的选项
    actions_on_bottom = True
    # 首页展示字段
    list_display = ['name', 'title', 'category_id1', 'category_id2', 'category_id3', 'brand',
                    'created_time', 'created_by', 'updated_time', 'updated_by']
    # 搜索字段
    search_fields = ['name', 'title']
    # 筛选字段
    list_filter = ['brand']
    # 在列表页的顶部增加时间选择器
    # date_hierarchy = 'change_date'
    # 在编辑页的只读字段
    # readonly_fields = ['name']
    # 设置在列表页就可以编辑的字段
    # list_editable = ['name', 'code']
    # 在列表页提供快速显示详情信息
    # show_detail_fileds = ['name', 'code']
    # 外键下拉框改成添加搜索按钮文本框显示
    raw_id_fields = ('brand',)
    # 在编辑页面隐藏的字段
    # exclude = ['lastdate']


@admin.register(SPUDetail)
class SPUDetailAdmin(admin.ModelAdmin):
    # 这会显示一个下拉列表, 用户可以选择3秒或5秒刷新一次页面.
    refresh_times = (3, 5)
    # 是否显示选择个数
    actions_selection_counter = True
    # 每页显示的数据行数
    list_per_page = 15
    # 显示顶部的选项
    actions_on_top = True
    # 显示底部的选项
    actions_on_bottom = True
    # 首页展示字段
    list_display = ['spu_id', 'description', 'generic_spec', 'special_spec', 'packing_list', 'after_service', 'status',
                    'created_time', 'created_by', 'updated_time', 'updated_by']
    # 搜索字段
    search_fields = ['spu_id', 'description']
    # 筛选字段
    list_filter = ['status']
    # 在列表页的顶部增加时间选择器
    # date_hierarchy = 'change_date'
    # 在编辑页的只读字段
    # readonly_fields = ['name']
    # 设置在列表页就可以编辑的字段
    # list_editable = ['name', 'code']
    # 在列表页提供快速显示详情信息
    # show_detail_fileds = ['name', 'code']
    # 外键下拉框改成添加搜索按钮文本框显示
    # raw_id_fields = ('brand',)
    # 在编辑页面隐藏的字段
    # exclude = ['lastdate']


@admin.register(SKU)
class SKUAdmin(admin.ModelAdmin):
    # 这会显示一个下拉列表, 用户可以选择3秒或5秒刷新一次页面.
    refresh_times = (3, 5)
    # 是否显示选择个数
    actions_selection_counter = True
    # 每页显示的数据行数
    list_per_page = 15
    # 显示顶部的选项
    actions_on_top = True
    # 显示底部的选项
    actions_on_bottom = True
    # 首页展示字段
    list_display = ['spu_id', 'title', 'images', 'price', 'indexes', 'own_spec', 'integral', 'status',
                    'created_time', 'created_by', 'updated_time', 'updated_by']
    # 搜索字段
    search_fields = ['spu_id', 'title']
    # 筛选字段
    list_filter = ['status']
    # 在列表页的顶部增加时间选择器
    # date_hierarchy = 'change_date'
    # 在编辑页的只读字段
    # readonly_fields = ['name']
    # 设置在列表页就可以编辑的字段
    # list_editable = ['name', 'code']
    # 在列表页提供快速显示详情信息
    # show_detail_fileds = ['name', 'code']
    # 外键下拉框改成添加搜索按钮文本框显示
    # raw_id_fields = ('brand',)
    # 在编辑页面隐藏的字段
    # exclude = ['lastdate']


@admin.register(Stock)
class StockAdmin(admin.ModelAdmin):
    # 这会显示一个下拉列表, 用户可以选择3秒或5秒刷新一次页面.
    refresh_times = (3, 5)
    # 是否显示选择个数
    actions_selection_counter = True
    # 每页显示的数据行数
    list_per_page = 15
    # 显示顶部的选项
    actions_on_top = True
    # 显示底部的选项
    actions_on_bottom = True
    # 首页展示字段
    list_display = ['sku_id', 'seckill_stock', 'seckill_total', 'stock', 'created_time', 'created_by',
                    'updated_time', 'updated_by']
    # 搜索字段
    search_fields = ['sku_id']
    # 筛选字段
    # list_filter = ['status']
    # 在列表页的顶部增加时间选择器
    # date_hierarchy = 'change_date'
    # 在编辑页的只读字段
    # readonly_fields = ['name']
    # 设置在列表页就可以编辑的字段
    # list_editable = ['name', 'code']
    # 在列表页提供快速显示详情信息
    # show_detail_fileds = ['name', 'code']
    # 外键下拉框改成添加搜索按钮文本框显示
    # raw_id_fields = ('brand',)
    # 在编辑页面隐藏的字段
    # exclude = ['lastdate']


@admin.register(ProductComment)
class ProductCommentAdmin(admin.ModelAdmin):
    # 这会显示一个下拉列表, 用户可以选择3秒或5秒刷新一次页面.
    refresh_times = (3, 5)
    # 是否显示选择个数
    actions_selection_counter = True
    # 每页显示的数据行数
    list_per_page = 15
    # 显示顶部的选项
    actions_on_top = True
    # 显示底部的选项
    actions_on_bottom = True
    # 首页展示字段
    list_display = ['spu', 'order', 'customer', 'title', 'content', 'auditor_id', 'audit_remake', 'status',
                    'created_time', 'created_by', 'updated_time', 'updated_by']
    # 搜索字段
    search_fields = ['title', 'content']
    # 筛选字段
    list_filter = ['status']
    # 在列表页的顶部增加时间选择器
    # date_hierarchy = 'change_date'
    # 在编辑页的只读字段
    # readonly_fields = ['name']
    # 设置在列表页就可以编辑的字段
    # list_editable = ['name', 'code']
    # 在列表页提供快速显示详情信息
    # show_detail_fileds = ['name', 'code']
    # 外键下拉框改成添加搜索按钮文本框显示
    raw_id_fields = ('spu', 'order', 'customer')
    # 在编辑页面隐藏的字段
    # exclude = ['lastdate']


@admin.register(ProductSpecification)
class ProductSpecificationAdmin(admin.ModelAdmin):
    # 这会显示一个下拉列表, 用户可以选择3秒或5秒刷新一次页面.
    refresh_times = (3, 5)
    # 是否显示选择个数
    actions_selection_counter = True
    # 每页显示的数据行数
    list_per_page = 15
    # 显示顶部的选项
    actions_on_top = True
    # 显示底部的选项
    actions_on_bottom = True
    # 首页展示字段
    list_display = ['sku_id', 'quantity', 'price', 'subtotal', 'stock_old', 'stock_new', 'direction',
                    'operate_type', 'order_id', 'supplier_id', 'remark', 'user_id', 'result', 'created_time',
                    'created_by', 'updated_time', 'updated_by']
    # 搜索字段
    search_fields = ['sku_id', 'order_id']
    # 筛选字段
    list_filter = ['operate_type', 'result', 'direction']
    # 在列表页的顶部增加时间选择器
    # date_hierarchy = 'change_date'
    # 在编辑页的只读字段
    # readonly_fields = ['name']
    # 设置在列表页就可以编辑的字段
    # list_editable = ['name', 'code']
    # 在列表页提供快速显示详情信息
    # show_detail_fileds = ['name', 'code']
    # 外键下拉框改成添加搜索按钮文本框显示
    # raw_id_fields = ('spu', 'order', 'customer')
    # 在编辑页面隐藏的字段
    # exclude = ['lastdate']


@admin.register(ProductStatistics)
class ProductStatisticsAdmin(admin.ModelAdmin):
    # 这会显示一个下拉列表, 用户可以选择3秒或5秒刷新一次页面.
    refresh_times = (3, 5)
    # 是否显示选择个数
    actions_selection_counter = True
    # 每页显示的数据行数
    list_per_page = 15
    # 显示顶部的选项
    actions_on_top = True
    # 显示底部的选项
    actions_on_bottom = True
    # 首页展示字段
    list_display = ['sku_id', 'visit_count', 'reply_count', 'sale_quantity', 'sale_amount',
                    'purchase_quantity', 'purchase_amount', 'cost_price', 'gross_profit']
    # 搜索字段
    search_fields = ['sku_id']
    # 筛选字段
    # list_filter = ['visit_count', 'reply_count']
    # 在列表页的顶部增加时间选择器
    # date_hierarchy = 'change_date'
    # 在编辑页的只读字段
    # readonly_fields = ['name']
    # 设置在列表页就可以编辑的字段
    # list_editable = ['name', 'code']
    # 在列表页提供快速显示详情信息
    # show_detail_fileds = ['name', 'code']
    # 外键下拉框改成添加搜索按钮文本框显示
    # raw_id_fields = ('spu', 'order', 'customer')
    # 在编辑页面隐藏的字段
    # exclude = ['lastdate']


# 修改网页title和站点header。

# 以<h1>（字符串）形式放在每个管理页面顶部的文本。默认情况下，这是“ Django管理”
admin.site.site_title = "源真视界后台管理"
# 放置在每个管理页面末尾的文本<title>（字符串）。默认情况下，这是“ Django site admin”。
admin.site.site_header = "源真视界后台管理"
# 用于在管理站点的更改列表中显示空值的字符串。默认为破折号
admin.site.empty_value_display = '(None)'
# 要放在管理索引页面顶部的文本（字符串）。默认情况下，这是“站点管理”
admin.site.index_title = '源真视界后台管理'
