
import java.io.File;
import java.io.IOException;
import java.util.Map;
import java.util.TreeMap;
import java.util.Scanner;
import static java.lang.System.*;

class PartList
{
  Part partob;
  private TreeMap<Part, Integer> partsMap;
  PartList()
  { 
    partsMap=new TreeMap<Part, Integer>();
  }

  public PartList(File fileName)
  {
    this();
    partsMap=new TreeMap<Part, Integer>();
    try
    {
      Scanner scan = new Scanner(fileName);
      while (scan.hasNextLine()) 
      {
        String s=scan.nextLine();
        println(s);
        Part partob=new Part(s);
        if (partsMap.get(partob)==null) {
          partsMap.put(partob, 1);
        } else {
          partsMap.put(partob, partsMap.get(partob)+1);
        }
      }
    }

    catch( RuntimeException e )
    {
      out.println(e);
    }
    catch( Exception e )
    {
      out.println(e);
    }
  }

  public String toString()
  {
    String output=""+partsMap;
    for (Part p : partsMap.keySet()) {
      output+=p +" - "+ partsMap.get(p)+ "\n";
    }

    return ""+partsMap;
  }
}
