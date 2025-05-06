<%@page import="model.Investicate"%>
<%@page import="model.Chargesheet"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="dbutil.DBContext"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>View Charge Sheet Details</title>
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

            /* Charge Sheet Details Table */
            table {
                width: 90%;
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
      

        <h1>View Charge Sheet Details</h1>

        <!-- Search Bar -->
        <div class="search-container">
            <input type="text" id="searchInput" placeholder="Search by Case Number, FIR ID, or Suspect Name">
            <button onclick="searchChargeSheet()">Search</button>
        </div>

        <!-- Charge Sheet Details Table -->
        <table>
            <thead>
                <tr>
                    <th>Investigation ID</th>
                    <th>FIR Number</th>
                    <th>Investigation Officer</th>
                    <th>Investigation Status</th>
                    <th>Investigation Notes</th>
                    <th>Evidence Collected</th>
                    <th>Date of Investigation</th>
                </tr>
            </thead>
            <tbody id="chargeSheetTable">
                <% List data = DBContext.getContext().readData("from Investicate");
                    Iterator ite = data.iterator();
                    while (ite.hasNext()) {
        Investicate s = (Investicate) ite.next();%>
                <tr>
                    <td><%= s.getInvest_id()%></td>
                    <td><%= s.getFir_num()%></td>
                    <td><%= s.getInvest_off()%></td>
                    <td><%= s.getInvest_status()%></td>
                    <td><%= s.getInvest_notes()%></td>
                    <td><%= s.getEvedince()%></td>
                    <td><%= s.getDate()%></td>


                </tr>
                <% }%>
            </tbody>
        </table>

        <script>
                    function searchChargeSheet() {
                    let input = document.getElementById("searchInput").value.toLowerCase();
                            let tableRows = document.querySelectorAll("#chargeSheetTable tr");
                            tableRows.forEach(row = > {
                            let rowText = row.innerText.toLowerCase();
                                    row.style.display = rowText.includes(input) ? "" : "none";
                            });
                    }
        </script>

    </body>
</html>
