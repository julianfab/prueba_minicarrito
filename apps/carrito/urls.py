from django.contrib import admin
from django.urls import path
from django.conf.urls import url, include

from .views import *
from rest_framework import routers

app_name = 'carrito'

router = routers.DefaultRouter()
router.register(r'carrito', CarritoViewSet, basename='carrito')
router.register(r'items_carrito', ItemCarritoViewSet, basename='items_carrito')

urlpatterns = [
    url(r'^api/', include(router.urls)),
    url(r'api/anadirProducto/', añadirProductoCarrito, name='anadirProducto'),
    url(r'api/disminuirItemProducto/', disminuirCantidadItemCarrito, name='disminuirItemProcucto'),
    url(r'api/eliminarItemCarrito/', eliminarItemCarrito, name='eliminarItemCarrito'),
    url(r'api/vaciarCarrito/', vaciarCarrito, name='vaciarCarrito'),
]