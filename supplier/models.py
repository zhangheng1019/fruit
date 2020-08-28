from datetime import datetime

from django.db import models


class Supplier(models.Model):
    """供应商信息"""

    name = models.CharField(max_length=255, verbose_name='供应商名称')
    phone = models.CharField(max_length=255, verbose_name='联系电话')
    email = models.CharField(max_length=255, verbose_name='邮箱')
    area = models.CharField(max_length=255, verbose_name='地区')
    link_man = models.CharField(max_length=255, blank=True, null=True, verbose_name='供应商联系人')
    join_date = models.DateTimeField(default=datetime.now(), blank=True, null=True, verbose_name='加盟时间')
    violations_times = models.IntegerField(blank=True, null=True, verbose_name='违规次数')
    code = models.CharField(max_length=255, blank=True, null=True, verbose_name='供应商编号')
    bank_name = models.CharField(max_length=255, verbose_name='供应商开户银行名称')
    bank_account = models.CharField(max_length=255, verbose_name='银行账号')

    status = models.CharField(max_length=8, blank=True, null=True, verbose_name='状态：0：禁止，1：启用')
    created_time = models.DateTimeField(verbose_name='创建时间')
    created_by = models.CharField(max_length=255, blank=True, null=True, verbose_name='创建人')
    updated_time = models.DateTimeField(verbose_name='更新时间')
    updated_by = models.CharField(max_length=255, blank=True, null=True, verbose_name='更新人')

    class Meta:
        # managed = False  # 是否使用django自动管理创建models
        db_table = 'supplier'
        verbose_name = '供应商'
        verbose_name_plural = '供应商'

    def __str__(self):
        return self.name
