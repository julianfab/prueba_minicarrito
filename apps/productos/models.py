from django.db import models
from .validators import *

# Create your models here.

class Producto(models.Model):
    nombre = models.CharField(max_length=30, verbose_name="Nombre del Producto")
    precio = models.BigIntegerField(validators=[precioMinimo])
    imagen = models.ImageField(null=True, upload_to='product_images/')
