from django.urls import path
from first import views

urlpatterns = [
    path('', views.index,name='index'),
    path('detail/<question_id>/', views.detail, name='detail'),
    path('reply/', views.reply, name='reply'),
    path('issue/', views.issue, name='issue'),
    path('submit/', views.submit, name='submit'),
    path('choice_cate/', views.choice_cate, name='choice'),
    path('category/<cate_id>/', views.category, name='category'),
    path('myquestion/',views.my_question, name='myquestion'),
    path('search/', views.search, name='search'),
    path('finish/', views.finish, name='finish'),
    path('hint/', views.hint, name='hint')
]