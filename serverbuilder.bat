@echo off
setlocal

:: Initialize Node.js project
echo Initializing Node.js project...
npm init -y

:: Install dependencies
echo Installing dependencies...
npm install express mongoose bcrypt jsonwebtoken dotenv cors

:: Create folders
mkdir models
mkdir routes
mkdir config

:: Create files
echo Creating files...
echo. > app.js
echo. > .env
echo. > models\User.js
echo. > routes\auth.js
echo. > config\db.js

:: Write boilerplate to app.js
echo const express = require('express');> app.js
echo const dotenv = require('dotenv');>> app.js
echo const connectDB = require('./config/db');>> app.js
echo const authRoutes = require('./routes/auth');>> app.js
echo const cors = require('cors');>> app.js
echo.>> app.js
echo dotenv.config();>> app.js
echo connectDB();>> app.js
echo const app = express();>> app.js
echo app.use(cors());>> app.js
echo app.use(express.json());>> app.js
echo app.use('/api/auth', authRoutes);>> app.js
echo const PORT = process.env.PORT || 5000;>> app.js
echo app.listen(PORT, () => console.log(`Server running on port ${PORT}`));>> app.js

echo ✅ Emojicat server files generated!
pause
