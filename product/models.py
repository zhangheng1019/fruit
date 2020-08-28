from django.db import models
from utils.option import *


class Brand(models.Model):
    """品牌信息表"""
    brand_name = models.CharField(max_length=255, verbose_name='品牌名称')
    telephone = models.CharField(max_length=32, verbose_name='联系电话')
    brand_web = models.CharField(max_length=255, blank=True, null=True, verbose_name='品牌网址')
    brand_logo = models.CharField(max_length=255, blank=True, null=True, verbose_name='品牌logo URL')
    brand_desc = models.TextField(blank=True, null=True, verbose_name='品牌描述')
    brand_status = models.CharField(max_length=32, blank=True, null=True, default=0,
                                    verbose_name='品牌状态，0：禁用，1：启用')
    brand_order = models.IntegerField(blank=True, null=True, default=0, verbose_name='排序权重，越大越靠前')

    created_time = models.DateTimeField(blank=True, null=True, verbose_name='创建时间')
    created_by = models.CharField(max_length=255, blank=True, null=True, verbose_name='创建人')
    updated_time = models.DateTimeField(blank=True, null=True, verbose_name='更新时间')
    updated_by = models.CharField(max_length=255, blank=True, null=True, verbose_name='更新人')

    class Meta:
        # managed = False  # 是否使用django自动管理创建models
        db_table = 'pro_brand'
        verbose_name = '品牌'
        verbose_name_plural = '品牌'

    def __str__(self):
        return self.brand_name


class ProductCategory(models.Model):
    """商品分类表"""
    category_name = models.CharField(max_length=255, verbose_name='分类名称')
    category_code = models.CharField(max_length=255, verbose_name='分类编码')
    parent_id = models.IntegerField(blank=True, null=True, verbose_name='父分类ID')
    category_level = models.CharField(max_length=255, blank=True, null=True, verbose_name='分类层级')
    category_status = models.CharField(max_length=255, blank=True, null=True, verbose_name='分类状态，0：禁用，1：启用')

    created_time = models.DateTimeField(blank=True, null=True, verbose_name='创建时间')
    created_by = models.CharField(max_length=255, blank=True, null=True, verbose_name='创建人')
    updated_time = models.DateTimeField(blank=True, null=True, verbose_name='更新时间')
    updated_by = models.CharField(max_length=255, blank=True, null=True, verbose_name='更新人')

    class Meta:
        # managed = False  # 是否使用django自动管理创建models
        db_table = 'pro_product_category'
        verbose_name = '商品分类'
        verbose_name_plural = '商品分类'

    def __str__(self):
        return self.category_name


class BrandCategoryMapping(models.Model):
    """品牌和商品分类映射表"""
    category_id = models.IntegerField(verbose_name='分类id')
    brand_id = models.IntegerField(verbose_name='品牌id')
    status = models.CharField(max_length=8, blank=True, null=True, verbose_name='状态；0：无效（逻辑删除），1：有效')

    class Meta:
        # managed = False  # 是否使用django自动管理创建models
        db_table = 'pro_brand_category_mapping'
        verbose_name = '品牌和商品分类映射表'
        verbose_name_plural = '品牌和商品分类映射表'


class SpecGroup(models.Model):
    """规格参数的分组表，每个商品分类下有多个规格参数组"""

    category_id = models.IntegerField(blank=True, null=True, verbose_name='商品分类id，一个分类下有多个规格组')
    name = models.CharField(max_length=50, blank=True, null=True, verbose_name='规格组的名称')

    created_time = models.DateTimeField(blank=True, null=True, verbose_name='创建时间')
    created_by = models.CharField(max_length=255, blank=True, null=True, verbose_name='创建人')
    updated_time = models.DateTimeField(blank=True, null=True, verbose_name='更新时间')
    updated_by = models.CharField(max_length=255, blank=True, null=True, verbose_name='更新人')

    class Meta:
        # managed = False  # 是否使用django自动管理创建models
        db_table = 'pro_spec_group'
        verbose_name = '规格参数组'
        verbose_name_plural = '规格参数组'

    def __str__(self):
        return self.name


