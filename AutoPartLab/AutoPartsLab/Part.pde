

class Part implements Comparable<Part>
{
  private String make, model;
  private String theRest="";
  private int year;

  Part(String line) 
  {
    String[] list = line.split(" ");
    make=list[list.length-3];
    model=list[list.length-2];
    year=parseInt(list[list.length-1]);
    for (int x=0; x<list.length-3; x++) {
      theRest+=list[x]+" ";
    }
  }
  int compareTo( Part other )
  {
    if(this.make.compareTo(other.make)>0){
     return 1; 
    }
     if(this.make.compareTo(other.make)<0){
     return -1; 
    }


    if(this.model.compareTo(other.model)>0){
     return 1; 
    }
    if(this.model.compareTo(other.model)<0){
     return -1; 
    }
    if(this.theRest.compareTo(other.theRest)<0){
     return -1; 
    }
    if(this.theRest.compareTo(other.theRest)>0){
     return 1; 
    }

    else return 0;
    //if (this.make.compareTo(other.make)!=0) {
    //  return make.compareTo(other.make);
    //}
    //if (this.model.compareTo(other.make)!=0) {
    //  return make.compareTo(other.model);
    //}

    //if (this.year>other.year) {
    //  return 1;
    //}
    //if(year==other.year){
    // return 0; 
    //}
    //return -1;
  }

  String toString()
  {
    return make+" "+model+" "+year+" "+theRest;

  }
}
