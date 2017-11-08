<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 11/6/2017
  Time: 2:57 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login Form</title>
    <style>
        body {
            margin-left: 500px;
            margin-top: 100px;
        }

        fieldset {
            border: 1px solid #888;
            border-right: 1px solid #666;
            border-bottom: 1px solid #666;
            width: 300px;
        }

        legend {
            font-weight: bold;
            border: 1px solid #888;
            border-right: 1px solid #666;
            border-bottom: 1px solid #666;
            padding: 0.5em;
            background-color: #666;
            color: #fff;
            text-shadow: 0 -1px 0 #333;
            letter-spacing: 0.1em;
            text-transform: uppercase;
        }

        input {
            display: block;
            width: 175px;
            float: left;
            margin-bottom: 10px;
        }

        label {
            display: block;
            text-align: right;
            float: left;
            width: 75px;
            padding-right: 20px;
        }

        .checkbox {
            width: 1em;
        }

        br {
            clear: left;
        }

        .buttonsubmit {
            width: 75px;
            margin-left: 95px;
        }

        label.error {
            width: auto;
        }
    </style>
    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.0/jquery.min.js" type="text/javascript"></script>
    <script src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.15.0/jquery.validate.min.js"></script>
    <script>
        $(function () {
            $('#form-login').validate({
                rules: {
                    uname: {
                        required: true
                    },
                    pword: {
                        required: true,
                        minlength: 6
                    }
                },
                messages: {
                    uname: {
                        required: "Username không được để trống"
                    },
                    pword: {
                        required: "Mật khẩu không được để trống",
                        minlength: "Mật khẩu phải có ít nhất 6 ký tự"
                    }
                },
                submitHandler: function (form) {
                    //code in here
                }

            });
        })
    </script>
</head>
<body>
<link href='https://fonts.googleapis.com/css?family=Open+Sans:700,600' rel='stylesheet' type='text/css'>

<form action="loginsuccess" method="POST">
    <fieldset>
        <legend>Login Form</legend>
        <div>
            <label>Username</label>
            <input type="text" name="uname" id="uname" value=""/><br/>
        </div>
        <div>
            <label>Password</label>
            <input type="password" name="pword" id="pword" value=""/><br/>
        </div>
        <div>
            <label>Remember you?</label>
            <input type="checkbox" name="remember" id="remember" value="true" class="checkbox"/><br/>
        </div>
        <p>${message}</p>
        <button>Login</button>
        <input type="submit" name="submit" value="submit" class="buttonsubmit"/>
    </fieldset>
</form>
</body>
</html>
