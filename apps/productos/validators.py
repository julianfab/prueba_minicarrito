
from django.core.exceptions import ValidationError

def precioMinimo(value):
    if value < 0:
        raise ValidationError('No se permiten numero negativos')