#FOR ADDING FX
'''from django import forms  
from myapp.models import Book 
class BookForm(forms.ModelForm):  
    class Meta:  
        model = Book 
        fields = ['title', 'author', 'genre', 'status', 'rate']
        widgets = { 'title': forms.TextInput(attrs={ 'class': 'form-control' }), 
        'author': forms.TextInput(attrs={ 'class': 'form-control' }),
        'genre': forms.TextInput(attrs={ 'class': 'form-control' }),
        'status': forms.TextInput(attrs={ 'class': 'form-control' }),
        'rate': forms.NumberInput(attrs={ 'class': 'form-control' }),
  }'''
from django import forms
from myapp.models import Book 
class BookForm(forms.ModelForm):
    STATUS_CHOICES = (
        ('Reading', 'Reading'),
        ('Finished', 'Finished'),
        ('Completed', 'Completed'),
    )
    GENRE_CHOICES = (
    ('Horror', 'Horror'),
    ('Romance', 'Romance'),
    ('Fiction', 'Fiction'),
    ('Nonfiction', 'Nonfiction'),
    ('Scifi', 'Scifi'),
    ('YA', 'YA'),
    ('Mystery', 'Mystery'),
    ('Historical', 'Historical'),
    ('Memoir', 'Memoir'),
    )
    RATE_CHOICES = (
        ('Excellent', 'Excellent'),
        ('Good', 'Good'),
        ('Average', 'Average'),
        ('Bad', 'Bad'),
        ('Terrible', 'Terrible'),
    )

    title = forms.CharField(widget=forms.TextInput(attrs={'class': 'form-control'}))
    author = forms.CharField(widget=forms.TextInput(attrs={'class': 'form-control'}))
    #genre = forms.CharField(widget=forms.TextInput(attrs={'class': 'form-control'}))
    genre = forms.ChoiceField(choices=GENRE_CHOICES, widget=forms.Select(attrs={'class': 'form-control'}))
    #genre = forms.CharField(widget=forms.TextInput(attrs={'class': 'form-control', 'id': 'tags-input'}))
    status = forms.ChoiceField(choices=STATUS_CHOICES, widget=forms.Select(attrs={'class': 'form-control'}))
    #rate = forms.IntegerField(widget=forms.NumberInput(attrs={'class': 'form-control'}))
    rate = forms.ChoiceField(choices=RATE_CHOICES, widget=forms.Select(attrs={'class': 'form-control'}))

    class Meta:
        model = Book 
        fields = ['title', 'author', 'genre', 'status', 'rate']