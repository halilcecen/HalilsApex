public class exceptionhw6 {
public static void test6(string FN) {
try {
if (FN.contains(' ')) {
system.debug('Final Output==>'+ FN);

}else {
list<string> nameL = FN.split(' ');
system.debug('____ Name list is ' + nameL);

    string AName = '';
    for (Integer i = 0; i < nameL.size() - 1; i++) {
        AName += nameL[i].substring(0,1).toUpperCase() + '. ';
}
AName += nameL[nameL.size() - 1];
system.debug('Final output: ' + AName);
}
} catch (NullPointerException NP) {
system.debug('You got ERROR!');
system.debug('MESSAGE==> ' + NP.getMessage());
} catch(Exception ex){
system.debug('You got ERROR!');
system.debug('MESSAGE==> ' + ex.getMessage());
}
}
}
//-------------------------------------------------------------------------------------------------------------------
string FN = 'Jhonny Depp';
exceptionhw6.test6(FN);
