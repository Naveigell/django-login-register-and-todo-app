from django.urls import path
from django.contrib.staticfiles.urls import staticfiles_urlpatterns
from login.views import Login

urlpatterns = [
    path('', Login.as_view())
]  # + assets(settings.STATIC_URL, document_root=settings.STATIC_URL)

urlpatterns += staticfiles_urlpatterns()
