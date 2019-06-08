<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Login for Doraemon</title>
    <link rel="stylesheet" href="style.css">
    
    <style>
    b {
    color:#99CCFF;
    }
    body {
    background: #3d516b;
}

form {
    width: 320px;
    padding: 60px 25px 80px;
    margin: 50px auto;
    background: #f8d348;
    display: flex;
    flex-direction: column;
}

svg {
    width: 70%;
    border-radius: 50%;
    background: #fff;
    margin-bottom: 40px;
    align-self: center;
    transform-style: preserve-3d;
}

input {
    font-size: 16px;
    border: 0;
    border-radius: 5px;
    outline: 0;
    padding: 10px 15px;
    margin-top: 15px;
}

@keyframes lookaway-up {
    from {
        transform: rotate3d(.2, 0, -.01, 20deg);
    }

    to {
        transform: rotate3d(.2, -.05, -.01, 20deg);
    }
}

@keyframes lookaway-down {
    0% {
        transform: rotate3d(-.2, 0, -.01, 20deg);
    }

    100% {
        transform: rotate3d(-.2, -.05, .01, 20deg);
    }
}

.ears {
    transform-origin: 50% 50% 5px;
}

.eyes {
    transform-origin: 50% 50% -40px;
}

.muzzle {
    transform-origin: 50% 50% -44px;
}

.ears, .eyes, .muzzle {
    transition: transform .5s;
}

.focused {
    transition: transform .1s;
}

.look-away .ears,
.look-away .eyes,
.look-away .muzzle {
    transition-duration: .3s;
    animation: 3s infinite alternate;
}

.look-away.up .ears,
.look-away.up .eyes,
.look-away.up .muzzle {
    transform: rotate3d(.2, 0, 0, 20deg) !important;
}

.look-away.down .ears,
.look-away.down .eyes,
.look-away.down .muzzle {
    transform: rotate3d(-.2, 0, 0, 20deg) !important;    
}

.look-away.playing.up .ears,
.look-away.playing.up .eyes,
.look-away.playing.up .muzzle {
    animation-name: lookaway-up;
}

.look-away.playing.down .ears,
.look-away.playing.down .eyes,
.look-away.playing.down .muzzle {
    animation-name: lookaway-down;
}
    
    
    </style>
</head>
<body>
	<!-- login -->
    <form mothod="post" action="userLogin.do">
  			<!-- character -->
           <svg id="ryan" viewBox="0 0 120 120" xmlns="http://www.w3.org/2000/svg">
            <path d="M0,150 C0,65 120,65 120,150" fill="" stroke="#99CCFF" stroke-width="2.5" />
            <g class="ears">
            </g>
            <g class="eyes">
            <circle cx="60" cy="60" r="40" fill="#46B8FF" stroke="#000" stroke-width="2.5" />
             <rect rx="44" ry="25" x="26" y="33" width="35" height="35" stroke-width="2" stroke="#000" fill="#fff"></rect>
             <rect rx="20" ry="25" x="61" y="33" width="35" height="35" stroke-width="2" stroke="#000" fill="#fff"></rect>             
             <ellipse cx="52" cy="47.5" rx="4" ry="6.5" fill="black"></ellipse>
            <ellipse cx="70" cy="47.5" rx="4" ry="6.5" fill="black"></ellipse>
            <circle cx="52" cy="45" r="1.5" fill="white"></circle>
            <circle cx="70" cy="45" r="1.5" fill="white"></circle>
             <circle cx="58" cy="70" r="10" fill="red" stroke-width="2" stroke="black"></circle>  
              </g>          
  
        </svg>
        <input type="text" id="email" name="email" placeholder="email@naver.com">
        <input type="password" id="password" name="password" placeholder="Password">
        <input type="submit" />
                
        <a href="register.jsp">Register</a>
    </form>
    
    <script src="function.js"></script>
</body>
</html>