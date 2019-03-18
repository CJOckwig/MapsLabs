
import java.util.Map;
import java.util.TreeMap;
import java.util.Scanner;
import static java.lang.System.*;

class SpanishToEnglish
{
  private Map<String, String> pairs;

  SpanishToEnglish()
  {
    pairs=new TreeMap<String, String>();
  }

  void putEntry(String entry)
  {
    String[] list = entry.split(" ");
    if(list.length==2){
    String span=list[0];
    String eng=list[1];
    pairs.put(span, eng);
    }else {
      for(String s:list){
         print(translate(s)+" ");
      }
    }
  }

  String translate(String sent)
  {
    String translated= pairs.get(sent);
    return translated;
  }

  String toString()
  {
    return pairs.toString().replaceAll("\\,", "\n");
  }
}
