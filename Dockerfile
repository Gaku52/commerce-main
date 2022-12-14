FROM node:16.13.1-alpine

WORKDIR /app

COPY package-lock.json package.json pnpm-lock.yaml pnpm-workspace.yaml turbo.json ./
COPY src ./src
COPY dev ./dev
COPY packages ./packages
COPY site ./site

RUN npm install -g @vue/cli
CMD ["npm", "dev"]