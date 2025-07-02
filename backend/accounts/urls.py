from django.urls import path
from django.contrib.auth import views as auth_views
from .views import SignUpView, signup_api

urlpatterns = [
    path('login/', auth_views.LoginView.as_view(), name='login'),
    path('logout/', auth_views.LogoutView.as_view(), name='logout'),
    path('signup/', SignUpView.as_view(), name='signup'),
    path('api/signup/', signup_api, name='api_signup'),
]
