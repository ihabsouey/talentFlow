# TalentFlow

Ce dépôt contient une ébauche d'application multi-plateforme pour le projet **TalentFlow**, destinée à révolutionner l'écosystème Alternance-Emploi en France.

- **Backend** : construit avec Django et fournit les API nécessaires à l'authentification et à la gestion des profils candidats/recruteurs.
- **Frontend** : application Flutter cible Android/iOS et le web, avec des écrans simples de connexion et d'inscription.

## Démarrage rapide

1. Installez les dépendances Python et Django dans un environnement virtuel.
2. Dans le dossier `backend`, exécutez `python manage.py migrate` puis `python manage.py runserver`.
   Les annonces sont gérées via l'application `annonces` et proposent un CRUD complet accessible sur `/annonces/`.
3. Installez Flutter et exécutez `flutter run` depuis le dossier `frontend` pour lancer l'application.

Ces instructions sont indicatives et nécessitent que votre poste dispose de Python, Django et Flutter.

## Running Tests

* **Backend**: from the `backend` directory run `python manage.py test` to
  execute Django unit tests.
* **Frontend**: ensure Flutter is installed, then run `flutter test` inside the
  `frontend` directory to run widget tests.
