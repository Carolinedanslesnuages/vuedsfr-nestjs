# Vue DSFR & NestJS Template Monorepo

Ce projet est un monorepo qui combine une application frontend Vue.js utilisant le Design System de l'État français (DSFR) et une application backend NestJS avec PostgreSQL. Le projet est configuré pour fonctionner dans un environnement Docker, avec la gestion de la base de données via Prisma.

## Prérequis

- [Docker](https://www.docker.com/)
- [Docker Compose](https://docs.docker.com/compose/)
- [Git](https://git-scm.com/)
- [Node.js](https://nodejs.org/)
- [pnpm](https://pnpm.io/) (alternative légère à npm)

### Installation de `pnpm`

Si `pnpm` n'est pas encore installé, vous pouvez l'installer globalement sur votre machine en utilisant la commande suivante :

```bash
npm install -g pnpm

## Installation

### 1. Cloner le dépôt

```bash
git clone https://github.com/Carolinedanslesnuages/vuedsfr-nestjs.git
cd vuedsfr-nestjs
```

### 2. Configuration des Variables d'Environnement

Créez un fichier `.env` à la racine du projet avec le contenu suivant, en remplaçant les valeurs :

```bash
# .env
POSTGRES_USER=myuser
POSTGRES_PASSWORD=mypassword
POSTGRES_DB=mydatabase
DATABASE_URL=postgresql://myuser:mypassword@db:5432/mydatabase?schema=public
```

### 3. Initialiser les Conteneurs Docker

Lancez les conteneurs Docker pour le client, le serveur, et la base de données :

```bash
docker-compose up 
```


Remplacez `<server-container-id>` par l'ID de votre conteneur serveur, que vous pouvez obtenir avec `docker ps`.

### 5. Accéder aux Applications

- **Frontend (Client)** : Accédez à l'application frontend à [http://localhost:5173](http://localhost:5173)
- **Backend (API)** : Accédez à l'API NestJS à [http://localhost:3000](http://localhost:3000)

### 6. Arrêter les Conteneurs

Pour arrêter tous les conteneurs, exécutez :

```bash
docker-compose down
```

## Développement

### Commandes Utiles

- **Build** : Construisez le projet (client et serveur) avec Docker :
  ```bash
  docker-compose up --build
  ```

### Structure du Projet

- **client/** : Code source de l'application Vue.js.
- **server/** : Code source de l'application NestJS.
- **prisma/** : Schémas Prisma pour la base de données.
- **docker-compose.yml** : Configuration Docker Compose pour orchestrer les services.


## Contribuer

Les contributions sont les bienvenues. N'hésitez pas à ouvrir des issues ou des pull requests.

## Licence

Ce projet est sous licence MIT.
```


### Explications

- **Prérequis** : Mentionne les outils nécessaires pour travailler sur le projet.
- **Installation** : Guide pas à pas pour cloner le dépôt, configurer les variables d'environnement, lancer les conteneurs, et initialiser la base de données avec Prisma.
- **Accès** : Indique comment accéder aux applications une fois démarrées.
- **Développement** : Fournit des commandes utiles pour le développement, y compris le suivi des logs et l'accès aux conteneurs.
- **Problèmes Courants** : Fournit des solutions aux problèmes fréquents que vous pourriez rencontrer.
- **Contribuer** : Encourage la contribution et précise la licence du projet.

Ce fichier `README.md` devrait vous aider à documenter les étapes nécessaires pour initialiser et travailler sur le projet.