from django.shortcuts import render, redirect
from myapp.forms import BookForm
from myapp.models import Book

# Create your views here.
def addnew(request):  
    if request.method == "POST":  
        form = BookForm(request.POST)  
        if form.is_valid():  
            try:  
                form.save()  
                return redirect('/')  
            except:  
                pass
    else:  
        form = BookForm()  
    return render(request,'index.html',{'form':form})  
def index(request):
    books = Book.objects.all()
    return render (request, "show.html", {'books':books})
def edit(request, id):  
    book = Book.objects.get(id=id)  
    return render(request,'edit.html', {'book':book})
def update(request, id):  
    book = Book.objects.get(id=id)  
    form = BookForm(request.POST, instance = book)  
    if form.is_valid():  
        form.save()  
        return redirect("/")  
    return render(request, 'edit.html', {'book': book})
def destroy(request, id):  
    book = Book.objects.get(id=id)  
    book.delete()  
    return redirect("/")
def delete_all_books(request):
    Book.objects.all().delete()
    return redirect("/")

'''def add_book(request):
    if request.method == 'POST':
        form = BookForm(request.POST)
        if form.is_valid():
            return redirect('/')
    else:
        form = BookForm()
    return render(request, 'edit.html', {'form': form})'''
