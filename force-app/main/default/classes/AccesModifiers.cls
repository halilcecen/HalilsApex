public class AccesModifiers{
    //public is accessmodifier for CLASS Variable.
    public string var1; // Class variable
    private string var2;// it is private variable, which is accessible ONLY within the  CLASS.
    string var3;        //if we don't write anything, it is PRIVATE

    public void show(){
        system.debug('var1 is ' + var1);
        var2 = 'it can assigned value from here, because it is private';
        system.debug('var 2 is ' + var2);
    }

    public string getVar2(){
        return var2;
    }
}