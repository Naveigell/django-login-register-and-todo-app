from django.forms import ModelForm
from .models import TodoModel


class TodoForm(ModelForm):
    class Meta:
        model = TodoModel
        fields = ["title", "description"]

    def clean(self):
        super(TodoForm, self).clean()

        title = self.cleaned_data.get("title")
        description = self.cleaned_data.get("description")

        # validate title
        if title is None:
            self._errors["title"] = self.error_class([
                "Title must not be empty"
            ])
        elif len(title) < 4:
            self._errors["title"] = self.error_class([
                "Title length minimum is 4"
            ])

        # validate description
        if description is None:
            self._errors["description"] = self.error_class([
                "Description must not be empty"
            ])
        elif len(description) < 7:
            self._errors["description"] = self.error_class([
                "Description length minimum is 7"
            ])

        return self.cleaned_data
