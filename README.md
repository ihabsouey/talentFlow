# TalentFlow

Ce dépôt contient une ébauche d'application multi-plateforme pour le projet **TalentFlow**, destinée à révolutionner l'écosystème Alternance-Emploi en France.

- **Backend** : construit avec Django et fournit les API nécessaires à l'authentification et à la gestion des profils candidats/recruteurs.
- **Frontend** : application Flutter cible Android/iOS et le web, avec des écrans simples de connexion et d'inscription.

## Démarrage rapide

1. Installez les dépendances Python et Django dans un environnement virtuel.
2. Dans le dossier `backend`, exécutez `python manage.py migrate` puis `python manage.py runserver`.
3. Installez Flutter et exécutez `flutter run` depuis le dossier `frontend` pour lancer l'application.

Ces instructions sont indicatives et nécessitent que votre poste dispose de Python, Django et Flutter.

## Configuration des variables d'environnement

Avant de démarrer, copiez le fichier `.env.example` vers `.env` puis renseignez vos valeurs :

```bash
cp .env.example .env
# éditez .env puis exportez les variables dans votre shell
export $(grep -v '^#' .env | xargs)
```

`SECRET_KEY` doit contenir une clé Django secrète, `DEBUG` peut valoir `True` ou `False`, et `ALLOWED_HOSTS` liste les domaines autorisés séparés par des virgules.
