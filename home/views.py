from django.shortcuts import render,HttpResponse
from datetime import datetime
from home.models import Contact
from django.contrib import messages


# Create your views here. 
def index(request):
    return render(request , 'index.html')
    
#HttpResponse("This is home page")

def Services(request):
    return render(request , 'Services.html')

def about(request):
    return render(request , 'about.html')
 
def contact(request):
    if request.method == "POST":

        email= request.POST.get('email')
        desc= request.POST.get('desc')
        contact= Contact(email=email,desc=desc,date=datetime.today())
        contact.save()
        messages.success(request, 'Submited Thanks for Ur time!!')
    return render(request , 'contact.html')
    
         
     
    