from django.db import models
from django.contrib.auth.models import User

class Question(models.Model):
    title = models.CharField(max_length=64)
    summary = models.CharField(max_length=128,blank=True,null=True)
    category = models.ForeignKey("Category",on_delete=models.CASCADE)
    content = models.TextField()
    author = models.ForeignKey("OAS_User",on_delete=models.CASCADE)
    publish_date = models.DateTimeField(auto_now_add=True)
    finished = models.BooleanField(default=0, null=False)
    ask_to = models.ForeignKey(User,on_delete=models.CASCADE,default=1)

    def __str__(self):
        return self.title

class Category(models.Model):
    name = models.CharField(max_length=64)

    def __str__(self):
        return '%s' % (self.name)

class OAS_User(models.Model):
    user = models.OneToOneField(User,on_delete=models.CASCADE)
    instr = models.BooleanField(default=0, null=False)
    category = models.ForeignKey('Category', on_delete=models.CASCADE,null=False)

    def __str__(self):
        return '%s' % (self.user)