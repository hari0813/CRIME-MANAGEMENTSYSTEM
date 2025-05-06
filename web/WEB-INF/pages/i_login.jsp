<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Investigation Officer Login</title>
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
                position: relative;
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
                transform: scale(0.8);
                animation: fadeInZoom 1s ease-in-out forwards;
            }
            input {
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
            @keyframes fadeInZoom {
                from {
                    opacity: 0;
                    transform: scale(0.8);
                }
                to {
                    opacity: 1;
                    transform: scale(1);
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
            <h2>Investigation Officer Login</h2>
            <form name="i_login" method="post" action="i_login_verify.html">
                <label for="username">UserName:</label>
                <input type="text" id="username" name="username" required>

                <label for="password">Password:</label>
                <input type="password" id="password" name="password" required>

                <button type="submit">Login</button>
            </form>
        </div>

        <script>
            function goHome() {
                window.location.href = "index.html";
            }

            document.getElementById('loginForm').addEventListener('submit', function (event) {
                event.preventDefault();
                alert('Login Successful!');
            });
        </script>
    </body>
</html>
