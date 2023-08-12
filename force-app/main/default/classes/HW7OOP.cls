public class HW7OOP {
   String firstName;
   string lastName;
   integer age;
   string firstName2;
   string lastName2;
   integer age4;
    
   public void accept(string fName, string lName,integer age2 ){
      firstName=fName;
      lastName=lName;
      age=age2;
   } 
   public void accept2(string fName2, string lName2,integer age3 ){
      
      firstName2=fName2;
      lastName2=lName2;
      age4=age3;
   }

   public string getName(){

    return firstName+' '+lastName;

   }
  
   public integer getAge(){

    return age;

   }
   public string getName2(){

      return firstName2+' '+lastName2;
  
     }
    
     public integer getAge2(){
  
      return age4;
  
  
     }

}
   
   