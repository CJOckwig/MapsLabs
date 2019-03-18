
//import java.io.File;
//import java.io.IOException;
//import java.util.Map;
//import java.util.TreeMap;
//import java.util.Scanner;
//import static java.lang.System.*;
//import java.util.ArrayList;
//class Markov {
//  private String word;
//  private TreeMap<String, ArrayList<String>> mappy;
//  Markov() {
//    mappy=new TreeMap<String, ArrayList<String>>();
//  }
//  public Markov(File fileguy) {
//    mappy=new TreeMap<String, ArrayList<String>>();
//    try {
//      Scanner f=new Scanner(fileguy);
//      String holder=f.next();
//      while (f.hasNext()) {
//        String holder2=f.next();
//        if (mappy.get(holder)==null) {
//          ArrayList fol=new ArrayList<String>();
//          mappy.put(holder, fol.add(holder2));
//        } else {
//        }
//        holder=holder2;
//      }
//    }
//    catch(Exception e) {
//      println(e);
//    }
//  }
//  String toString() {
//    return ""+mappy;
//  }
//}

//void setup() {
//  MarkovChain mc=new MarkovChain();
//  String [] str=loadStrings("data/oneFish.txt");
//  String allText=join(str, " ");
//  String [] cleanText=allText.replaceAll("[^a-zA-Z ]", "").toLowerCase().split("\\s+");//removes punct before splitting
//  mc.trainMap(cleanText);
//  for (String s : cleanText) {
//    mc.generateText(s);
//    //println(mc.generateText(s));
//    println(mc.generateText2(2));
//  }
//}

interface Markov {
  void trainMap(String [] s);
  String generateText(String s);
}


import java.util.List;
import java.util.ArrayList;
import java.util.Map;
import java.util.HashMap;

class MarkovChain implements Markov {
  List <String> wordList;
  Map<String, ArrayList<String>> myMap;

  public MarkovChain() {
    wordList=new ArrayList<String>();
    myMap=new HashMap<String, ArrayList<String>>();
  }

  void trainMap(String [] str) {
   for(int i = 0;i<str.length;i++){
    if(myMap.get(str[i])==null){
      myMap.put(str[i],new ArrayList<String>());
    }
    myMap.get(str[1]).add(str[i++]);
   }
  }
  String generateText(String str) {

    
    String= hel="";
    int randomIndex=0;
    int randIn=0;
    if(myMap.containsKey(
    
    return
  }
  
  
//generates num grams...so 1 is one word followed by another
  String generateText2(int num) {
  


return "";
  }


  int getRandomIndex(String s) {
    int randomIndex=(int)(Math.random()*myMap.get(s).size());
    return randomIndex;
  }
  void printMap() {
    println(myMap);
  }
  public String toString() {
    return ""+wordList;
  }
}
