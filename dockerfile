# 🐱 Splash chant base image
FROM node:18

# 📁 Set working directory
WORKDIR /app

# 📦 Copy package files and install dependencies
COPY package*.json ./
RUN npm install

# 📂 Copy the rest of your code
COPY . .

# 🚪 Open the port your app uses
EXPOSE 3000

# 🧠 Start your server
CMD ["node", "server.js"]
