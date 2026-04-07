FROM node:22-alpine

WORKDIR /app


COPY package*.json ./
RUN npm ci 
#use npm ci instead of npm install for faster and more reliable builds in CI/CD environments. It installs dependencies based on the exact versions specified in package-lock.json, ensuring consistency across different environments.... npm install krle error di6ilo henec did this change.

COPY . .

EXPOSE 8080

CMD [ "node", "index" ]