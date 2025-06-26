<html>
<head>
    <style>
        body{
            display: flex;
            flex-direction: row;
            gap: 20px;
        }
        .div1{
            width: 50%;
            color: white;
            line-height: 0.5;
        }
        .div1 h1{
            color: gray;
            font-size: 150px;
            text-align: center;
            font-family: Chiller;

        }
        .div1 h2{
            text-align: center;
            font-family: "Curlz MT";
            font-size: 60px;
        }
        .div1 .input1{
            display: block;
            margin: 0 auto;
            width: 500px;
            height: 40px;
            border: 2px solid #ccc;
            border-radius: 20px;

            font-size: 16px;
            outline: none;
            box-shadow: 0 2px 5px rgba(0,0,0,0.1);
        }
        .div1 .input1 .input2{
            height: 100%;
            width: 80%;
            padding: 0 15px;
            border: 0px;
            color: white;
            font-size: 16px;
            outline: none;
            box-shadow: transparent;

            background-color: transparent;

        }
        .div1 .input1 .button1{

            width: 17%;
            height: 100%;
            border: 0px;
            font-size: 20px;
            font-family: "Arial Black";
            background-color: transparent;
            color: yellow;
            cursor: pointer;
            padding-top: 5x;

        }
        .div1 .but{
            position: absolute;
            bottom: 0;
        }
        .div1 .button2{
            background-color: yellow;
            height: 30px;
            outline: none;
            border: none;
            cursor:pointer;
            width: 100px;
            color: black;
            border-radius: 0 20px;
        }
        .img1{
          height: 100%;

      }
      body{
          background-color: black;
      }
    </style>
</head>
<body>
<div class="div1">
    <h1>Doodle</h1>
    <h2> Refine Your Search </h2>

    <form class="input1 " action="Search">
        <input  class="input2" type="text" name="Keyword">
        <button class="button1" type="submit"> Search </button>

    </form>
    <form class="but" action="History">
        <button class="button2" type="submit"> History </button>
    </form>
</div>
<div>
    <img  class="img1" src="https://images.unsplash.com/photo-1632291668986-e19c2a5ca66d?q=80&w=687&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"><br/>

</div>


</body>
</html>
