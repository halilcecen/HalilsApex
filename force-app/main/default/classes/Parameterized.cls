public  class Parameterized {
    public static void practice() {
set<integer> mySet= new set<integer>{10,20,30,40,50};
for (integer var : mySet) {
    system.debug(var);
}



set<string> setStr = new set<string> {'x','z','y', 'a','b','c'};
        
for (string eachStr : setStr) {
    system.debug(eachStr);
}
}
public static void checkpoint1() {
set<integer> setInt = new set<integer> {10,20,30};

for (integer eachStr : setInt) {
    system.debug(eachStr);
}
}
public static void practice2(){
map<string, string> countryCurrencies = new map<string, string>();
countryCurrencies.put('France', 'EUR');
countryCurrencies.put('Australia', 'AUD');
countryCurrencies.put('Iraq', 'IQD');
countryCurrencies.put('United States', 'USD');
countryCurrencies.put('usa', 'USD');
countryCurrencies.put('usa', 'US Dollar');
countryCurrencies.put('USA', 'US Dollar');
countryCurrencies.put('France', 'EURoooo');
system.debug(countryCurrencies);

//print following
    //Country is France, its currency is EUR

//we don't have direct for each for map.
//1. get set<key> using keyset method
set<string> allCountries = countryCurrencies.keySet();
for (string eachCountry : allCountries) {
    string printStr = 'Country is ' + eachCountry;
    //system.debug(printStr);
    string eachCurr = countryCurrencies.get(eachCountry);
    printStr += ', its currency is ' + eachCurr;
    system.debug(printStr);
}
}
public static void practice3() {
    map<string, list<string>> mapTeamCandidates = new map<string, list<string>>();
    //key   --> value
    //IT    --> {David, Brian}
    //Sales --> {Marc, Mark}
    //Service --> {John, Joe, Peter}
    List<string> itTeam = new list<string> {'David', 'Brian'};
    List<string> salesTeam = new list<string> {'Marc', 'Mark'};
    List<string> serviceTeam = new list<string> {'John', 'Joe', 'Peter'};

    mapTeamCandidates.put('IT', itTeam);
    mapTeamCandidates.put('Sales', salesTeam);
    mapTeamCandidates.put('Service', serviceTeam);

    list<list<string>> listValue = mapTeamCandidates.values();//values will retrun list of values

    set<string> allTeams = mapTeamCandidates.keySet();
    for (string eachTeam : allTeams) {
        list<string> eachTeamCandidate = mapTeamCandidates.get(eachTeam);
        system.debug('team name ' + eachTeam);
        system.debug('--> team members ==> ' + eachTeamCandidate);
    }
}







}
