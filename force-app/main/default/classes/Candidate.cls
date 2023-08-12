public class Candidate {
    //non-static
    public string name;
    public integer joiningYear;
    //static
    public static string companyName;
    public static integer count = 0;
    public integer num = 0;


    public void display(){
        system.debug('name is ' + name);
        system.debug('joining year is ' + joiningYear);
        //static variables are accessible inside non-static methods
        system.debug('company name in ' + companyName);
        count++;
        num++;
        system.debug('diplay method called count (TOTAL) => ' + count);
        system.debug('diplay method called count (instance) => ' + num);
        system.debug('--');

    }
    
}