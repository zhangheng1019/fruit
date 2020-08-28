# 创建mock数据的脚本
from product.models import *
import time

type_dic = {
    "4": ["冷山灰", "迷雾金", "冰薄荷"],
    "12": ["8GB"],
    "13": ["256GB"],
}


def add_data(type_dic):
    for c_index, color in enumerate(type_dic["4"]):
        for m_index, memory in enumerate(type_dic["12"]):
            for s_index, storage in enumerate(type_dic["13"]):
                data_dic = {
                    "spu_id": 10,
                    "title": "三星Galaxy Note20 Ultra 5G(SM-N9860)S Pen&三星笔记 120Hz自适应屏幕 5G手机",
                    "images": "127.0.0.1:8010",
                    "price": 8999,
                    "indexes": str(c_index) + '_' + str(m_index) + '_' + str(s_index),
                    "own_spec": {
                        "机身颜色": color,
                        "内存": memory,
                        "机身存储": storage
                    },
                    "status": "1",
                    "created_time": time.strftime('%Y-%m-%d %H:%M:%S', time.localtime(time.time())),
                    "created_by": "张恒",
                    "updated_time": time.strftime('%Y-%m-%d %H:%M:%S', time.localtime(time.time())),
                    "updated_by": "张恒"
                }
                obj = SKU(**data_dic)
                obj.save()
                print("保存成功", data_dic["own_spec"])

