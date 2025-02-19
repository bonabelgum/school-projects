from django.contrib import admin
from .models import Book

# Register your models here.
class BookAdmin(admin.ModelAdmin):
    list_display = "id", "title", "author", "genre", "status", "rate"

admin.site.register(Book, BookAdmin)
#username: admin@example.com, pass:admin