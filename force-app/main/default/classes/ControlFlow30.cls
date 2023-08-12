public class ControlFlow30 {
    public static void practice(){
        
        String str1 = 'Washington';
        string str2 ='Berlin';
        string str3 = 'Orlando';
        
        integer a= str1.length();
        integer b= str2.length();
        integer c= str3.length();
        
        If(a>b&&a>c){
            System.debug(str1 + ' ' + 'is the largest string');
        }
        else if (b>a&&b>c){
            System.debug(str2 + ' ' +  'is the largest string');
        }
        else{
            System.debug(str3 +  ' ' + 'is the largest stringe');   
        }
        
        
        
    }
}