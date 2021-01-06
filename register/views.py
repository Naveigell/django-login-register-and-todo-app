from django.shortcuts import render
from django.views import View
from django.contrib import messages
from django.contrib.auth import authenticate, login
from django.db import IntegrityError, DatabaseError
from django.http import HttpResponse, HttpResponseRedirect
from authentication.models import UserModel
from .forms import RegisterForm

import hashlib
import datetime


# Create your views here.
class Register(View):
    def post(self, request):

        form = RegisterForm(request.POST)
        if form.errors:
            for field in form:
                for error in field.errors:
                    messages.add_message(request, messages.ERROR, error, extra_tags="register")

            return HttpResponseRedirect(request.back)
        else:
            username = request.POST["username"]
            email = request.POST["email"]
            password = request.POST["password"]
            password = hashlib.md5(str(password).encode("utf-8")).hexdigest()

            try:
                user = UserModel.objects.create(username=username, email=email, password=password, role="admin",
                                                last_login=datetime.datetime.now())
            except IntegrityError as ie:
                messages.add_message(request, messages.ERROR, "User already exists", extra_tags="register")
            except DatabaseError:
                messages.add_message(request, messages.ERROR, "Something wrong in system", extra_tags="register")
            else:
                user = authenticate(request, username=email, password=password)
                if user is not None:
                    login(request, user)
                    return HttpResponseRedirect("/")

        return HttpResponseRedirect(request.back)
