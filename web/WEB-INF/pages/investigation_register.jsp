<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Investigation Officer Registration</title>
        <style>
            body {
                font-family: Arial, sans-serif;
                background-color: #1e1e2e;
                color: white;
                display: flex;
                flex-direction: column;
                justify-content: center;
                align-items: center;
                height: 100vh;
                overflow: hidden;
            }
            .menu {
                position: absolute;
                top: 10px;
                left: 10px;
                background: #5a5acd;
                padding: 10px 20px;
                border-radius: 5px;
                box-shadow: 0px 0px 5px rgba(255, 255, 255, 0.2);
                cursor: pointer;
                transition: background 0.3s ease, transform 0.2s;
            }
            .menu:hover {
                background: #4a4abf;
                transform: scale(1.05);
            }
            .container {
                background-color: #29293d;
                padding: 20px;
                border-radius: 10px;
                box-shadow: 0px 0px 10px rgba(255, 255, 255, 0.1);
                width: 350px;
                opacity: 0;
                transform: translateY(-50px);
                animation: fadeInUp 1s ease-in-out forwards;
            }
            input, select {
                width: 100%;
                padding: 10px;
                margin: 10px 0;
                border-radius: 5px;
                border: none;
            }
            button {
                width: 100%;
                padding: 10px;
                background-color: #5a5acd;
                color: white;
                border: none;
                border-radius: 5px;
                cursor: pointer;
                transition: transform 0.3s ease;
            }
            button:hover {
                background-color: #4a4abf;
                transform: scale(1.05);
            }
            @keyframes fadeInUp {
                from {
                    opacity: 0;
                    transform: translateY(-50px);
                }
                to {
                    opacity: 1;
                    transform: translateY(0);
                }
            }
            .background-animation {
                position: fixed;
                top: 0;
                left: 0;
                width: 100%;
                height: 100%;
                background: radial-gradient(circle, rgba(90, 90, 205, 0.3) 10%, transparent 70%);
                animation: pulse 5s infinite;
            }
            @keyframes pulse {
                0% {
                    transform: scale(1);
                    opacity: 0.8;
                }
                50% {
                    transform: scale(1.2);
                    opacity: 0.5;
                }
                100% {
                    transform: scale(1);
                    opacity: 0.8;
                }
            }
        </style>
    </head>
    <body>
        <div class="background-animation"></div>
        <div class="menu" onclick="goHome()">Home</div>
        <div class="container">
            <h2>Investigation Officer Registration</h2>
            <form name="investigation_register" method="post" action="investigation_register_data.html">
                <label for="username">Username:</label>
                <input type="text" id="username" name="invest_username" required>

                <label for="password">Password:</label>
                <input type="password" id="password" name="invest_password" required>

                <label for="name">Full Name:</label>
                <input type="text" id="name" name="invest_name" required>

                <label for="email">Email:</label>
                <input type="email" id="email" name="invest_email" required>

                <label for="phone">Phone Number:</label>
                <input type="tel" id="phone" name="invest_phone" required>

                <label for="badge">Badge Number:</label>
                <input type="text" id="badge" name="invest_badge" required>

                <label for="station">Police Station:</label>
                <input type="text" id="station" name="invest_station" required>

                <label for="rank">Rank:</label>
                <select id="rank" name="invest_rank" required>
                    <option value="">Select Rank</option>
                    <option value="Inspector">Inspector</option>
                    <option value="Sub-Inspector">Sub-Inspector</option>
                    <option value="Assistant Officer">Assistant Officer</option>
                </select>

                <button type="submit">Register</button>
            </form>
        </div>

        <script>
            function goHome() {
                window.location.href = "index.html"; // Change this to your home page URL
            }

            document.getElementById('registrationForm').addEventListener('submit', function (event) {
                event.preventDefault();
                alert('Investigation Officer Registered Successfully!');
            });
        </script>
    </body>
</html>
