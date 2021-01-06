from django.urls import path
from .views import create, delete, edit, update

urlpatterns = [
    path('<int:id>/delete/', delete),
    path('<int:id>/edit/', edit),
    path('update/', update),
    path('create/', create)
]
