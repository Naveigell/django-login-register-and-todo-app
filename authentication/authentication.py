from django.contrib.auth import get_user_model
from django.contrib.auth.backends import ModelBackend
from .models import UserModel


class Authentication(ModelBackend):
    def authenticate(self, request, username=None, password=None, **kwargs):
        if username is not None and password is not None:
            user = UserModel.objects.filter(email=username, password=password).order_by('id')
            if len(user) > 0:
                user = user[0]
                return user
        return None

    def get_user(self, user_id):
        try:
            return UserModel.objects.get(pk=user_id)
        except UserModel.DoesNotExist:
            return None


