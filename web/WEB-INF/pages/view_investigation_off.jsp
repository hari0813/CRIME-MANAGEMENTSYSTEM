<%@page import="model.Investigationregister"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="dbutil.DBContext"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>View Investigation Officer Details</title>
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

            /* Officer Details Container */
            .container {
                background-color: #29293d;
                padding: 20px;
                border-radius: 10px;
                box-shadow: 0px 0px 10px rgba(255, 255, 255, 0.1);
                width: 80%;
                margin: auto;
                opacity: 0;
                transform: translateY(-20px);
                animation: fadeInUp 1s ease-in-out forwards;
            }

            /* Table Styles */
            table {
                width: 100%;
                border-collapse: collapse;
                margin-top: 20px;
            }

            th, td {
                padding: 12px;
                border: 1px solid #555;
                text-align: left;
            }

            th {
                background-color: #5a5acd;
            }

            tr:hover {
                background-color: #444;
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
        <div class="menu"><a href="admin_home.html">Home</a></div>

        <h1>View Investigation Officer Details</h1>

        <!-- Officer Details Table -->
        <div class="container">
            <table>
                <thead>
                    <tr>
                        <th>Officer Name</th>
                        <th>Batch No</th>
                        <th>Rank</th>
                        <th>Police station</th>
                        <th>Contact</th>
                        <th>Email</th>
                        <th>UserName</th>
                        <th>Delete</th>
                    </tr>
                </thead>
                <tbody>
                    <% List data = DBContext.getContext().readData("from Investigationregister");
                        Iterator ite = data.iterator();
                        while (ite.hasNext()) {
  Investigationregister s = (Investigationregister) ite.next();%>
                    <tr>
                        <td><%= s.getFull_name()%></td>
                        <td><%= s.getBatch_no()%></td>
                        <td><%= s.getRank()%></td>
                        <td><%= s.getPolice_station()%></td>
                        <td><%= s.getPhone_number()%></td>
                        <td><%= s.getEmail()%></td>
                        <td><%= s.getUser_name()%></td>

                        <td><a href="delete_notice.html?nid=<%=s.getUser_name()%>"><img src="images/images.png" height="20px" width="20px"/></a></td>
                    </tr>
                    <% }%>
                </tbody>
            </table>
        </div>

    </body>
</html>
