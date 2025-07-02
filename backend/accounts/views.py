from django.contrib.auth.forms import UserCreationForm
from django.contrib.auth.models import User
from django.http import JsonResponse
from django.urls import reverse_lazy
from django.views.decorators.csrf import csrf_exempt
from django.views.generic.edit import CreateView
import json

from .models import CandidateProfile


class SignUpView(CreateView):
    form_class = UserCreationForm
    success_url = reverse_lazy('login')
    template_name = 'registration/signup.html'


@csrf_exempt
def signup_api(request):
    """Simple API endpoint to create a user and optional candidate profile."""
    if request.method != 'POST':
        return JsonResponse({'error': 'Only POST allowed'}, status=405)

    try:
        payload = json.loads(request.body.decode())
    except (json.JSONDecodeError, AttributeError):
        payload = request.POST

    username = payload.get('username')
    password = payload.get('password')
    bio = payload.get('bio', '')

    if not username or not password:
        return JsonResponse({'error': 'username and password required'}, status=400)

    if User.objects.filter(username=username).exists():
        return JsonResponse({'error': 'user already exists'}, status=400)

    user = User.objects.create_user(username=username, password=password)
    CandidateProfile.objects.create(user=user, bio=bio)
    return JsonResponse({'status': 'ok'})
