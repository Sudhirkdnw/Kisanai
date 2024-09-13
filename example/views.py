# example/views.py
from datetime import datetime
from django.shortcuts import render # type: ignore


from django.http import HttpResponse

def index(request):
    return render(request,'Frontend/index/index.html')