<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login - CyberChat</title>
    <link href="https://fonts.googleapis.com/css2?family=Orbitron&display=swap" rel="stylesheet">
    <style>
        body {
            background: #121212;
            color: #00ffcc;
            font-family: 'Orbitron', sans-serif;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            flex-direction: column;
        }
        .container {
            background: rgba(0, 0, 0, 0.8);
            padding: 40px;
            border-radius: 10px;
            box-shadow: 0 4px 30px rgba(0, 255, 204, 0.2);
            width: 400px;
            text-align: center;
        }
        h1 {
            font-size: 40px;
            color: #00ffcc;
            margin-bottom: 20px;
            text-transform: uppercase;
        }
        input {
            width: 100%;
            padding: 15px;
            margin: 10px 0;
            border: 2px solid #00ffcc;
            border-radius: 5px;
            background: transparent;
            color: #fff;
            font-size: 18px;
        }
        input:focus {
            outline: none;
            border-color: #ff0066;
        }
        button {
            width: 100%;
            padding: 15px;
            background: linear-gradient(90deg, #ff0066, #00ffcc);
            border: none;
            border-radius: 5px;
            color: #121212;
            font-size: 18px;
            cursor: pointer;
        }
        button:hover {
            background: linear-gradient(90deg, #ff0066, #00ffcc, #ff0066);
        }
        .error {
            color: #ff0066;
            margin: 10px 0;
        }
        .link {
            color: #00ffcc;
            text-decoration: none;
            margin-top: 15px;
            font-size: 16px;
        }
        .link:hover {
            color: #ff0066;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Login</h1>
        <input type="email" id="email" placeholder="Email" required>
        <input type="password" id="password" placeholder="Password" required>
        <button id="loginBtn">Login</button>
        <div id="error-message" class="error"></div>
        <a href="register.html" class="link">Don't have an account? Register</a>
    </div>

    <script type="module">
      // Import the functions you need from the SDKs you need
      import { initializeApp } from "https://www.gstatic.com/firebasejs/11.2.0/firebase-app.js";
      import { getAnalytics } from "https://www.gstatic.com/firebasejs/11.2.0/firebase-analytics.js";
      import { getAuth, signInWithEmailAndPassword } from "https://www.gstatic.com/firebasejs/11.2.0/firebase-auth.js";
      import { getFirestore } from "https://www.gstatic.com/firebasejs/11.2.0/firebase-firestore.js";

      // Your web app's Firebase configuration
      const firebaseConfig = {
        apiKey: "AIzaSyDFHskUWiyHhZke3KT9kkOtFI_gPsKfiGo",
        authDomain: "itzhoyoo-f9f7e.firebaseapp.com",
        databaseURL: "https://itzhoyoo-f9f7e-default-rtdb.firebaseio.com",
        projectId: "itzhoyoo-f9f7e",
        storageBucket: "itzhoyoo-f9f7e.firebasestorage.app",
        messagingSenderId: "1094792075584",
        appId: "1:1094792075584:web:d49e9c3f899d3cd31082a5",
        measurementId: "G-LLT6F9WRKH"
      };

      // Initialize Firebase
      const app = initializeApp(firebaseConfig);
      const analytics = getAnalytics(app);
      const auth = getAuth(app);
      const db = getFirestore(app);

      // DOM Elements
      const loginBtn = document.getElementById('loginBtn');
      const email = document.getElementById('email');
      const password = document.getElementById('password');
      const errorMessage = document.getElementById('error-message');

      loginBtn.addEventListener('click', async () => {
        const emailValue = email.value;
        const passwordValue = password.value;

        if (!emailValue || !passwordValue) {
          errorMessage.textContent = 'Please fill in both fields!';
          return;
        }

        try {
          // Sign the user in with Firebase Authentication
          const userCredential = await signInWithEmailAndPassword(auth, emailValue, passwordValue);
          const user = userCredential.user;

          // Save user data to localStorage
          localStorage.setItem('username', user.displayName || 'User');
          localStorage.setItem('email', emailValue);

          // Redirect to dashboard or homepage
          window.location.href = 'dashboard.html';  // Adjust the redirect based on your app

        } catch (error) {
          if (error.code === 'auth/wrong-password') {
            errorMessage.textContent = 'Incorrect password. Please try again.';
          } else if (error.code === 'auth/user-not-found') {
            errorMessage.textContent = 'No account found with that email. Please register first.';
          } else {
            errorMessage.textContent = error.message;
          }
        }
      });
    </script>
</body>
</html>
