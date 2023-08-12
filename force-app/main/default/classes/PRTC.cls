public class PRTC	 {
    
    public static void practice3(){
        
        
        string  Name1 = 'Ali';
        string  Name2 = 'Dave';
        string  Name3 = 'Samantha';
        string Userinput1 = Name1;
        string Userinput2 = Name2;
        string Userinput3 = Name3;
        
        
        string LastFour1 = (userinput1.length() <=4 ? userinput1 : userinput1.substring(userinput1.length()-4));
        string LastFour2 = (userinput2.length() <=4 ? userinput2 : userinput2.substring(userinput2.length()-4));
        string LastFour3 = (userinput3.length() <=4 ? userinput3 : userinput3.substring(userinput3.length()-4));
        
        
        System.debug('User input name: ' + userinput1);
        System.debug('Last four letter ' + LastFour1);
        
        System.debug('User input name: ' + userinput2);
        System.debug('Last four letter ' + LastFour2);
        
        System.debug('User input name: ' + userinput3);
        System.debug('Last four letter ' + LastFour3);
        
        
    }
}