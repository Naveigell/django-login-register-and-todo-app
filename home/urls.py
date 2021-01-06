from django.urls import path
from django.contrib.staticfiles.urls import staticfiles_urlpatterns
from .views import Home, auth_logout

urlpatterns = [
    path("", Home.as_view()),
    path("logout/", auth_logout)
]

urlpatterns += staticfiles_urlpatterns()
