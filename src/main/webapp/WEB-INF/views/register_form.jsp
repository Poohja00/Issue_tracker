<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
        <!DOCTYPE html>
        <html>

        <head>
            <meta charset="ISO-8859-1">
            <title>User Registration Form</title>
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
                <h2>User Registration</h2>
                <form:form action="register" method="post" modelAttribute="user">
                    <div>
                        <form:label path="firstname">First name:</form:label>
                        <form:input path="firstname" />
                        <form:errors path="firstname" cssClass="error" />
                    </div>

                    <div>
                        <form:label path="lastname">Last name:</form:label>
                        <form:input path="lastname" />
                        <form:errors path="lastname" cssClass="error" />
                    </div>

                    <div>
                        <form:label path="email">E-mail:</form:label>
                        <form:input path="email" />
                        <form:errors path="email" cssClass="error" />
                    </div>


                    <div>
                        <form:label path="birthday">DOB:</form:label>
                        <form:input path="birthday" type="date" />
                        <form:errors path="birthday" cssClass="error" />
                    </div>

                    <div>
                        <form:label path="gender">Gender:</form:label>
                        <form:radiobutton path="gender" value="Male" />Male
                        <form:radiobutton path="gender" value="Female" />Female
                        <form:errors path="gender" cssClass="error" />
                    </div>




                    <div>
                        <form:label path="contactNumber">Contact Number:</form:label>
                        <form:input path="contactNumber" />
                        <form:errors path="contactNumber" cssClass="error" />
                    </div>

                    <div>
                        <form:label path="userId">User Id:</form:label>
                        <form:input path="userId" />
                        <form:errors path="userId" cssClass="error" />
                    </div>


                    <div>
                        <form:label path="password">Password:</form:label>
                        <form:password path="password" />
                        <form:errors path="password" cssClass="error" />
                    </div>


                    <div>
                        <div></div>
                        <div>
                            <form:button>Register</form:button>
                        </div>
                        <div></div>
                    </div>
                </form:form>
            </div>
        </body>

        </html>