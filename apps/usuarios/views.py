from django.contrib.auth.mixins import LoginRequiredMixin
from django.contrib.auth import login, authenticate
from django.shortcuts import render, redirect
from django.urls import reverse_lazy
from functools import wraps

from .forms import SignUpForm
from .models import User

def signup(request):
    if request.method == 'POST':
        form = SignUpForm(request.POST)
        if form.is_valid():
            user= form.save(commit=False)
            username = form.cleaned_data.get('username')
            raw_password = form.cleaned_data.get('password1')
            user.es_cliente =True
            user.save()
            user = authenticate(username=username, password=raw_password)
            login(request, user)
            return redirect('contenidos:listado_de_contenidos')
    else:
        form = SignUpForm()
    return render(request, 'usuarios/signup.html', {'form': form})