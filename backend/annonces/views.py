from django.urls import reverse_lazy
from django.views.generic import ListView, DetailView, CreateView, UpdateView, DeleteView
from .models import Annonce


class AnnonceListView(ListView):
    model = Annonce
    context_object_name = 'annonces'


class AnnonceDetailView(DetailView):
    model = Annonce


class AnnonceCreateView(CreateView):
    model = Annonce
    fields = ['title', 'description']
    success_url = reverse_lazy('annonce_list')

    def form_valid(self, form):
        form.instance.recruiter = self.request.user
        return super().form_valid(form)


class AnnonceUpdateView(UpdateView):
    model = Annonce
    fields = ['title', 'description']
    success_url = reverse_lazy('annonce_list')


class AnnonceDeleteView(DeleteView):
    model = Annonce
    success_url = reverse_lazy('annonce_list')
