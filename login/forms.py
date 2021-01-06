from django.forms import ModelForm
from django import forms
from authentication.models import UserModel


class LoginForm(ModelForm):
    class Meta:
        model = UserModel
        fields = ["email", "password"]

    def clean(self):
        super(LoginForm, self).clean()

        email = self.cleaned_data.get("email")
        password = self.cleaned_data.get("password")

        if email is None:
            self._errors["email"] = self.error_class([
                "Email cannot be empty"
            ])
        elif len(email) < 4:
            self._errors["email"] = self.error_class([
                "Email character minimum is 4"
            ])

        if password is None:
            self._errors["password"] = self.error_class([
                "Password cannot be empty"
            ])
        elif len(password) < 4:
            self._errors["password"] = self.error_class([
                "Password character minimum is 4"
            ])

        return self.cleaned_data
