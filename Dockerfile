# Use Node 18 LTS to match SvelteKit expectations
FROM node:18-bullseye

WORKDIR /usr/src/app

# Copy only package manifests first for efficient caching
COPY package.json package-lock.json* ./

# Install dependencies (legacy-peer-deps to avoid peer issues)
RUN npm install --legacy-peer-deps --silent

# Copy app source
COPY . .

# Expose Vite default port
EXPOSE 5173

# Start dev server
CMD ["npm", "run", "dev"]
