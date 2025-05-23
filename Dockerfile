# Utiliser une image Node.js officielle comme base
FROM node:20-slim

# Créer et définir le répertoire de travail
WORKDIR /app

# Copier les fichiers de dépendances
COPY package*.json ./

# Installer les dépendances
RUN npm install

# Copier le reste des fichiers du projet
COPY . .

# Exposer le port sur lequel l'application écoute
EXPOSE 3031

# Commande pour démarrer l'application
CMD ["node", "index.js"] 
