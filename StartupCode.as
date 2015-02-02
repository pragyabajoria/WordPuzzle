checkbutton.addEventListener(MouseEvent.CLICK, function(ev) {
  var enteredString : String = typedWord.text;
  msg.text = WordPuzzle.checkit(enteredString);
});

solnbutton.addEventListener(MouseEvent.CLICK, function(ev) {
  solutionbox.text = WordPuzzle.showSolution();
});

var format:TextFormat = new TextFormat();
format.size = 16;
format.color = '000000';
msg.defaultTextFormat = format;
solutionbox.defaultTextFormat = format;