class SpecParam(models.Model):
    """规格参数组下的参数名"""

    category_id = models.IntegerField(blank=True, null=True, verbose_name='商品分类id，一个分类下有多个规格组')
    group_id = models.IntegerField(blank=True, null=True, verbose_name='规格参数组id')
    name = models.CharField(max_length=50, blank=True, null=True, verbose_name='参数名')
    numeric = models.CharField(max_length=8, blank=True, null=True, default='0',
                               verbose_name='是否是数字类型参数，0：不是，1：是')
    unit = models.CharField(max_length=255, blank=True, null=True, verbose_name='数字参数的单位，非数字型可以为空')
    generic = models.CharField(max_length=8, blank=True, null=True, default='0',
                               verbose_name='是否是sku通用属性，0：不是，1：是')
    searchable = models.CharField(max_length=8, blank=True, null=True, default='0',
                                  verbose_name='是否用于搜索过滤，0：不是，1：是')
    segments = models.CharField(max_length=255, blank=True, null=True,
                                verbose_name='数字类型参数如果需要搜索，则添加分段间隔值，如CPU频率：0.5-1.0，1.5-3.0')

    created_time = models.DateTimeField(blank=True, null=True, verbose_name='创建时间')
    created_by = models.CharField(max_length=255, blank=True, null=True, verbose_name='创建人')
    updated_time = models.DateTimeField(blank=True, null=True, verbose_name='更新时间')
    updated_by = models.CharField(max_length=255, blank=True, null=True, verbose_name='更新人')

    class Meta:
        # managed = False  # 是否使用django自动管理创建models
        db_table = 'pro_spec_param'
        verbose_name = '规格参数'
        verbose_name_plural = '规格参数'

    def __str__(self):
        return self.name


class SPU(models.Model):
    """商品信息(SPU)"""

    name = models.CharField(max_length=255, verbose_name='标题')
    title = models.CharField(max_length=255, blank=True, null=True, verbose_name='子标题')
    category_id1 = models.IntegerField(blank=True, null=True, verbose_name='商品一级类目id')
    category_id2 = models.IntegerField(blank=True, null=True, verbose_name='商品二级类目id')
    category_id3 = models.IntegerField(blank=True, null=True, verbose_name='商品三级类目id')
    brand = models.ForeignKey('product.Brand', on_delete=models.CASCADE, related_name='spu_brand',
                              blank=True, null=True, verbose_name='商品品牌')
    status = models.CharField(max_length=8, choices=product['product_status'], blank=True, null=True, verbose_name='状态')
    created_time = models.DateTimeField(blank=True, null=True, verbose_name='创建时间')
    created_by = models.CharField(max_length=255, blank=True, null=True, verbose_name='创建人')
    updated_time = models.DateTimeField(blank=True, null=True, verbose_name='更新时间')
    updated_by = models.CharField(max_length=255, blank=True, null=True, verbose_name='更新人')

    class Meta:
        # managed = False  # 是否使用django自动管理创建models
        db_table = 'pro_spu'
        verbose_name = '商品SPU'
        verbose_name_plural = '商品SPU'

    def __str__(self):
        return self.name

    @property
    def brand_name(self):
        """品牌名称"""
        return self.brand.brand_name


class SPUDetail(models.Model):
    """商品信息详情表(SPU_detail)"""

    spu_id = models.IntegerField(verbose_name='商品(SPU)自增id')
    description = models.TextField(blank=True, null=True, verbose_name='商品描述信息')
    generic_spec = models.TextField(verbose_name='通用规格参数数据，json格式')
    special_spec = models.TextField(verbose_name='特有规格参数及可选值信息，json格式')
    packing_list = models.TextField(blank=True, null=True, verbose_name='包装清单')
    after_service = models.TextField(blank=True, null=True, verbose_name='售后服务')

    status = models.CharField(max_length=8, blank=True, null=True, verbose_name='状态，是否有效，0：无效，1：有效')
    created_time = models.DateTimeField(blank=True, null=True, verbose_name='创建时间')
    created_by = models.CharField(max_length=255, blank=True, null=True, verbose_name='创建人')
    updated_time = models.DateTimeField(blank=True, null=True, verbose_name='更新时间')
    updated_by = models.CharField(max_length=255, blank=True, null=True, verbose_name='更新人')

    class Meta:
        # managed = False  # 是否使用django自动管理创建models
        db_table = 'pro_spu_detail'
        verbose_name = '商品SPU详情'
        verbose_name_plural = '商品SPU详情'

    def __str__(self):
        return str(self.spu_id)


