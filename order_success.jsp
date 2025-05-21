<%-- 
    Document   : order_success
    Created on : 11 Mar 2025, 8:06:38 pm
    Author     : thora
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
     <style>
        /* General Reset */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Poppins', sans-serif;
        }

        /* Background with Gradient */
        body {
            background: linear-gradient(135deg, #28a745, #218838);
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            overflow: hidden;
        }

        /* Success Container with Glassmorphism */
        .success-container {
            background: rgba(255, 255, 255, 0.2);
            backdrop-filter: blur(10px);
            padding: 40px;
            border-radius: 15px;
            box-shadow: 0px 10px 30px rgba(0, 0, 0, 0.3);
            text-align: center;
            width: 450px;
            animation: fadeIn 1s ease-in-out;
            color: #fff;
        }

        /* Keyframe Animation */
        @keyframes fadeIn {
            from { opacity: 0; transform: scale(0.9); }
            to { opacity: 1; transform: scale(1); }
        }

        /* Lottie Animation */
        .animation-box {
            width: 200px;
            margin: 0 auto 20px;
        }

        h1 {
            font-size: 28px;
            margin-bottom: 10px;
        }

        p {
            font-size: 16px;
            opacity: 0.8;
            margin-bottom: 20px;
        }

        /* Confetti Animation */
        .confetti {
            position: absolute;
            width: 8px;
            height: 8px;
            background: #ff4081;
            opacity: 0.8;
            border-radius: 50%;
            animation: fall 4s linear infinite;
        }

        @keyframes fall {
            0% { transform: translateY(-100vh) rotate(0deg); opacity: 1; }
            100% { transform: translateY(100vh) rotate(720deg); opacity: 0; }
        }

        .confetti:nth-child(2) { background: #ffc107; animation-delay: 0.3s; }
        .confetti:nth-child(3) { background: #03a9f4; animation-delay: 0.6s; }
        .confetti:nth-child(4) { background: #4caf50; animation-delay: 0.9s; }
        .confetti:nth-child(5) { background: #ffeb3b; animation-delay: 1.2s; }

        /* Buttons */
        .btn-group {
            display: flex;
            justify-content: space-between;
            margin-top: 20px;
        }

        .btn {
            background: #fff;
            color: #28a745;
            padding: 12px 20px;
            font-size: 16px;
            border-radius: 5px;
            border: none;
            cursor: pointer;
            font-weight: bold;
            transition: 0.3s;
            flex: 1;
            margin: 0 5px;
        }

        .btn:hover {
            background: #f1f1f1;
        }

    </style>
</head>
<body onload="playSound()">

    <!-- Confetti Elements -->
    <div class="confetti"></div>
    <div class="confetti"></div>
    <div class="confetti"></div>
    <div class="confetti"></div>
    <div class="confetti"></div>

    <div class="success-container">
        <!-- Lottie Animation -->
        <div class="animation-box">
            <lottie-player src="https://assets10.lottiefiles.com/packages/lf20_rz0hyabm.json"  
                background="transparent" speed="1" loop autoplay></lottie-player>
        </div>

        <h1>Order Placed Successfully! 🎉</h1>
        <p>Thank you for your purchase! Your order is being processed.</p>

        <!-- Success Sound -->
        <audio id="successSound" autoplay>
            <source src="https://www.fesliyanstudios.com/play-mp3/4385" type="audio/mpeg">
        </audio>

        <!-- Buttons -->
        <div class="btn-group">
            
            <button class="btn" onclick="window.location.href='Welcome.jsp'">Continue Shopping</button>
        </div>
    </div>

    <script>
        function playSound() {
            document.getElementById("successSound").play();
        }
    </script>

    <!-- Lottie Player Script -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/lottie-web/5.7.6/lottie.min.js"></script>
    
</body>
</html>