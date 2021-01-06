from django.shortcuts import render


def error404(request, exception):
    return render(request, "error.html", {'status': 400, 'message': 'Not Found'})


def error403(request, exception):
    return render(request, "error.html", {'status': 403, 'message': 'Forbidden'})


def error405(request, exception):
    return render(request, "error.html", {'status': 405, 'message': "Method not allowed"})
