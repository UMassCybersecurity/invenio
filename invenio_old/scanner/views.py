from django.shortcuts import render
from django.http import HttpResponse


# Create your views here.
def scanner(request):
    html = "<html><body>TESTING .</body></html>"
    return HttpResponse(html)