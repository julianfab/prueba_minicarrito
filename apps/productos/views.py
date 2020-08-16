from django.shortcuts import render
from rest_framework import viewsets
from rest_framework import permissions

from .serializers import ProductoSerializer
from .models import Producto

# Create your views here.
class ProductoViewSet(viewsets.ModelViewSet):
    queryset = Producto.objects.all()
    serializer_class = ProductoSerializer
    permission_classes = [permissions.AllowAny]

def listadoProductos(request):
    return render(request, 'productos/listado_productos.html')

