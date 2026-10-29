from django.contrib import admin
from django.urls import path
from api.views import todo_list

urlpatterns = [
    path('admin/', admin.site.urls),
    path('api/tasks/', todo_list),
]

