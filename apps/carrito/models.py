from django.db import models
from ..usuarios.models import User
from ..productos.models import Producto
# Create your models here.

class Carrito(models.Model):
    user = models.ForeignKey(User, null=True, blank=True, on_delete=models.CASCADE)
    total = models.BigIntegerField(null=True, default=0,)
    
    @staticmethod
    def getIdCarrito(request):
        if "carrito_activo" not in request.session:
            carrito = Carrito.objects.create()
            request.session["carrito_activo"] = carrito.id
        if request.user.is_authenticated:
            carrito = Carrito.objects.get(id=request.session["carrito_activo"])
            carrito.user = request.user
            carrito.save()
        return request.session["carrito_activo"]

class ItemCarrito(models.Model):
    carrito = models.ForeignKey(Carrito, on_delete=models.CASCADE)
    producto = models.ForeignKey(Producto, on_delete=models.CASCADE)
    cantidad = models.IntegerField(default=1)
    subtotal = models.BigIntegerField()
