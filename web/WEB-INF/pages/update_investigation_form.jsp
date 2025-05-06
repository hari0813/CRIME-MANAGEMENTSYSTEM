<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Update Investigation</title>
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
        <div class="menu"><a href="i_home.html">Home</a></div>

        <h1>Update Investigation</h1>

        <!-- Update Investigation Form -->
        <div class="container">
            <form name="update_investigation_form" method="post" action="update_investigation_form_data.html">
                <label for="caseNumber">Case Number:</label>
                <input type="text" id="caseNumber" name="casenumber" required>

                <label for="firId">FIR ID:</label>
                <input type="text" id="firId" name="firId" required>

                <label for="officerName">Investigation Officer:</label>
                <input type="text" id="officerName" name="officername" required>

                <label for="status">Investigation Status:</label>
                <select id="status" name="status" required>
                    <option value="">Select Status</option>
                    <option value="Ongoing">Ongoing</option>
                    <option value="Closed">Closed</option>
                    <option value="Pending">Pending</option>
                </select>

                <label for="remarks">Investigation Remarks:</label>
                <textarea id="remarks" name="remarks" rows="4" required></textarea>

                <button type="submit">Update</button>
            </form>
        </div>

        <script>
            document.getElementById('updateInvestigationForm').addEventListener('submit', function (event) {
                event.preventDefault();
                alert('Investigation Details Updated Successfully!');
            });
        </script>

    </body>
</html>
