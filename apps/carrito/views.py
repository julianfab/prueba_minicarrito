from django.shortcuts import render
from rest_framework import viewsets
from rest_framework import permissions
from django.core.serializers.json import DjangoJSONEncoder
import json
from django.http import HttpResponse

from .serializers import *
from .models import *

# Create your views here.

class CarritoViewSet(viewsets.ReadOnlyModelViewSet):
    #queryset = Carrito.carritoActivo(request)
    serializer_class = CarritoSerializer
    def get_queryset(self):
        return Carrito.objects.filter(id=str(Carrito.getIdCarrito(self.request)))
    permission_classes = [permissions.AllowAny]

class ItemCarritoViewSet(viewsets.ReadOnlyModelViewSet):
    #carritoOn = Carrito.carritoActivo(request)
    #queryset = ItemCarrito.objects.filter(carrito = carritoOn)
    serializer_class = ItemCarritoSerializer
    def get_queryset(self):
        return ItemCarrito.objects.filter(carrito = str(Carrito.getIdCarrito(self.request)))
    permission_classes = [permissions.AllowAny]


def añadirProductoCarrito(request):
    if request.is_ajax:
        if request.method == 'GET':
            idProductoIn = request.GET.get('idProducto')
            producto = Producto.objects.get(id=idProductoIn)
            carritoIn = Carrito.objects.get(id=str(Carrito.getIdCarrito(request)))
            try:
                item_carrito = ItemCarrito.objects.get(carrito=carritoIn, producto=producto)
                exist= True
            except ItemCarrito.DoesNotExist:
                item_carrito = None
                exist = False
            if item_carrito == None:
                item_carrito = ItemCarrito.objects.create(carrito=carritoIn, producto=producto, cantidad=1, subtotal=producto.precio)
                item_carrito.save()
            else:
                item_carrito.cantidad += 1
                item_carrito.subtotal += producto.precio
                item_carrito.save()
            carritoIn.total += producto.precio
            carritoIn.save()
            return HttpResponse(json.dumps({'status':'success'},cls=DjangoJSONEncoder), content_type = "application/json")


def disminuirCantidadItemCarrito(request):
    if request.is_ajax:
        if request.method == 'GET':
            idProductoIn = request.GET.get('idProducto')
            producto = Producto.objects.get(id=idProductoIn)
            carritoIn = Carrito.objects.get(id=str(Carrito.getIdCarrito(request)))
            item_carrito = ItemCarrito.objects.get(carrito=carritoIn, producto=producto)
            if item_carrito.cantidad == 1:
                carritoIn.total -= item_carrito.subtotal
                carritoIn.save()
                item_carrito.delete()
            else:
                item_carrito.cantidad -= 1
                item_carrito.subtotal -= producto.precio
                item_carrito.save()
                carritoIn.total -= producto.precio
                carritoIn.save()
            return HttpResponse(json.dumps({'status':'success'},cls=DjangoJSONEncoder), content_type = "application/json")


def eliminarItemCarrito(request):
     if request.is_ajax:
        if request.method == 'GET':
            idProductoIn = request.GET.get('idProducto')
            producto = Producto.objects.get(id=idProductoIn)
            carritoIn = Carrito.objects.get(id=str(Carrito.getIdCarrito(request)))
            item_carrito = ItemCarrito.objects.get(carrito=carritoIn, producto=producto)
            carritoIn.total -= item_carrito.subtotal
            carritoIn.save()
            item_carrito.delete()
            return HttpResponse(json.dumps({'status':'success'},cls=DjangoJSONEncoder), content_type = "application/json")
        
def vaciarCarrito(request):
    carritoIn = Carrito.objects.filter(id=str(Carrito.getIdCarrito(request)))
    carritoIn.delete()
    del request.session["carrito_activo"]
    
    return HttpResponse(json.dumps({'status':'success'},cls=DjangoJSONEncoder), content_type = "application/json")