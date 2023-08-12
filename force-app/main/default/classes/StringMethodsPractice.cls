public class StringMethodsPractice {
    public static void pactices(){
        
        string word = 'apex';
        system.debug(word.isAllLowerCase());
        system.debug(word.isAllUpperCase());
    word = 'APEX';
    system.debug(word.isAllLowerCase());
    system.debug(word.isAllUpperCase()); 
    string word2 = 'Apex';
        system.debug(word2.isAllLowerCase());
    system.debug(word2.isAllUpperCase()); 
    
        string pwd = 'ADMIN' ;
     boolean pwdUpperCase = pwd.isAllUpperCase();
        system.debug(pwdUppercase);
        system.debug(pwd.isAllLowerCase());  
        
        
        string ok = 'OKAY';
        String ok2 = 'OKAY';
            
            system.debug(ok.equals(ok2));
    }
}