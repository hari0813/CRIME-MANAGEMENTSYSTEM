<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Animated Login</title>
        <style>
            * {
                margin: 0;
                padding: 0;
                box-sizing: border-box;
                font-family: 'Poppins', sans-serif;
            }

            body {
                background: linear-gradient(45deg, #0f0c29, #302b63, #24243e);
                height: 100vh;
                display: flex;
                justify-content: center;
                align-items: center;
                overflow: hidden;
                position: relative;
            }

            .particles {
                position: absolute;
                width: 100%;
                height: 100%;
                z-index: -1;
            }

            .particles span {
                position: absolute;
                width: 10px;
                height: 10px;
                background: rgba(255, 255, 255, 0.3);
                border-radius: 50%;
                animation: floatParticles linear infinite;
            }

            @keyframes floatParticles {
                0% {
                    transform: translateY(0);
                    opacity: 1;
                }
                100% {
                    transform: translateY(-100vh);
                    opacity: 0;
                }
            }

            .login-container {
                background: rgba(255, 255, 255, 0.15);
                padding: 30px;
                border-radius: 15px;
                backdrop-filter: blur(15px);
                box-shadow: 0px 0px 30px rgba(255, 255, 255, 0.2);
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
                background: #ff5733;
                border: none;
                color: white;
                font-size: 16px;
                cursor: pointer;
                border-radius: 5px;
                transition: all 0.3s ease;
            }

            button:hover {
                background: #cc3700;
            }

            .home-menu {
                position: absolute;
                top: 20px;
                left: 20px;
                padding: 10px 20px;
                background: rgba(255, 255, 255, 0.2);
                color: white;
                border-radius: 5px;
                text-decoration: none;
                font-size: 18px;
                transition: 0.3s;
            }

            .home-menu:hover {
                background: rgba(255, 255, 255, 0.5);
            }

        </style>
    </head>
    <body>
        <a href="index.html" class="home-menu">Home</a>
        <div class="particles"></div>
        <div class="login-container">
            <h2>Login</h2>
            <form name="admin_login" method="post" action="admin_login_verify.html">
                <div class="input-group">
                    <label>Username</label>
                    <input type="text" id="username" name="username" required>
                </div>
                <div class="input-group">
                    <label>Password</label>
                    <input type="password" id="password" name="password" required>
                </div>
                <button type="submit">Login</button>
            </form>
        </div>
        <script>
            document.addEventListener("DOMContentLoaded", function() {
            const particlesContainer = document.querySelector(".particles");
                    for (let i = 0; i < 200; i++) {
            let particle = document.createElement("span");
                    let size = Math.random() * 8 + 2;
                    particle.style.width = `${size}px`;
                    particle.style.height = `${size}px`;
                    particle.style.left = `${Math.random() * 100} % `;
                    particle.style.animationDuration = `${Math.random() * 6 + 4}s`;
                    particle.style.animationDelay = `${Math.random() * 3}s`;
                    particlesContainer.appendChild(particle);
            }
            });
        </script>
    </body>
</html>
