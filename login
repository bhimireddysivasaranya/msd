<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Login</title>
<style>
    body {
        margin: 0;
        font-family: 'Segoe UI', sans-serif;
        background: linear-gradient(120deg, #f7971e, #ffd200);
        height: 100vh;
        display: flex;
        align-items: center;
        justify-content: center;
    }
    .card {
        background: white;
        padding: 30px;
        border-radius: 10px;
        width: 350px;
        box-shadow: 0 10px 25px rgba(0,0,0,0.2);
        animation: fadeIn 0.5s ease-in-out;
    }
    @keyframes fadeIn {
        from {opacity: 0; transform: translateY(-20px);}
        to {opacity: 1; transform: translateY(0);}
    }
    h2 {
        text-align: center;
        margin-bottom: 20px;
        color: #333;
    }
    input {
        width: 100%;
        padding: 12px;
        margin: 8px 0;
        border-radius: 5px;
        border: 1px solid #ccc;
        transition: border 0.3s;
    }
    input:focus {
        border-color: #f7971e;
        outline: none;
    }
    button {
        width: 100%;
        padding: 12px;
        border: none;
        border-radius: 5px;
        background: #f7971e;
        color: white;
        font-size: 16px;
        cursor: pointer;
        transition: background 0.3s;
    }
    button:hover {
        background: #e68712;
    }
    p {
        text-align: center;
        margin-top: 15px;
    }
    a {
        color: #f7971e;
        text-decoration: none;
    }
</style>
</head>
<body>
<div class="card">
    <h2>Welcome Back</h2>
    <input type="text" id="loginUser" placeholder="Username">
    <input type="password" id="loginPass" placeholder="Password">
    <button onclick="login()">Login</button>
    <p>Don't have an account? <a href="signup.html">Sign up</a></p>
</div>

<script>
function login() {
    const user = document.getElementById("loginUser").value;
    const pass = document.getElementById("loginPass").value;
    const savedUser = localStorage.getItem("user");
    const savedPass = localStorage.getItem("pass");

    if (user === savedUser && pass === savedPass) {
        alert("Login successful!");
        window.location.href = "landing.html";
    } else {
        alert("Invalid credentials.");
    }
}
</script>
</body>
</html>
