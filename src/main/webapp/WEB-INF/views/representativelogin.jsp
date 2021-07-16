<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
        <!DOCTYPE html>
        <html>

        <head>
            <meta charset="ISO-8859-1">
            <title>Representative Registration Form</title>
            <style type="text/css">
                body {
                    background-image: url(https://images.unsplash.com/photo-1476108621677-3c620901b5e7?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1567&q=80);
                    backdrop-filter: blur(2px);
                    text-align: center;
                    color: black;
                    border: 30px;
                    padding: 50px;
                    margin: 20px auto;
                }
                
                button {
                    padding: 10px;
                }
                
                .error {
                    color: red;
                    font-style: italic;
                }
                
                form {
                    display: table;
                }
                
                form div {
                    display: table-row;
                }
                
                label,
                input,
                span,
                select {
                    display: table-cell;
                    margin: 5px;
                    text-align: left;
                }
                
                input[type=text],
                input[type=password],
                select,
                textarea {
                    width: 200px;
                    margin: 5px;
                }
                
                form div div {
                    display: table-cell;
                }
            </style>
        </head>

        <body>
            <div align="center">
                <h2>Representative Login</h2>
                <form:form action="loginasrepresentative" method="post" modelAttribute="login">

                    <div>
                        <form:label path="rep">Rep:</form:label>
                        <form:input path="rep" />
                        <form:errors path="rep" cssClass="error" />
                    </div>


                    <div>
                        <form:label path="password">Password:</form:label>
                        <form:password path="password" />
                        <form:errors path="password" cssClass="error" />
                    </div>


                    <div>
                        <div></div>
                        <div>
                            <form:button>Login</form:button>
                        </div>
                        <div></div>
                    </div>
                </form:form>
            </div>
        </body>

        </html>