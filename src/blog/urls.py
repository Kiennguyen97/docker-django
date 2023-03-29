from django.urls import path
from . import views

urlpatterns = [
    path('blog/', views.index, name='index'),
    path('blog/ham1/', views.ham1, name='ham1'),
]