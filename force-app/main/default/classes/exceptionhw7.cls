public class exceptionhw7 {
public static void test8() {
try {String myString;
Integer x = myString.length();
System.debug(x);
}
catch (Exception NullException ) {
system.debug('ERROR! There is a NULL problem!');
}
try { 
list<string> car= new list<string>{'Mercedes','Audi','BMW','Lexus','Acura'};
system.debug('The code works very well! Her new car ==>'+ car[3]);
}
catch (Exception ListException ) {
system.debug('ERROR! There is no avaible car for her!');

}
try {
    Account dc = new Account(Name='Asus INC.');
insert dc;
system.debug(dc);
system.debug('The new account has created succesfully!');

    }
 catch (Exception DmlException) {
    system.debug('Sorry! We couldnt create your account. Please contact your System Admin for more assist.');
}
try {
    for(integer day=1; day<366; day++){
        insert new Account(Name='New Test Account'); 
        system.debug('The test has worked efficiently!');
        }
} catch (Exception LimitException) {
    system.debug('We are sorry. The code has failed, We will work on it immediately!');
}
System.debug('Code has completed!');
}
}

