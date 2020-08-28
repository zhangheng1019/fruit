from datetime import datetime

from django.db import models

# Create your models here.


class OrderMaster(models.Model):
    """订单主表"""
    order_sn = models.CharField(max_length=255, verbose_name='订单编号 yyyymmddnnnnnnnn')
    user_id = models.IntegerField(verbose_name='下单人(用户)ID')
    shipping_user = models.CharField(max_length=255, blank=True, null=True, verbose_name='收货人姓名')
    province = models.CharField(max_length=255, blank=True, null=True, verbose_name='省')
    city = models.CharField(max_length=255, blank=True, null=True, verbose_name='市')
    district = models.CharField(max_length=255, blank=True, null=True, verbose_name='区')
    address = models.TextField(blank=True, null=True, verbose_name='详细地址')
    payment_method = models.CharField(max_length=8, blank=True, null=True,
                                      verbose_name='支付方式：1：现金，2：余额，3：网银，4：支付宝，5：微信')
    order_money = models.FloatField(blank=True, null=True, verbose_name='订单金额')
    discount_money = models.FloatField(blank=True, null=True, verbose_name='优惠金额')
    shipping_money = models.FloatField(blank=True, null=True, verbose_name='运费金额')
    payment_money = models.FloatField(blank=True, null=True, verbose_name='支付金额')
    shipping_company_name = models.CharField(max_length=255, blank=True, null=True, verbose_name='快递公司名称')
    shipping_sn = models.CharField(max_length=64, blank=True, null=True, verbose_name='快递单号')
    created_time = models.DateTimeField(blank=True, null=True, verbose_name='下单时间')
    pay_time = models.DateTimeField(blank=True, null=True, verbose_name='支付时间')
    shipping_time = models.DateTimeField(blank=True, null=True, verbose_name='发货时间')
    receive_time = models.DateTimeField(blank=True, null=True, verbose_name='收货时间')
    complete_time = models.DateTimeField(blank=True, null=True, verbose_name='交易完成时间')
    close_time = models.DateTimeField(blank=True, null=True, verbose_name='交易关闭时间')
    order_status = models.CharField(max_length=8, blank=True, null=True,
                                    verbose_name='订单状态，0：已取消，1：待支付，2：已支付，'
                                                 '3：已发货，4：交易成功，5：交易关闭')
    order_point = models.IntegerField(blank=True, null=True, default=0, verbose_name='订单积分')
    invoice_title = models.CharField(max_length=255, blank=True, null=True, verbose_name='发票抬头')
    modify_time = models.DateTimeField(blank=True, null=True, default=datetime.now(), verbose_name='最后修改时间')

    class Meta:
        # managed = False  # 是否使用django自动管理创建models
        db_table = 'ord_order_master'
        verbose_name = '主订单'
        verbose_name_plural = '主订单'

    def __str__(self):
        return '%s - %s' % (self.shipping_user, self.order_sn)


class OrderDetail(models.Model):
    """订单详情表"""
    order_id = models.IntegerField(verbose_name='订单表自增ID')
    product_id = models.IntegerField(blank=True, null=True, verbose_name='订单商品自增ID')
    product_name = models.CharField(max_length=255, blank=True, null=True, verbose_name='商品名称')
    product_count = models.FloatField(blank=True, null=True, default=1.0, verbose_name='购买商品数量')
    product_price = models.FloatField(blank=True, null=True, verbose_name='购买商品单价')
    average_cost = models.DecimalField(max_digits=8, decimal_places=2, blank=True, null=True, verbose_name='平均成本价格')
    weight = models.FloatField(blank=True, null=True, verbose_name='商品重量')
    fee_money = models.DecimalField(max_digits=8, decimal_places=2, blank=True, null=True, verbose_name='优惠分摊金额')
    warehouse_id = models.IntegerField(blank=True, null=True, verbose_name='仓库ID')
    modify_time = models.DateTimeField(blank=True, null=True, default=datetime.now(), verbose_name='最后修改时间')

    class Meta:
        # managed = False  # 是否使用django自动管理创建models
        db_table = 'ord_order_detail'
        verbose_name = '订单详情'
        verbose_name_plural = '订单详情'

    def __str__(self):
        return self.product_name


