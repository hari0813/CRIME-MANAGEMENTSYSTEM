<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Admin Registration</title>
        <style>
            * {
                margin: 0;
                padding: 0;
                box-sizing: border-box;
                font-family: Arial, sans-serif;
            }

            body {
                background: black;
                height: 100vh;
                display: flex;
                flex-direction: column;
                justify-content: center;
                align-items: center;
                overflow: hidden;
                position: relative;
            }

            .bubbles {
                position: absolute;
                width: 100%;
                height: 100%;
                overflow: hidden;
                top: 0;
                left: 0;
                z-index: -1;
            }

            .bubbles span {
                position: absolute;
                bottom: -10px;
                width: 20px;
                height: 20px;
                background: rgba(255, 255, 255, 0.3);
                border-radius: 50%;
                animation: bubbleFloat linear infinite;
            }

            @keyframes bubbleFloat {
                0% {
                    transform: translateY(0);
                    opacity: 1;
                }
                100% {
                    transform: translateY(-100vh);
                    opacity: 0;
                }
            }

            .form-container {
                background: rgba(255, 255, 255, 0.1);
                padding: 20px;
                border-radius: 10px;
                backdrop-filter: blur(10px);
                box-shadow: 0px 0px 20px rgba(255, 255, 255, 0.2);
                width: 350px;
                text-align: center;
                animation: fadeIn 1.5s ease-in-out;
            }

            @keyframes fadeIn {
                from { opacity: 0; transform: translateY(-20px); }
                to { opacity: 1; transform: translateY(0); }
            }

            h2 {
                color: white;
                margin-bottom: 20px;
            }

            .input-group {
                margin-bottom: 15px;
                text-align: left;
            }

            .input-group label {
                display: block;
                color: white;
                margin-bottom: 5px;
            }

            .input-group input {
                width: 100%;
                padding: 10px;
                border: none;
                border-radius: 5px;
                font-size: 16px;
                transition: all 0.3s ease;
            }

            .input-group input:focus {
                outline: none;
                box-shadow: 0 0 10px #6a5acd;
            }

            button {
                width: 100%;
                padding: 10px;
                background: #6a5acd;
                border: none;
                color: white;
                font-size: 16px;
                cursor: pointer;
                border-radius: 5px;
                transition: all 0.3s ease;
            }

            button:hover {
                background: #483d8b;
            }

            #message {
                margin-top: 10px;
                color: white;
            }

            .home-btn {
                margin-top: 15px;
                padding: 10px 20px;
                background: #ff4500;
                color: white;
                border: none;
                border-radius: 5px;
                cursor: pointer;
                transition: all 0.3s ease;
            }

            .home-btn:hover {
                background: #cc3700;
            }
        </style>
    </head>
    <body>
        <div class="bubbles"></div>
        <div class="form-container">
            <h2>Admin Registration</h2>
            <form name="admin_reg" method="post" action="admin_reg_data.html">
                <div class="input-group">
                    <label>Full Name</label>
                    <input type="text" name="full_name" id="name" required>
                </div>
                <div class="input-group">
                    <label>Email</label>
                    <input type="email" name="email" id="email" required>
                </div>
                <div class="input-group">
                    <label>Username</label>
                    <input type="text" name="username" id="username" required>
                </div>
                <div class="input-group">
                    <label>Password</label>
                    <input type="password" name="password" id="password" required>
                </div>
                <button type="submit">Register</button>
            </form>
            <p id="message"></p>
            <button class="home-btn" onclick="goHome()">Home</button>
        </div>
        <script>
                    document.getElementById('adminForm').addEventListener('submit', function(event) {
            event.preventDefault();
                    let name = document.getElementById('name').value;
                    let email = document.getElementById('email').value;
                    let username = document.getElementById('username').value;
                    let password = document.getElementById('password').value;
                    if (name && email && username && password) {
            document.getElementById('message').textContent = 'Registration Successful!';
                    document.getElementById('message').style.color = 'lightgreen';
                    this.reset();
            } else {
            document.getElementById('message').textContent = 'Please fill all fields!';
                    document.getElementById('message').style.color = 'red';
            }
            });
                    function goHome() {
                    window.location.href = "index.html";
                    }

            document.addEventListener("DOMContentLoaded", function() {
            const bubbleContainer = document.querySelector(".bubbles");
                    for (let i = 0; i < 100; i++) {
            let bubble = document.createElement("span");
                    let size = Math.random() * 30 + 10;
                    bubble.style.width = `${size}px`;
                    bubble.style.height = `${size}px`;
                    bubble.style.left = `${Math.random() * 100} % `;
                    bubble.style.animationDuration = `${Math.random() * 6 + 4}s`;
                    bubble.style.animationDelay = `${Math.random() * 3}s`;
                    bubbleContainer.appendChild(bubble);
            }
            });
        </script>
    </body>
</html>