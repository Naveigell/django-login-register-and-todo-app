from django.db import models


# Create your models here.
class TodoModel(models.Model):
    id = models.BigAutoField(primary_key=True)
    title = models.CharField(max_length=30)
    description = models.CharField(max_length=255)

    class Meta:
        db_table = "todo"
        managed = False
