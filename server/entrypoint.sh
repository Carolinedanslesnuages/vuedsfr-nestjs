#!/bin/sh

# Attendre que la base de données soit prête
until pg_isready -h db -p 5432 -U myuser
do
  echo "Waiting for PostgreSQL..."
  sleep 2
done

# Appliquer les migrations Prisma
npx prisma migrate dev --name init

# Démarrer l'application
exec "$@"
