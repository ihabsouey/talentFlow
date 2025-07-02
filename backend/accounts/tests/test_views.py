from django.contrib.auth.models import User
from django.test import TestCase
from django.urls import reverse


class SignUpViewTests(TestCase):
    def test_signup_view_get(self):
        response = self.client.get(reverse('signup'))
        self.assertEqual(response.status_code, 200)
        self.assertContains(response, 'Signup')

    def test_signup_creates_user(self):
        response = self.client.post(reverse('signup'), {
            'username': 'newuser',
            'password1': 'Complexpass123',
            'password2': 'Complexpass123',
        })
        self.assertEqual(response.status_code, 302)
        self.assertTrue(User.objects.filter(username='newuser').exists())
