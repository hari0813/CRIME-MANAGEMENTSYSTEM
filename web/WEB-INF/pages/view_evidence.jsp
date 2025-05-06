<%@page import="model.Eregister"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="dbutil.DBContext"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>View Evidence Details</title>
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

            .menu:hover {
                background: #4a4abf;
                transform: scale(1.05);
            }

            /* Search Bar */
            .search-container {
                margin: 20px 0;
            }

            input {
                padding: 10px;
                width: 300px;
                border-radius: 5px;
                border: none;
            }

            button {
                padding: 10px 20px;
                margin-left: 10px;
                border-radius: 5px;
                border: none;
                background-color: #5a5acd;
                color: white;
                cursor: pointer;
                transition: 0.3s;
            }

            button:hover {
                background-color: #4a4abf;
            }

            /* Evidence Details Table */
            table {
                width: 80%;
                margin: 20px auto;
                border-collapse: collapse;
            }

            th, td {
                padding: 12px;
                border: 1px solid white;
            }

            th {
                background-color: #5a5acd;
            }

            /* Animations */
            @keyframes fadeIn {
                from {
                    opacity: 0;
                    transform: translateY(-10px);
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
        

        <h1>View Evidence Details</h1>

        <!-- Search Bar -->
        <div class="search-container">
            <input type="text" id="searchInput" placeholder="Search by Case Number, FIR ID, or Evidence Type">
            <button onclick="searchEvidence()">Search</button>
        </div>

        <!-- Evidence Details Table -->
        <table>
            <thead>

                <tr>
                    <th>Evidence ID</th>
                    <th>Collected Date</th>
                    <th>Description</th>
                    <th>location</th>
                    <th>Status</th>
                    <th>Evidence Type</th>
                </tr>
            </thead>
            <tbody id="witnessTable">
                <% List data = DBContext.getContext().readData("from Eregister");
                    Iterator ite = data.iterator();
                    while (ite.hasNext()) {
        Eregister s = (Eregister) ite.next();%>
                <tr>
                    <td><%= s.getEvidence_id()%></td>
                    <td><%= s.getClloction_date()%></td>
                    <td><%= s.getDescription()%></td>
                    <td><%= s.getLocation()%></td>
                    <td><%= s.getStatus()%></td>
                    <td><%= s.getType_evidence()%></td>


                </tr>
                <% }%>
            </tbody>
        </table>

        <script>
                    function searchEvidence() {
                    let input = document.getElementById("searchInput").value.toLowerCase();
                            let tableRows = document.querySelectorAll("#evidenceTable tr");
                            tableRows.forEach(row = > {
                            let rowText = row.innerText.toLowerCase();
                                    row.style.display = rowText.includes(input) ? "" : "none";
                            });
                    }

            function goHome() {
            window.location.href = "index.html"; // Change this to your home page URL
            }
        </script>

    </body>
</html>
