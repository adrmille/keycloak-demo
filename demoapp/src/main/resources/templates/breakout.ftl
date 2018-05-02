<#import "/spring.ftl" as spring>
<html>
<head>
  <title>Javascript Breakout</title>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
  <meta name="viewport" content="width=device-width", initial-scale=1.0, user-scalable="no"/>
  <link href="breakout/breakout.css" media="screen, print" rel="stylesheet" type="text/css" /> 
</head> 
 
<body> 

  <div id="breakout">
    <canvas id="canvas">
      <div class='unsupported'>
        Sorry, this example cannot be run because your browser does not support the &lt;canvas&gt; element
      </div>
    </canvas>
    <div id="levels">
      <img id="next" class="disabled" src="breakout/images/up.png"   title="next level">
      <img id="prev" class="disabled" src="breakout/images/down.png" title="previous level">
      <span id="label">level:</span><span id="level"></span>
    </div>
    <div id="controls">
      <input id='sound' type='checkbox' />
      <label for='sound'>sound</label>
    </div>
    <div id="instructions" style='display:none;'>
      <div class='keyboard'>
        <b>space</b> to start<br>
        <b>left/right</b> to move paddle<br>
        <b>up/down</b> to change level
      </div>
      <div class='touch'>
        <b>touch here</b> to start<br>
        <b>drag</b> paddle to move<br>
      </div>
    </div>
  </div>

  <script src="breakout/game.js"></script>
  <script src="breakout/breakout-js.js"></script>
  <script src="breakout/levels.js"></script>
  <script>
  Game.ready(function() {
    var game = Game.start('canvas', Breakout);
  });
  </script>

    <p>
        <a href="https://github.com/jakesgordon/javascript-breakout">Game from jakesgordon</a>
    </p>
    <p>
        <a href="/logout">Logout</a>
    </p>
</body> 
</html>
