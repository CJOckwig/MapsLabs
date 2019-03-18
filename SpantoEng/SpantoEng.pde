//maps lab 1
import java.io.File;
import java.io.IOException;
import java.util.Scanner;
import static java.lang.System.*;
SpanishToEnglish spang= new SpanishToEnglish();
void setup(){
  try{
    
    Scanner scan=new Scanner(new File("C:\\Users\\Caleb\\Desktop\\MapsLabs\\SpanEng"));
    while(scan.hasNextLine()==true){
      spang.putEntry(scan.nextLine());
    }

    println(spang);
  }catch(Exception e){
   println(e); 
  }
  
}
