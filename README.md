# TalentFlow

Ce dépôt contient l'ossature d'une application multi‑plateforme pour le projet **TalentFlow**, visant à faciliter la mise en relation entre candidats et recruteurs.

- **Backend** : Django fournit les API d'authentification et de gestion des profils.
- **Frontend** : Flutter cible Android, iOS et le web.

## Aperçu des dossiers

- `backend/` – code et configuration du serveur Django
- `frontend/` – application Flutter

## Prérequis backend

- Python 3.8 ou plus récent
- `pip` et, de préférence, `virtualenv`
- Remplacez `SECRET_KEY` dans `backend/talentflow/settings.py` ou définissez la variable d'environnement `DJANGO_SECRET_KEY`

## Installation du backend

```bash
cd backend
python -m venv venv
source venv/bin/activate
pip install django
python manage.py migrate
python manage.py runserver
```

## Installation de Flutter

1. Téléchargez Flutter depuis [flutter.dev](https://flutter.dev/docs/get-started/install)
2. Ajoutez `flutter/bin` à votre `PATH`
3. Lancez `flutter doctor` pour télécharger les composants nécessaires
4. Installez les dépendances de l'application :

```bash
cd frontend
flutter pub get
```

## Exécution de l'application

```bash
cd frontend
flutter run
```

## Contribuer

Les contributions sont bienvenues via pull request.

1. Forkez le dépôt et créez une branche pour vos modifications
2. Respectez PEP 8 pour le Python et exécutez `dart format` sur le code Flutter
3. Ouvrez une pull request détaillant votre apport


