from django.contrib.auth import logout
from django.views import View
from django.http import HttpResponse, HttpResponseRedirect
from django.template import loader
from django.contrib import messages
from todo.models import TodoModel

import hashlib


# Create your views here.
def auth_logout(request):
    logout(request)
    return HttpResponseRedirect(request.back)


class Home(View):

    def get(self, request):
        page = loader.get_template("home/index.html")
        todos = TodoModel.objects.all()

        return HttpResponse(page.render({
            'todos': todos
        }, request))
