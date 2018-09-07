from __future__ import unicode_literals

from django.db import models

class userInfo(models.Model):
    username = models.CharField(max_length=40)
    emailid = models.CharField(max_length=100)


# Create your models here.
