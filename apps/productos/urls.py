from django.contrib import admin
from django.urls import path
from django.conf.urls import url, include

from .views import *
from rest_framework import routers

app_name = 'productos'

router = routers.DefaultRouter()
router.register(r'productos', ProductoViewSet)

urlpatterns = [
    path('productos/', listadoProductos, name='productos'),

    url(r'^api/', include(router.urls)),
]