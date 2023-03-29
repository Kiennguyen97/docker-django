from django.shortcuts import render
from django.http import HttpResponse
from .models import Question

# Create your views here.
def index(request):
    question = Question.objects.all();
    return HttpResponse("Hello, world. You're at the polls index.")

def ham1(request):
    question = Question.objects.all();
    return HttpResponse("<h1>Ham linh tinh</h1><p>xin chao cac ban</p>")