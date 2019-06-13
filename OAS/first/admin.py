from django.contrib import admin
from first import models
# Register your models here.

class OAS_UserAdmin(admin.ModelAdmin):
    list_display = ('id','user')

class QuestionAdmin(admin.ModelAdmin):
    list_display = ('id','title','author','category','publish_date')
    list_filter = ('publish_date',)
    search_fields = ('title',)

class CategoryAdmin(admin.ModelAdmin):
    list_display = ('id','name')
    list_filter = ('name',)

admin.site.register(models.Question,QuestionAdmin)
admin.site.register(models.Category,CategoryAdmin)
admin.site.register(models.OAS_User,OAS_UserAdmin)
