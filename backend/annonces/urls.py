from django.urls import path
from .views import (
    AnnonceListView,
    AnnonceDetailView,
    AnnonceCreateView,
    AnnonceUpdateView,
    AnnonceDeleteView,
)

urlpatterns = [
    path('', AnnonceListView.as_view(), name='annonce_list'),
    path('new/', AnnonceCreateView.as_view(), name='annonce_create'),
    path('<int:pk>/', AnnonceDetailView.as_view(), name='annonce_detail'),
    path('<int:pk>/edit/', AnnonceUpdateView.as_view(), name='annonce_update'),
    path('<int:pk>/delete/', AnnonceDeleteView.as_view(), name='annonce_delete'),
]
