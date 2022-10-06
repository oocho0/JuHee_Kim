from django.shortcuts import render
from django.http import HttpResponse
from .models import Question

def index(request):
    """pybo 목록 출력"""
    question_list = Question.objects.order_by('-create_date')
    context = {'question_list' : question_list}
    return render(request, 'pybo/question_list.html', context)

def detail(request, question_id):
    """pybo 내용 출력"""
    question = Question.objects.get(id=question_id)
    context = {'question' : question}
    return render(request, 'pybo/question_detail.html', context)