<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <!DOCTYPE html>
    <html>

    <head>
        <meta charset="ISO-8859-1">
        <title>Issue Tracker</title>
        <style>
            body {
                background-image: url(https://images.unsplash.com/photo-1476108621677-3c620901b5e7?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1567&q=80);
                backdrop-filter: blur();
                text-align: center;
                color: black;
                border: 30px;
                padding: 50px;
                margin: 20px auto;
            }
            
            .firstpage {
                text-align: center;
                border: 3px;
                padding: 3px;
                background-color: rgb(255, 255, 255);
                border-radius: 30px;
            }
        </style>

    </head>

    <body>
        <h1>Welcome</h1>
        <a class="firstpage" href="registerasuser">Register as user</a><br/><br/>
        <a class="firstpage" href="registerasrepresentatives">Register as representative</a><br/><br/>
        <a class="firstpage" href="loginasuser"> Login as User</a><br/><br/>
        <a class="firstpage" href="loginasrepresentative">Login as Representative</a><br/><br/>
        <a class="firstpage" href="loginasadmin">Login as Admin</a><br/><br/>
    </body>

    </html>