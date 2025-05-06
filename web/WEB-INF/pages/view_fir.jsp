<%@page import="model.Firreg"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="dbutil.DBContext"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>View FIR Details</title>
        <style>
            /* Global Styles */
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

            /* Home Button */
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

            /* Container */
            .container {
                background-color: #29293d;
                padding: 20px;
                border-radius: 10px;
                box-shadow: 0px 0px 10px rgba(255, 255, 255, 0.1);
                width: 80%;
                max-width: 800px;
                opacity: 0;
                transform: translateY(-50px);
                animation: fadeInUp 1s ease-in-out forwards;
            }

            /* Search Bar */
            .search-container {
                width: 100%;
                display: flex;
                justify-content: center;
                margin-bottom: 10px;
            }
            .search-container input {
                width: 80%;
                padding: 10px;
                border-radius: 5px;
                border: none;
                font-size: 16px;
            }

            /* Table Styling */
            table {
                width: 100%;
                border-collapse: collapse;
                margin-top: 10px;
            }
            th, td {
                padding: 10px;
                text-align: left;
                border-bottom: 1px solid #444;
            }
            th {
                background-color: #5a5acd;
            }
            tr:hover {
                background-color: #3a3a5a;
            }

            /* Animations */
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

            /* Background Animation */
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
        

        <div class="container">
            <h2>View FIR Details</h2>

            <!-- Search Bar -->
            <div class="search-container">
                <input type="text" id="search" placeholder="Search by FIR number..." onkeyup="searchFIR()">
            </div>

            <!-- FIR Table -->
            <table id="firTable">
                <thead>
                    <tr>
                        <th>FIR No.</th>
                        <th>Date</th>
                        <th>Crime Category</th>
                        <th>Officer</th>
                        <th>Description</th>
                    </tr>
                </thead>
                <tbody>
                    <% List data = DBContext.getContext().readData("from Firreg");
                              Iterator ite = data.iterator();
                              while (ite.hasNext()) {
              Firreg s = (Firreg) ite.next();%>
                    <tr>
                        <td><%= s.getFirnum()%></td>
                        <td><%= s.getDate()%></td>
                        <td><%= s.getCrimecategory()%></td>
                        <td><%= s.getOfficer()%></td>
                        <td><%= s.getDescription()%></td>


                    </tr>
                    <% }%>
                </tbody>
            </table>
        </div>

        <script>
                    

            function searchFIR() {
            let input = document.getElementById("search").value.toUpperCase();
                    let table = document.getElementById("firTable");
                    let tr = table.getElementsByTagName("tr");
                    for (let i = 1; i < tr.length; i++) {
            let td = tr[i].getElementsByTagName("td")[0]; // FIR Number column
                    if (td) {
            let textValue = td.textContent || td.innerText;
                    tr[i].style.display = textValue.toUpperCase().includes(input) ? "" : "none";
            }
            }
            }
        </script>
    </body>
</html>
