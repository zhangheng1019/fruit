# Generated by Django 2.1.7 on 2020-08-27 06:52

import datetime
from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Coupon',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('coupon_sn', models.CharField(blank=True, max_length=255, null=True, verbose_name='优惠券编号')),
                ('name', models.CharField(blank=True, max_length=255, null=True, verbose_name='优惠券名称')),
                ('face_value', models.IntegerField(blank=True, null=True, verbose_name='优惠券面值')),
                ('quantity', models.IntegerField(blank=True, null=True, verbose_name='优惠券数量')),
                ('use_condition', models.TextField(blank=True, null=True, verbose_name='使用条件，json存储，满减-折扣-固定金额...')),
                ('condition_desc', models.TextField(blank=True, null=True, verbose_name='使用条件说明')),
                ('effect_time', models.DateTimeField(blank=True, null=True, verbose_name='生效时间')),
                ('expired_time', models.DateTimeField(blank=True, null=True, verbose_name='失效时间')),
                ('sort_weight', models.IntegerField(blank=True, default=0, null=True, verbose_name='排序权重，数字越大越靠前')),
                ('status', models.CharField(blank=True, max_length=8, null=True, verbose_name='状态，0：已删除，1：待上线，2：上线中，3：已下线')),
                ('created_time', models.DateTimeField(blank=True, null=True, verbose_name='创建时间')),
                ('created_by', models.CharField(blank=True, max_length=255, null=True, verbose_name='创建人')),
                ('updated_time', models.DateTimeField(blank=True, default=datetime.datetime(2020, 8, 27, 14, 51, 58, 155093), null=True, verbose_name='更新时间')),
                ('updated_by', models.CharField(blank=True, max_length=255, null=True, verbose_name='更新人')),
            ],
            options={
                'verbose_name': '商品优惠券',
                'verbose_name_plural': '商品优惠券',
                'db_table': 'prom_coupon',
            },
        ),
        migrations.CreateModel(
            name='ProductCouponMapping',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('sku_id', models.IntegerField(verbose_name='商品的sku_id')),
                ('coupon_id', models.IntegerField(verbose_name='优惠券id')),
                ('face_value', models.IntegerField(blank=True, null=True, verbose_name='优惠券面值')),
                ('quantity', models.IntegerField(blank=True, null=True, verbose_name='优惠券数量')),
                ('use_condition', models.TextField(blank=True, null=True, verbose_name='使用条件，json存储，满减-折扣-固定金额...')),
                ('condition_desc', models.TextField(blank=True, null=True, verbose_name='使用条件说明')),
                ('effect_time', models.DateTimeField(blank=True, null=True, verbose_name='生效时间')),
                ('expired_time', models.DateTimeField(blank=True, null=True, verbose_name='失效时间')),
                ('sort_weight', models.IntegerField(blank=True, default=0, null=True, verbose_name='排序权重，数字越大越靠前')),
                ('status', models.CharField(blank=True, max_length=8, null=True, verbose_name='状态，0：已删除，1：待上线，2：上线中，3：已下线')),
                ('created_time', models.DateTimeField(blank=True, null=True, verbose_name='创建时间')),
                ('created_by', models.CharField(blank=True, max_length=255, null=True, verbose_name='创建人')),
                ('updated_time', models.DateTimeField(blank=True, default=datetime.datetime(2020, 8, 27, 14, 51, 58, 156092), null=True, verbose_name='更新时间')),
                ('updated_by', models.CharField(blank=True, max_length=255, null=True, verbose_name='更新人')),
            ],
            options={
                'verbose_name': '商品优惠券关联表',
                'verbose_name_plural': '商品优惠券关联表',
                'db_table': 'prom_product_coupon_mapping',
            },
        ),
        migrations.CreateModel(
            name='ProductPromotionMapping',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('sku_id', models.IntegerField(verbose_name='商品的sku_id')),
                ('promotion_id', models.IntegerField(verbose_name='促销活动id')),
                ('start_time', models.DateTimeField(blank=True, null=True, verbose_name='开始时间')),
                ('end_time', models.DateTimeField(blank=True, null=True, verbose_name='结束时间')),
                ('price', models.IntegerField(blank=True, null=True, verbose_name='活动价格')),
                ('product_image', models.TextField(blank=True, null=True, verbose_name='商品图片， 多个以逗号隔开 - 列表存储')),
                ('introduce', models.TextField(blank=True, null=True, verbose_name='商品简介')),
                ('sort_weight', models.IntegerField(blank=True, default=0, null=True, verbose_name='排序权重，数字越大越靠前')),
                ('created_time', models.DateTimeField(blank=True, null=True, verbose_name='创建时间')),
                ('created_by', models.CharField(blank=True, max_length=255, null=True, verbose_name='创建人')),
                ('updated_time', models.DateTimeField(blank=True, default=datetime.datetime(2020, 8, 27, 14, 51, 58, 155093), null=True, verbose_name='更新时间')),
                ('updated_by', models.CharField(blank=True, max_length=255, null=True, verbose_name='更新人')),
            ],
            options={
                'verbose_name': '商品促销活动关联表',
                'verbose_name_plural': '商品促销活动关联表',
                'db_table': 'prom_product_promotion_mapping',
            },
        ),
        migrations.CreateModel(
            name='PromotionEvent',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=255, verbose_name='活动名称；橱窗名称，最新，热门，推荐，清仓，换季等')),
                ('code', models.CharField(max_length=255, unique=True, verbose_name='活动代码')),
                ('image_url', models.TextField(blank=True, null=True, verbose_name='封面图片url，多个以逗号隔开 - 数组存储')),
                ('product_count', models.IntegerField(blank=True, null=True, verbose_name='商品数量统计')),
                ('remark', models.CharField(blank=True, max_length=255, null=True, verbose_name='备注')),
                ('start_time', models.DateTimeField(blank=True, null=True, verbose_name='开始时间')),
                ('end_time', models.DateTimeField(blank=True, null=True, verbose_name='结束时间')),
                ('sort_weight', models.IntegerField(blank=True, default=0, null=True, verbose_name='排序权重，数字越大越靠前')),
                ('status', models.CharField(blank=True, max_length=8, null=True, verbose_name='状态，0：已删除，1：待投放，2：投放中，3：已下线')),
                ('created_time', models.DateTimeField(blank=True, null=True, verbose_name='创建时间')),
                ('created_by', models.CharField(blank=True, max_length=255, null=True, verbose_name='创建人')),
                ('updated_time', models.DateTimeField(blank=True, default=datetime.datetime(2020, 8, 27, 14, 51, 58, 154094), null=True, verbose_name='更新时间')),
                ('updated_by', models.CharField(blank=True, max_length=255, null=True, verbose_name='更新人')),
            ],
            options={
                'verbose_name': '商品促销活动',
                'verbose_name_plural': '商品促销活动',
                'db_table': 'prom_promotion_event',
            },
        ),
    ]
