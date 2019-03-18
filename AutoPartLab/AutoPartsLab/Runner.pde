void setup(){
  try{
//File help=new File("C:\\Users\\Caleb\\Desktop\\AutoPartLab\\AutoParts.dat");
  PartList part=new PartList(new File("C:\\Users\\Caleb\\Desktop\\AutoPartLab\\AutoParts.dat"));
  println(part);
}
  
  catch(Exception e){
   println(e); 
  }
}
