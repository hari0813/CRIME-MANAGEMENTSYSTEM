<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Add Crime Nature Details</title>
        <style>
            /* General Styles */
            body {
                font-family: Arial, sans-serif;
                background-color: #1e1e2e;
                color: white;
                text-align: center;
                padding: 20px;
                overflow-x: hidden;
            }

            h1 {
                animation: fadeIn 1s ease-in-out;
            }

            /* Home Menu */
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

            .menu a {
                text-decoration: none;
                color: white;
                font-weight: bold;
            }

            .menu:hover {
                background: #4a4abf;
                transform: scale(1.05);
            }

            /* Form Container */
            .container {
                background-color: #29293d;
                padding: 20px;
                border-radius: 10px;
                box-shadow: 0px 0px 10px rgba(255, 255, 255, 0.1);
                width: 400px;
                margin: auto;
                opacity: 0;
                transform: translateY(-20px);
                animation: fadeInUp 1s ease-in-out forwards;
            }

            /* Form Elements */
            label {
                display: block;
                margin: 10px 0 5px;
                text-align: left;
            }

            input, select, textarea {
                width: 100%;
                padding: 10px;
                margin-bottom: 10px;
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

            /* Animations */
            @keyframes fadeInUp {
                from {
                    opacity: 0;
                    transform: translateY(-20px);
                }
                to {
                    opacity: 1;
                    transform: translateY(0);
                }
            }

        </style>
    </head>
    <body>

        <!-- Home Menu -->
        <div class="menu"><a href="index.html">Home</a></div>

        <h1>Add Crime Nature Details</h1>

        <!-- Add Crime Nature Form -->
        <div class="container">
            <form name="C_Register" method="post" action="C_Register_data.html">
                <label for="crimeCode">Crime Code:</label>
                <input type="text" id="crimeCode" name="crimecode" required>

                <label for="crimeName">Crime Name:</label>
                <input type="text" id="crimeName" name="crimename" required>

                <label for="crimeType">Crime Type:</label>
                <select id="crimeType" name="crimetype" required>
                    <option value="">Select Type</option>
                    <option value="Felony">Felony</option>
                    <option value="Misdemeanor">Misdemeanor</option>
                    <option value="Infraction">Infraction</option>
                    <option value="Cyber Crime">Cyber Crime</option>
                    <option value="Financial Fraud">Financial Fraud</option>
                    <option value="Homicide">Homicide</option>
                    <option value="Theft">Theft</option>
                    <option value="Kidnapping">Kidnapping</option>
                    <option value="Drug Offense">Drug Offense</option>
                    <option value="Assault">Assault</option>
                    <option value="Domestic Violence">Domestic Violence</option>
                    <option value="Terrorism">Terrorism</option>
                    <option value="Human Trafficking">Human Trafficking</option>
                </select>

                <label for="description">Crime Description:</label>
                <textarea id="description" name="description" rows="4" required></textarea>

                <button type="submit">Add Crime Nature</button>
            </form>
        </div>

        <script>
            document.getElementById('crimeNatureForm').addEventListener('submit', function (event) {
                event.preventDefault();
                alert('Crime Nature Details Added Successfully!');
            });
        </script>

    </body>
</html>