class OrderCart(models.Model):
    """购物车"""
    user_id = models.IntegerField(blank=True, null=True, verbose_name='用户ID')
    product_id = models.IntegerField(blank=True, null=True, verbose_name='商品ID')
    product_amount = models.IntegerField(blank=True, null=True, verbose_name='加入购物车商品数量')
    price = models.DecimalField(max_digits=8, decimal_places=2, blank=True, null=True, verbose_name='商品单价')
    add_time = models.DateTimeField(blank=True, null=True, verbose_name='加入购物车时间')
    created_time = models.DateTimeField(blank=True, null=True, verbose_name='创建时间')
    modify_time = models.DateTimeField(blank=True, null=True, default=datetime.now(), verbose_name='最后修改时间')

    class Meta:
        # managed = False  # 是否使用django自动管理创建models
        db_table = 'ord_order_cart'
        verbose_name = '购物车'
        verbose_name_plural = '购物车'

    def __str__(self):
        return '%s; %s' % (self.user_id, self.product_id)


class WarehouseInfo(models.Model):
    """仓库信息表"""
    warehouse_sn = models.CharField(max_length=32, blank=True, null=True, verbose_name='仓库编码')
    warehouse_name = models.CharField(max_length=32, blank=True, null=True, verbose_name='仓库名称')
    warehouse_phone = models.CharField(max_length=32, blank=True, null=True, verbose_name='仓库电话')
    contact = models.CharField(max_length=32, blank=True, null=True, verbose_name='仓库联系人')
    province = models.CharField(max_length=32, blank=True, null=True, verbose_name='省')
    city = models.CharField(max_length=32, blank=True, null=True, verbose_name='市')
    district = models.CharField(max_length=32, blank=True, null=True, verbose_name='区')
    address = models.CharField(max_length=128, blank=True, null=True, verbose_name='仓库地址')
    warehouse_status = models.CharField(max_length=8, blank=True, null=True, verbose_name='仓库状态：0：禁用，1：启用')
    modify_time = models.DateTimeField(blank=True, null=True, default=datetime.now(), verbose_name='最后修改时间')

    class Meta:
        # managed = False  # 是否使用django自动管理创建models
        db_table = 'ord_warehouse_info'
        verbose_name = '仓库信息'
        verbose_name_plural = '仓库信息'

    def __str__(self):
        return self.warehouse_name


class WarehouseProduct(models.Model):
    """商品库存"""
    product_id = models.IntegerField(verbose_name='商品ID')
    warehouse_id = models.IntegerField(verbose_name='仓库ID')
    current_count = models.IntegerField(blank=True, null=True, default=0, verbose_name='当前商品总数')
    lock_count = models.IntegerField(blank=True, null=True, default=0, verbose_name='当前占用数量')
    in_transit_count = models.IntegerField(blank=True, null=True, default=0, verbose_name='在途数量')
    average_cost = models.DecimalField(max_digits=8, decimal_places=2, blank=True, null=True,
                                       default=0.00, verbose_name='移动加权成本')
    modify_time = models.DateTimeField(blank=True, null=True, default=datetime.now(), verbose_name='最后修改时间')

    class Meta:
        # managed = False  # 是否使用django自动管理创建models
        db_table = 'ord_warehouse_product'
        verbose_name = '商品库存'
        verbose_name_plural = '商品库存'

    def __str__(self):
        return '%s; %s' % (self.warehouse_id, self.product_id)


class ShippingInfo(models.Model):
    """物流公司信息表"""
    ship_name = models.CharField(max_length=32, blank=True, null=True, verbose_name='物流公司名称')
    ship_contact = models.CharField(max_length=32, blank=True, null=True, verbose_name='物流公司联系人')
    telephone = models.CharField(max_length=32, blank=True, null=True, verbose_name='物流公司联系电话')
    price = models.DecimalField(max_digits=8, decimal_places=2, blank=True, null=True,
                                default=0.00, verbose_name='配送价格')
    modify_time = models.DateTimeField(blank=True, null=True, default=datetime.now(), verbose_name='最后修改时间')

    class Meta:
        # managed = False  # 是否使用django自动管理创建models
        db_table = 'ord_shipping_info'
        verbose_name = '物流公司信息'
        verbose_name_plural = '物流公司信息'

    def __str__(self):
        return self.ship_name