class SKU(models.Model):
    """商品规格信息详情表(SKU)"""
    spu_id = models.IntegerField(verbose_name='商品(SPU)自增id')
    title = models.CharField(max_length=255, blank=True, null=True, verbose_name='商品标题')
    images = models.TextField(blank=True, null=True, verbose_name='商品的图片列表，多个图片以逗号分割')
    price = models.FloatField(verbose_name='销售价格，单位为元')
    indexes = models.CharField(max_length=255, blank=True, null=True,
                               verbose_name='特有规格属性在spu属性模板中的对应下标组合')
    own_spec = models.TextField(blank=True, null=True, verbose_name='sku的特有规格参数，json格式')
    integral = models.CharField(max_length=255, blank=True, null=True, verbose_name='商品积分')

    status = models.CharField(max_length=8, blank=True, null=True, verbose_name='状态，是否有效，0：无效，1：有效')
    created_time = models.DateTimeField(blank=True, null=True, verbose_name='创建时间')
    created_by = models.CharField(max_length=255, blank=True, null=True, verbose_name='创建人')
    updated_time = models.DateTimeField(blank=True, null=True, verbose_name='更新时间')
    updated_by = models.CharField(max_length=255, blank=True, null=True, verbose_name='更新人')

    class Meta:
        # managed = False  # 是否使用django自动管理创建models
        db_table = 'pro_sku'
        verbose_name = '商品SKU规格详情'
        verbose_name_plural = '商品SKU规格详情'

    def __str__(self):
        return str(self.spu_id)


class Stock(models.Model):
    """商品库存"""
    sku_id = models.IntegerField(verbose_name='库存对应的商品sku_id')
    seckill_stock = models.IntegerField(blank=True, null=True, verbose_name='可秒杀库存')
    seckill_total = models.IntegerField(blank=True, null=True, verbose_name='秒杀总数量')
    stock = models.IntegerField(blank=True, null=True, verbose_name='库存数量')

    created_time = models.DateTimeField(blank=True, null=True, verbose_name='创建时间')
    created_by = models.CharField(max_length=255, blank=True, null=True, verbose_name='创建人')
    updated_time = models.DateTimeField(blank=True, null=True, verbose_name='更新时间')
    updated_by = models.CharField(max_length=255, blank=True, null=True, verbose_name='更新人')

    class Meta:
        # managed = False  # 是否使用django自动管理创建models
        db_table = 'pro_stock'
        verbose_name = '商品库存'
        verbose_name_plural = '商品库存'

    def __str__(self):
        return str(self.sku_id)


class ProductComment(models.Model):
    spu = models.ForeignKey('product.SPU', on_delete=models.CASCADE,
                            blank=True, null=True, verbose_name='商品ID')
    order = models.ForeignKey('order.OrderMaster', on_delete=models.CASCADE,
                              blank=True, null=True, verbose_name='订单ID')
    customer = models.ForeignKey('customer.User', on_delete=models.CASCADE,
                                 blank=True, null=True, verbose_name='用户ID')
    title = models.CharField(max_length=255, blank=True, null=True, verbose_name='评论标题')
    content = models.CharField(max_length=255, blank=True, null=True, verbose_name='评论内容')
    auditor_id = models.IntegerField(blank=True, null=True, verbose_name='审核员编号')
    audit_remake = models.CharField(max_length=255, blank=True, null=True, verbose_name='审核备注')
    status = models.CharField(max_length=32, blank=True, null=True,
                              default='0', verbose_name='审核状态：0：待审核，1：显示，2：隐藏')
    created_time = models.DateTimeField(blank=True, null=True, verbose_name='创建时间')
    created_by = models.CharField(max_length=255, blank=True, null=True, verbose_name='创建人')
    updated_time = models.DateTimeField(blank=True, null=True, verbose_name='更新时间')
    updated_by = models.CharField(max_length=255, blank=True, null=True, verbose_name='更新人')

    class Meta:
        # managed = False  # 是否使用django自动管理创建models
        db_table = 'pro_product_comment'
        verbose_name = '商品评论'
        verbose_name_plural = '商品评论'

    def __str__(self):
        return str(self.spu)


