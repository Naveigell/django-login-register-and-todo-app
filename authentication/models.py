from django.db import models


class UserModel(models.Model):
    USER = "USER"
    ADMIN = "ADMIN"
    ROLE_CHOISES = (
        (ADMIN, "ADMIN"),
        (USER, "USER")
    )

    id = models.AutoField(primary_key=True)
    username = models.CharField(max_length=40)
    email = models.CharField(max_length=255)
    password = models.CharField(max_length=100)
    role = models.CharField(max_length=10, choices=ROLE_CHOISES, default=ADMIN)

    last_login = models.DateTimeField()

    class Meta:
        db_table = "users"
        managed = False
