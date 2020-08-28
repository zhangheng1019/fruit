from datetime import datetime
from django.db import models
from django.contrib.auth.models import AbstractUser
# Create your models here.


class User(AbstractUser):  # 运营管理后台用户和消费者用户用is_staff区分,10w行级
    """用户表"""
    customer = models.OneToOneField('customer.CustomerInfo', on_delete=models.CASCADE,
                                    null=True, blank=True, verbose_name='用户资料表自增id')
    user_stats = models.CharField(max_length=8, blank=True, null=True, default='2',
                                  verbose_name='用户状态，0：已删除，1：已登录，2：未登录')
    token = models.CharField(max_length=128, blank=True, null=True, verbose_name='认证token，明文存储')

    def __str__(self):
        return self.username

    class Meta:
        verbose_name = '用户'
        verbose_name_plural = verbose_name


class CustomerInfo(models.Model):

    """用户信息表"""
    nickname = models.CharField(max_length=32, unique=True, blank=True, null=True, verbose_name='昵称')
    identity_card_type = models.CharField(max_length=8, blank=True, null=True,
                                          verbose_name='证件类型：1：身份证，2：军官证，3：护照')
    identity_card_no = models.CharField(max_length=64, unique=True, blank=True, null=True, verbose_name='证件号码')
    mobile_phone = models.CharField(max_length=16, unique=True, blank=True, null=True, verbose_name='手机号')
    gender = models.CharField(max_length=16, blank=True, null=True,
                              choices=(('Male', '男'), ('Female', '女')), verbose_name='性别')
    user_point = models.IntegerField(blank=True, null=True, default=0, verbose_name='用户积分')
    register_time = models.DateTimeField(blank=True, null=True, verbose_name='注册时间')
    birthday = models.DateField(blank=True, null=True, verbose_name='会员生日')
    customer_level = models.CharField(max_length=16, blank=True, null=True, default='1',
                                      verbose_name='会员级别：1：普通会员，2：青铜，3：白银，4：黄金，5：钻石')
    user_money = models.FloatField(blank=True, null=True, default=0.0, verbose_name='用户余额')
    modify_time = models.DateTimeField(blank=True, null=True, default=datetime.now(), verbose_name='最后修改时间')

    def __str__(self):
        return self.nickname

    class Meta:
        db_table = 'cus_customer_info'
        verbose_name = '用户信息'
        verbose_name_plural = verbose_name


class CustomerLevelInfo(models.Model):

    """用户级别信息表"""
    level_name = models.CharField(max_length=32, unique=True, verbose_name='会员级别名称')
    min_point = models.IntegerField(blank=True, null=True, default=0, verbose_name='该级别最低积分')
    max_point = models.IntegerField(blank=True, null=True, default=0, verbose_name='该级别最高积分')

    modify_time = models.DateTimeField(blank=True, null=True, default=datetime.now(), verbose_name='最后修改时间')

    def __str__(self):
        return self.level_name

    class Meta:
        db_table = 'cus_customer_level_info'
        verbose_name = '用户级别信息'
        verbose_name_plural = verbose_name


class CustomerAddr(models.Model):

    """用户地址表"""
    user_id = models.IntegerField(unique=True, verbose_name='user表的自增ID')
    postcode = models.IntegerField(blank=True, null=True, default=0, verbose_name='邮编')
    province = models.CharField(max_length=255, blank=True, null=True, verbose_name='地区表中省份的ID')
    city = models.CharField(max_length=255, blank=True, null=True, verbose_name='地区表中城市的ID')
    district = models.CharField(max_length=255, blank=True, null=True, verbose_name='地区表中的区ID')
    address = models.CharField(max_length=255, blank=True, null=True, verbose_name='具体的地址门牌号')
    is_default = models.IntegerField(blank=True, null=True, verbose_name='是否默认，0：否，1：是')

    modify_time = models.DateTimeField(blank=True, null=True, default=datetime.now(), verbose_name='最后修改时间')

    def __str__(self):
        return str(self.user_id)

    class Meta:
        db_table = 'cus_customer_addr'
        verbose_name = '用户地址'
        verbose_name_plural = verbose_name


class CustomerPointLog(models.Model):
    """用户积分日志表"""
    user_id = models.IntegerField(blank=True, null=True, verbose_name='用户ID')
    source = models.CharField(max_length=8, blank=True, null=True, verbose_name='积分来源：1：订单，2：登陆，3：活动')
    refer_number = models.CharField(max_length=255, blank=True, null=True, verbose_name='积分来源相关编号')
    change_point = models.IntegerField(blank=True, null=True, default=0, verbose_name='变更积分数')
    created_time = models.DateTimeField(blank=True, null=True, default=datetime.now(), verbose_name='积分日志生成时间')

    def __str__(self):
        return str(self.user_id)

    class Meta:
        db_table = 'cus_customer_point_log'
        verbose_name = '用户积分日志'
        verbose_name_plural = verbose_name


class CustomerBalanceLog(models.Model):
    """用户余额变动表"""
    user_id = models.IntegerField(blank=True, null=True, verbose_name='用户ID')
    source = models.CharField(max_length=8, blank=True, null=True, verbose_name='记录来源：1：订单，2：退货单')
    source_sn = models.CharField(max_length=255, blank=True, null=True, verbose_name='相关单据单号')
    amount = models.IntegerField(blank=True, null=True, default=0, verbose_name='变动金额')
    created_time = models.DateTimeField(blank=True, null=True, default=datetime.now(), verbose_name='记录生成时间')

    def __str__(self):
        return str(self.user_id)

    class Meta:
        db_table = 'cus_customer_balance_log'
        verbose_name = '用户余额变动'
        verbose_name_plural = verbose_name


class CustomerLoginLog(models.Model):
    """用户登录日志表"""
    user_id = models.IntegerField(blank=True, null=True, verbose_name='用户ID')
    login_time = models.DateTimeField(blank=True, null=True, default=datetime.now(), verbose_name='用户登录时间')
    login_ip = models.CharField(max_length=255, blank=True, null=True, verbose_name='登陆ip')
    login_status = models.IntegerField(blank=True, null=True, default=0, verbose_name='登陆状态：0:未成功，1:成功')

    def __str__(self):
        return str(self.user_id)

    class Meta:
        db_table = 'cus_customer_login_log'
        verbose_name = '用户登录日志'
        verbose_name_plural = verbose_name
