from datetime import datetime
from django.db import models

# Create your models here.


class PromotionEvent(models.Model):
    """商品促销活动表"""
    name = models.CharField(max_length=255, verbose_name='活动名称；橱窗名称，最新，热门，推荐，清仓，换季等')
    code = models.CharField(max_length=255, unique=True, verbose_name='活动代码')
    image_url = models.TextField(blank=True, null=True, verbose_name='封面图片url，多个以逗号隔开 - 数组存储')
    product_count = models.IntegerField(blank=True, null=True, verbose_name='商品数量统计')
    remark = models.CharField(max_length=255, blank=True, null=True, verbose_name='备注')
    start_time = models.DateTimeField(blank=True, null=True, verbose_name='开始时间')
    end_time = models.DateTimeField(blank=True, null=True, verbose_name='结束时间')
    sort_weight = models.IntegerField(blank=True, null=True, default=0, verbose_name='排序权重，数字越大越靠前')
    status = models.CharField(max_length=8, blank=True, null=True,
                              verbose_name='状态，0：已删除，1：待投放，2：投放中，3：已下线')
    created_time = models.DateTimeField(blank=True, null=True, verbose_name='创建时间')
    created_by = models.CharField(max_length=255, blank=True, null=True, verbose_name='创建人')
    updated_time = models.DateTimeField(blank=True, null=True, default=datetime.now(), verbose_name='更新时间')
    updated_by = models.CharField(max_length=255, blank=True, null=True, verbose_name='更新人')

    class Meta:
        # managed = False  # 是否使用django自动管理创建models
        db_table = 'prom_promotion_event'
        verbose_name = '商品促销活动'
        verbose_name_plural = '商品促销活动'

    def __str__(self):
        return '%s - %s' % (self.name, self.code)


class Coupon(models.Model):
    """商品优惠券表"""
    coupon_sn = models.CharField(max_length=255, blank=True, null=True, verbose_name='优惠券编号')
    name = models.CharField(max_length=255, blank=True, null=True, verbose_name='优惠券名称')
    face_value = models.IntegerField(blank=True, null=True, verbose_name='优惠券面值')
    quantity = models.IntegerField(blank=True, null=True, verbose_name='优惠券数量')
    use_condition = models.TextField(blank=True, null=True, verbose_name='使用条件，json存储，满减-折扣-固定金额...')
    condition_desc = models.TextField(blank=True, null=True, verbose_name='使用条件说明')
    effect_time = models.DateTimeField(blank=True, null=True, verbose_name='生效时间')
    expired_time = models.DateTimeField(blank=True, null=True, verbose_name='失效时间')
    sort_weight = models.IntegerField(blank=True, null=True, default=0, verbose_name='排序权重，数字越大越靠前')
    status = models.CharField(max_length=8, blank=True, null=True,
                              verbose_name='状态，0：已删除，1：待上线，2：上线中，3：已下线')

    created_time = models.DateTimeField(blank=True, null=True, verbose_name='创建时间')
    created_by = models.CharField(max_length=255, blank=True, null=True, verbose_name='创建人')
    updated_time = models.DateTimeField(blank=True, null=True, default=datetime.now(), verbose_name='更新时间')
    updated_by = models.CharField(max_length=255, blank=True, null=True, verbose_name='更新人')

    class Meta:
        # managed = False  # 是否使用django自动管理创建models
        db_table = 'prom_coupon'
        verbose_name = '商品优惠券'
        verbose_name_plural = '商品优惠券'

    def __str__(self):
        return '%s - %s' % (self.name, self.coupon_sn)


class ProductPromotionMapping(models.Model):
    """商品促销活动关联表"""
    sku_id = models.IntegerField(verbose_name='商品的sku_id')
    promotion_id = models.IntegerField(verbose_name='促销活动id')
    start_time = models.DateTimeField(blank=True, null=True, verbose_name='开始时间')
    end_time = models.DateTimeField(blank=True, null=True, verbose_name='结束时间')
    price = models.IntegerField(blank=True, null=True, verbose_name='活动价格')
    product_image = models.TextField(blank=True, null=True, verbose_name='商品图片， 多个以逗号隔开 - 列表存储')
    introduce = models.TextField(blank=True, null=True, verbose_name='商品简介')
    sort_weight = models.IntegerField(blank=True, null=True, default=0, verbose_name='排序权重，数字越大越靠前')

    created_time = models.DateTimeField(blank=True, null=True, verbose_name='创建时间')
    created_by = models.CharField(max_length=255, blank=True, null=True, verbose_name='创建人')
    updated_time = models.DateTimeField(blank=True, null=True, default=datetime.now(), verbose_name='更新时间')
    updated_by = models.CharField(max_length=255, blank=True, null=True, verbose_name='更新人')

    class Meta:
        # managed = False  # 是否使用django自动管理创建models
        db_table = 'prom_product_promotion_mapping'
        verbose_name = '商品促销活动关联表'
        verbose_name_plural = '商品促销活动关联表'

    def __str__(self):
        return '%s - %s' % (self.sku_id, self.promotion_id)


class ProductCouponMapping(models.Model):
    """商品-优惠券关联表"""
    sku_id = models.IntegerField(verbose_name='商品的sku_id')
    coupon_id = models.IntegerField(verbose_name='优惠券id')
    face_value = models.IntegerField(blank=True, null=True, verbose_name='优惠券面值')
    quantity = models.IntegerField(blank=True, null=True, verbose_name='优惠券数量')
    use_condition = models.TextField(blank=True, null=True, verbose_name='使用条件，json存储，满减-折扣-固定金额...')
    condition_desc = models.TextField(blank=True, null=True, verbose_name='使用条件说明')
    effect_time = models.DateTimeField(blank=True, null=True, verbose_name='生效时间')
    expired_time = models.DateTimeField(blank=True, null=True, verbose_name='失效时间')
    sort_weight = models.IntegerField(blank=True, null=True, default=0, verbose_name='排序权重，数字越大越靠前')
    status = models.CharField(max_length=8, blank=True, null=True,
                              verbose_name='状态，0：已删除，1：待上线，2：上线中，3：已下线')

    created_time = models.DateTimeField(blank=True, null=True, verbose_name='创建时间')
    created_by = models.CharField(max_length=255, blank=True, null=True, verbose_name='创建人')
    updated_time = models.DateTimeField(blank=True, null=True, default=datetime.now(), verbose_name='更新时间')
    updated_by = models.CharField(max_length=255, blank=True, null=True, verbose_name='更新人')

    class Meta:
        # managed = False  # 是否使用django自动管理创建models
        db_table = 'prom_product_coupon_mapping'
        verbose_name = '商品优惠券关联表'
        verbose_name_plural = '商品优惠券关联表'

    def __str__(self):
        return '%s - %s' % (self.sku_id, self.coupon_id)


