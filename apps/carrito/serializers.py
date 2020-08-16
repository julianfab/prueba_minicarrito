from rest_framework import serializers
from ..productos.serializers import ProductoSerializer
from .models import *

class ItemCarritoSerializer(serializers.HyperlinkedModelSerializer):
    producto = ProductoSerializer()
    class Meta:
        model = ItemCarrito
        fields = ['id', 'producto', 'cantidad', 'subtotal']

class CarritoSerializer(serializers.HyperlinkedModelSerializer):
    class Meta:
        model = Carrito
        fields = ['id','total']