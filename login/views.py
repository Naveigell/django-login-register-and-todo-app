from django.http import HttpResponse, HttpResponseRedirect
from django.template import loader
from django.views import View
from django.contrib import messages
from django.contrib.auth import authenticate, login
from .forms import LoginForm

import hashlib


class Login(View):
    def get(self, request):
        page = loader.get_template("login/index.html")

        # if request.is_anonymous
        # print(request.user.id)

        return HttpResponse(page.render({}, request))

    def post(self, request):

        email = request.POST["email"]
        password = request.POST["password"]
        password = hashlib.md5(str(password).encode('utf-8')).hexdigest()

        form = LoginForm(request.POST)

        if form.errors:
            for field in form:
                for error in field.errors:
                    # print(field.label)
                    # print(error)
                    messages.add_message(request, messages.ERROR, error, extra_tags="login")
        else:
            user = authenticate(request, username=email, password=password)
            if user is not None:
                login(request, user)
                return HttpResponseRedirect("/")
            else:
                messages.add_message(request, messages.ERROR, "User not found!", extra_tags="login")

        return HttpResponseRedirect(request.back)
