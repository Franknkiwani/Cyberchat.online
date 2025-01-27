<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CyberChat</title>
    <style>
        body {
            margin: 0;
            font-family: 'Roboto', sans-serif;
            background: #1c1c1c;
            color: #00ffcc;
        }

        /* Loading Screen */
        .loading-screen {
            text-align: center;
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            flex-direction: column;
        }

        .loading-screen h1 {
            font-size: 48px;
            color: #00ffcc;
            letter-spacing: 5px;
            margin-top: 20px;
        }

        .loader {
            border: 16px solid #f3f3f3;
            border-top: 16px solid #00ffcc;
            border-radius: 50%;
            width: 120px;
            height: 120px;
            animation: spin 2s linear infinite;
        }

        @keyframes spin {
            0% { transform: rotate(0deg); }
            100% { transform: rotate(360deg); }
        }

        /* Profile Page */
        .profile-container {
            background: #1c1c1c;
            color: #00ffcc;
            padding: 20px;
            text-align: center;
            max-width: 500px;
            margin: 0 auto;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 255, 204, 0.5);
            display: none; /* Hidden initially, shown after loading */
        }

        .profile-container h1 {
            font-size: 36px;
            margin-bottom: 20px;
        }

        .profile-pic {
            display: flex;
            justify-content: center;
            gap: 20px;
            margin-bottom: 20px;
        }

        .profile-pic img {
            width: 100px;
            height: 100px;
            border-radius: 50%;
            cursor: pointer;
            border: 3px solid transparent;
            transition: transform 0.3s ease, border 0.3s ease;
        }

        .profile-pic img:hover {
            transform: scale(1.1);
        }

        .profile-pic img.selected {
            border: 3px solid #00ffcc;
        }

        .premium-message {
            color: #ff0033;
            font-size: 18px;
            margin-top: 10px;
        }

        form {
            display: flex;
            flex-direction: column;
            gap: 15px;
        }

        input, select, textarea {
            background-color: #121212;
            color: #00ffcc;
            border: 1px solid #00ffcc;
            padding: 10px;
            font-size: 16px;
            border-radius: 5px;
        }

        button {
            background-color: #00ffcc;
            color: #1c1c1c;
            border: none;
            padding: 10px;
            font-size: 18px;
            cursor: pointer;
            border-radius: 5px;
            transition: background-color 0.3s ease;
        }

        button:hover {
            background-color: #00cc99;
        }
    </style>
</head>
<body>

    <!-- Loading Screen -->
    <div class="loading-screen" id="loadingScreen">
        <div class="loader"></div>
        <h1>CyberChat</h1>
    </div>

    <!-- Profile Creation Form -->
    <div class="profile-container" id="profileContainer">
        <h1>Create Your Profile</h1>

        <div class="profile-pic">
            <h3>Select Profile Picture</h3>
            <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRdN_8i6yYNN09SKZRQ-clTVMlu17Y9xh76CQ&usqp=CAU" alt="Profile 1">
            <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRCoyaYc5R4mi5bKTnPUvcy7yHq50k2eQxQew&usqp=CAU" alt="Profile 2">
        </div>

        <div class="premium-message">
            <p>Premium users can upload their own profile picture. Contact support to upgrade.</p>
        </div>

        <form id="profile-form">
            <label for="username">Username (@):</label>
            <input type="text" id="username" required><br>

            <label for="gender">Gender:</label>
            <select id="gender" required>
                <option value="Male">Male</option>
                <option value="Female">Female</option>
                <option value="Other">Other</option>
            </select><br>

            <label for="age">Age:</label>
            <input type="number" id="age" required><br>

            <label for="description">Description:</label>
            <textarea id="description" required></textarea><br>

            <label for="paypal">PayPal Email:</label>
            <input type="email" id="paypal" required><br>

            <label for="referral">Where did you hear about us?</label>
            <input type="text" id="referral" required><br>

            <button type="submit">Save & Login</button>
        </form>
    </div>

    <script type="module">
        // Import Firebase modules
        import { initializeApp } from "https://www.gstatic.com/firebasejs/11.2.0/firebase-app.js";
        import { getDatabase, ref, set } from "https://www.gstatic.com/firebasejs/11.2.0/firebase-database.js";

        // Firebase configuration
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
        const database = getDatabase(app);

        // Simulate loading screen
        setTimeout(() => {
            document.getElementById('loadingScreen').style.display = 'none';
            document.getElementById('profileContainer').style.display = 'block';
        }, 3000); // 3 seconds loading time

        // Profile selection and form submission
        document.querySelectorAll('.profile-pic img').forEach(img => {
            img.addEventListener('click', function() {
                document.querySelectorAll('.profile-pic img').forEach(i => i.classList.remove('selected'));
                img.classList.add('selected');
            });
        });

        // Handle form submission
        document.querySelector('#profile-form').addEventListener('submit', function(event) {
            event.preventDefault();
            console.log("Form submitted");

            const selectedProfilePic = document.querySelector('.profile-pic img.selected');
            const profilePic = selectedProfilePic ? selectedProfilePic.src : '';

            // Get form data
            const profileData = {
                username: document.getElementById('username').value,
                gender: document.getElementById('gender').value,
                age: document.getElementById('age').value,
                description: document.getElementById('description').value,
                paypal: document.getElementById('paypal').value,
                referral: document.getElementById('referral').value,
                profilePic: profilePic
            };

            console.log("Profile data: ", profileData); // Log the data to ensure it's collected

            // Save profile data to Firebase Realtime Database
            const userId = Date.now(); // Unique ID based on timestamp
            set(ref(database, 'profiles/' + userId), profileData)
                .then(() => {
                    console.log("Data saved to Firebase successfully");
                    // Redirect to home page after successful submission
                    window.location.href = 'home.html';
                })
                .catch((error) => {
                    console.error("Error writing to Firebase: ", error);
                });
        });
    </script>
</body>
</html>
