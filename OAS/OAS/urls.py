from django.contrib import admin
from django.urls import path,include
from first import views

urlpatterns = [
    path('admin/', admin.site.urls),
    path('', include('first.urls')),
    path('login_view/', views.login_view,name='login_view'),
    path('login/', views.Login, name='login'),
    path('logout/', views.logout_view, name='logout'),
    path('password_view/', views.password_view, name='change'),
    path('password/', views.password, name='password')
]
