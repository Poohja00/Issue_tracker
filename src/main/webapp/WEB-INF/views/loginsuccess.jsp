<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <!DOCTYPE html>
    <html>

    <head>
        <meta charset="ISO-8859-1">
        <title>Welcome</title>
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
            
            .logoff {
                text-align: center;
                border: 3px;
                padding: 3px;
                background-color: rgb(255, 255, 255);
                border-radius: 30px;
            }
        </style>
    </head>

    <body bgcolor="lavender">

        <h2>Login Successful !!! Welcome </h2>
        <form:form>
            <a class="logoff" href="logoff">Log Off</a><br/><br/>
            <a class="logoff" href="logoff1">Log Off</a><br/><br/>
            <a class="logoff" href="logoff2">Log Off</a><br/><br/>
        </form:form>
    </body>

    </html>