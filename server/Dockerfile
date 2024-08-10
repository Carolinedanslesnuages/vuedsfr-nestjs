# Dockerfile pour le serveur

# Étape 1 : Utilisation d'une image Node.js légère
FROM node:20-alpine

# Installer les outils PostgreSQL pour utiliser pg_isready
RUN apk add --no-cache postgresql-client

# Étape 2 : Définir le répertoire de travail
WORKDIR /app

# Étape 3 : Copier les fichiers package.json et pnpm-lock.yaml
COPY package*.json pnpm-lock.yaml ./

# Étape 4 : Installer pnpm et les dépendances en une seule commande
RUN npm install -g pnpm && pnpm install

RUN rm -rf node_modules

# Étape 5 : Copier tout le reste du code source
COPY . .
RUN pnpm install

# Étape 6 : Générer le client Prisma
RUN npx prisma generate

# Étape 7 : Copier le script d'entrée
COPY entrypoint.sh /app/entrypoint.sh
RUN chmod +x /app/entrypoint.sh

# Étape 8 : Exposer le port utilisé par l'application
EXPOSE 3000

# Étape 9 : Utiliser le script d'entrée pour démarrer l'application
ENTRYPOINT ["/app/entrypoint.sh"]
CMD ["pnpm", "run", "start:dev"]
