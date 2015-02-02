package {

import flash.display.*;
import flash.events.*;
import flash.ui.Keyboard;
import flash.text.*;

public class WordPuzzle {
  //internal static var countBox:TextField = new TextField();
  internal static var msg:TextField = new TextField();
  internal static var solnArray:Array = new Array("haggis","bagpipes","kilts","whisky","burns","uk","gaelic","scots","pound");         internal static var wordCount:int;              
        
  public function WordPuzzle() {  

  }               
        
  public static function checkit( str : String ):String   {
    //Class method. Returns false for not done or true for okay.                    
    var i:int;
    var msg:String = "";
    for (i = 0; i < 9; i++) {                               
        if (solnArray[i] == str.toLowerCase())  {
            wordCount++;                    
            //countBox.text = "Word Count: " + wordCount.toString();                                        
            break;          
        }                       
    }                       
    if (i == 9) {                           
      msg = "Incorrect word. Please try again!";
    }
    else {
      msg = "Correct word!";                  
    }                       
    if (wordCount == 6) {                           
      msg = "YOU WIN.";
      showSolution();                 
    }                       
    return msg;
  }       
        
  public static function showSolution():String {
    var str:String = "The words are: ";
    var i:int;
    for (i = 0; i < 9; i++) {
      str +=  solnArray[i] + "\n";
    }
    return str;
  }
}
