from django.shortcuts import render
from django.http import HttpResponse, HttpResponseRedirect
from django.contrib import messages
from django.db import DatabaseError
from django.template import loader
from .models import TodoModel
from .forms import TodoForm


# Create your views here.
def create(request):
    # method must be POST
    if request.method != "POST":
        return render(request, "error.html", {'status': 405, 'message': "Method not allowed"})

    form = TodoForm(request.POST)
    if form.errors:
        for field in form:
            for error in field.errors:
                messages.error(request, error)

    else:
        title = request.POST["title"]
        description = request.POST["description"]

        try:
            instance = TodoModel.objects.create(title=title, description=description)
        except DatabaseError as db:
            messages.error(request, "Something error in system")
        else:
            messages.success(request, "Insert data success")

    return HttpResponseRedirect(request.back)


def delete(request, id=5):
    # method must be POST
    if request.method != "POST":
        return render(request, "error.html", {'status': 405, 'message': "Method not allowed"})

    row_deleted = TodoModel.objects.filter(id=id).delete()
    if row_deleted[0] > 0:
        messages.success(request, "Todo deleted successfully")
    else:
        messages.error(request, "No todo was deleted")

    return HttpResponse(request.back)


def edit(request, id):
    # method must be GET
    if request.method != "GET":
        return render(request, "error.html", {'status': 405, 'message': "Method not allowed"})

    page = loader.get_template("todo/edit.html")
    todo = TodoModel.objects.filter(id=id).first()

    if todo is None:
        return render(request, "error.html", {'status': 404, 'message': "Todo Not Found"})

    return HttpResponse(page.render({'todo': todo}, request))


def update(request):
    # method must be POST
    if request.method != "POST":
        return render(request, "error.html", {'status': 405, 'message': "Method not allowed"})

    form = TodoForm(request.POST)
    if form.errors:
        for field in form:
            for error in field.errors:
                messages.error(request, error)
        return HttpResponseRedirect(request.back)

    id = request.POST["id"]
    todo = TodoModel.objects.filter(id=id)

    if len(todo) > 0:
        title = request.POST["title"]
        description = request.POST["description"]

        todo.title = title
        todo.description = description

        row_updated = todo.update(title=title, description=description)
        if row_updated > 0:
            messages.success(request, "Todo Update Success")

    return HttpResponseRedirect("/")