class ProductSpecification(models.Model):
    """商品进销存表"""
    sku_id = models.IntegerField(verbose_name='商品sku_id')
    quantity = models.IntegerField(blank=True, null=True, verbose_name='出入库数量')
    price = models.DecimalField(max_digits=8, decimal_places=2, blank=True, null=True, verbose_name='单价')
    subtotal = models.DecimalField(max_digits=8, decimal_places=2, blank=True, null=True, verbose_name='小计金额')
    stock_old = models.IntegerField(blank=True, null=True, verbose_name='出入库数量')
    stock_new = models.IntegerField(blank=True, null=True, verbose_name='出入库数量')
    direction = models.CharField(max_length=8, blank=True, null=True, verbose_name='出入库方向，1: 出库; 2: 入库')
    operate_type = models.CharField(max_length=32, blank=True, null=True,
                                    verbose_name='SELL-RETURN=销售退货(入库), PURCHASE=采购入库, '
                                                 'SALE=销售出库, PURCHASE-RETURN=采购退货(出库), '
                                                 'INTERNAL=内部出库, INVENTORY=盘点调仓')
    order_id = models.CharField(max_length=32, blank=True, null=True, verbose_name='订单编号')
    supplier_id = models.IntegerField(blank=True, null=True, verbose_name='供应商id')
    remark = models.TextField(blank=True, null=True, verbose_name='备注信息')
    user_id = models.IntegerField(blank=True, null=True, verbose_name='经手人用户id')
    result = models.CharField(max_length=255, blank=True, null=True, verbose_name='出入库结果')  # 写到这里了

    created_time = models.DateTimeField(blank=True, null=True, verbose_name='创建时间')
    created_by = models.CharField(max_length=255, blank=True, null=True, verbose_name='创建人')
    updated_time = models.DateTimeField(blank=True, null=True, verbose_name='更新时间')
    updated_by = models.CharField(max_length=255, blank=True, null=True, verbose_name='更新人')

    class Meta:
        # managed = False  # 是否使用django自动管理创建models
        db_table = 'pro_product_specification'
        verbose_name = '商品进销存'
        verbose_name_plural = '商品进销存'

    def __str__(self):
        return str(self.sku_id)


class ProductStatistics(models.Model):
    """商品统计表"""
    sku_id = models.IntegerField(verbose_name='商品的sku_id')
    visit_count = models.IntegerField(blank=True, null=True, default=0, verbose_name='浏览次数')
    reply_count = models.IntegerField(blank=True, null=True, default=0, verbose_name='评论次数')
    sale_quantity = models.IntegerField(blank=True, null=True, verbose_name='销售总量')
    sale_amount = models.DecimalField(max_digits=8, decimal_places=2, blank=True, null=True, verbose_name='销售总额')
    purchase_quantity = models.IntegerField(blank=True, null=True, verbose_name='进货总量')
    purchase_amount = models.DecimalField(max_digits=8, decimal_places=2, blank=True, null=True, verbose_name='进货总额')
    cost_price = models.DecimalField(max_digits=8, decimal_places=2, blank=True, null=True, verbose_name='成本均价')
    gross_profit = models.DecimalField(max_digits=8, decimal_places=2, blank=True, null=True, verbose_name='毛利润金额')

    class Meta:
        # managed = False  # 是否使用django自动管理创建models
        db_table = 'pro_product_statistics'
        verbose_name = '商品统计信息'
        verbose_name_plural = '商品统计信息'

    def __str__(self):
        return str(self.sku_id)
