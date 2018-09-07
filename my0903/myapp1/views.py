from django.shortcuts import render, redirect
from myapp1.models import userInfo

#Display the home page when the url is loaded.
def home(request):
    userinfolist = userInfo.objects.all()
    context = {'userinfolist':reversed(userinfolist)}
    return render(request, "myapp1/home.html", context)

#define action to save the values into Database. 
def save(request):
    print (request.POST)
    userinfo = userInfo(username=request.POST['username'], emailid=request.POST['emailid'])
    userinfo.save()
#    return render(request, "myapp1/home.html")
    return redirect('/')

# Create your views here.
