from django.conf import settings
from django.http import HttpResponseRedirect


class LoginMiddleware(object):
    NEED_AUTHENTICATION_URL = [
        "/",
        "/todo/"
    ]

    URL_CONTAINS = [
        ["/todo/", "/edit/"],
        ["/todo/", "/delete/"],
        ["/logout/"]
    ]

    def __init__(self, get_response):
        self.get_response = get_response

    def __call__(self, request):
        if request.user.id is None and self.contains(request, self.URL_CONTAINS):
            return HttpResponseRedirect("/login/")

        response = self.get_response(request)
        return response

    def contains(self, request, paths=None):
        if request.path == "/":
            return True

        if paths is not None and type(paths) is list:
            for path in paths:
                if type(path) is list:
                    count = 0
                    for item in path:
                        if item in request.path:
                            count += 1

                    if count == len(path):
                        return True
                else:
                    if path in request.path:
                        return True

        return False


class HttpRedirect(object):
    def __init__(self, get_response):
        self.get_response = get_response

    def __call__(self, request):
        request.back = request.META.get("HTTP_REFERER")

        response = self.get_response(request)
        return response
