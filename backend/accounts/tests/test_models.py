from django.contrib.auth.models import User
from django.test import TestCase

from accounts.models import CandidateProfile, RecruiterProfile


class CandidateProfileModelTest(TestCase):
    def test_create_candidate_profile(self):
        user = User.objects.create_user(username='candidate', password='pass')
        profile = CandidateProfile.objects.create(user=user, bio='bio text')
        self.assertEqual(profile.user.username, 'candidate')
        self.assertEqual(profile.bio, 'bio text')


class RecruiterProfileModelTest(TestCase):
    def test_create_recruiter_profile(self):
        user = User.objects.create_user(username='recruiter', password='pass')
        profile = RecruiterProfile.objects.create(user=user, company='ACME')
        self.assertEqual(profile.user.username, 'recruiter')
        self.assertEqual(profile.company, 'ACME')
