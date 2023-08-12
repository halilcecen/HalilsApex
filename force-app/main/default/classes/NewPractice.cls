public class NewPractice {
    public static void tekrar() {
        String str1 = 'California';
        string str2 ='Texas';
        string str3 = 'Florida';
        
        integer len1= str1.length();
        integer len2= str2.length();
        integer len3= str3.length();
        
        
        if((len1<len2) && (len1<len3)){
            System.debug (str1 + 'is shortest one');
            
            if((len3<len2) && (len3<len1)) 
                System.debug (str3 + 'is shortest one');
        }
        
        if((len2<len3) && (len2<len1)) {
            System.debug (str2 + '  is shortest one');
        }
    }
}