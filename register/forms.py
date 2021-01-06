from django.forms import ModelForm
from django.core.exceptions import ValidationError
from django.core.validators import validate_email
from authentication.models import UserModel


class RegisterForm(ModelForm):
    class Meta:
        model = UserModel
        fields = ["username", "email", "password"]

    def clean(self):
        super(RegisterForm, self).clean()

        username = self.cleaned_data.get("username")
        email = self.cleaned_data.get("email")
        password = self.cleaned_data.get("password")

        if username is None:
            self._errors["username"] = self.error_class([
                "Username cannot be empty"
            ])
        elif len(username) < 4:
            self._errors["username"] = self.error_class([
                "Username length minimun 4"
            ])

        if email is None:
            self._errors["email"] = self.error_class([
                "Email cannot be empty"
            ])
        elif len(email) < 4:
            self._errors["email"] = self.error_class([
                "Email length minimun 4"
            ])
        else:
            try:
                validate_email(email)
            except ValidationError:
                self._errors["email"] = self.error_class([
                    "Email not valid"
                ])

        if password is None:
            self._errors["password"] = self.error_class([
                "Password cannot be empty"
            ])
        elif len(password) < 4:
            self._errors["password"] = self.error_class([
                "Password length minimun 4"
            ])

        return self.cleaned_data
