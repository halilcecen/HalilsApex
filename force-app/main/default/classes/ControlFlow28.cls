public class ControlFlow28 {
    public static void practice(){
        String str1 = 'California';
        string str2 ='Texas';
        string str3 = 'Florida';
        
        integer a= str1.length();
        integer b= str2.length();
        integer c= str3.length();
        
        
        If(a<b&&a<c){
            System.debug(str1 + ' ' + 'is shortest one');
        }
        else if (b<a&&b<c){
            System.debug(str2 +  ' ' + 'is shortest one');
        }
        else{
            System.debug(str3 + ' ' +  'is shortest one');   
        }
        
        
        if ((b < a && a < c) || (c < a && a < b)){
            System.debug(str1 + ' ' + 'is middle one');
        }
        else if ((a < b && b < c) || (c < b && b < a)){
            System.debug(str2 +  ' ' + 'is middle one');
        }
        else{
            System.debug(str3 + ' ' +  'is middle one');   
        }
        
        
        If(a>b&&a>c){
            System.debug(str1 + ' ' + 'is longest one');
        }
        else if (b>a&&b>c){
            System.debug(str2 + ' ' +  'is longest one');
        }
        else{
            System.debug(str3 +  ' ' + 'is longest one');   
        }
        
        
        
    }
    
}