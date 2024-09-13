# example/urls.py
from django.urls import path
from .import views # type: ignore

from example.views import index


urlpatterns = [
    path('', index),
    path('index/', views.index, name='index'),

]