public  class MethodsDemo {
    string classVar1;

   //public ---> access modifier
    //void   ---> return type
    //newMessage --> method name
    //(string msg)      --> parameters
        //string is datatype
        //msg is variable name we use inside METHOD
    public void newMessage(string msg){
        system.debug(msg);
    }

    public void printTwoMessage(string msg1, string msg2){
        //msg1, msg2 are called local variables.
        system.debug(msg1);
        system.debug(msg2);
    }
    
    public string returnNewMessage(string msg1, string msg2){
        string result = '';
        result = msg1 + msg2;
        return result;
    }
    public integer returnTotalLength(string msg1, string msg2){
        integer i = msg1.length() + msg2.length();
        return i;
        //we want to return total length of msg1+msgw
   
   
   
   
    }
}