public class MapDemo {
    public static void practice1() {
        // key => integer
        // value => string
        map<integer, string> mapRollNoStudent = new map<integer, string>();
        mapRollNoStudent.put(1011,'Amish');
        mapRollNoStudent.put(1055, 'Punit');
        mapRollNoStudent.put(80, 'Bro');
        system.debug(mapRollNoStudent);
    }
    public static void currencyMap(){
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

        //we want to get currency of France
        string franceCurr = countryCurrencies.get('France');
        system.debug(franceCurr);

        set<string> allCountries = countryCurrencies.keySet();
        system.debug('all countries ' + allCountries);
        list<string> allCurrencies = countryCurrencies.values();
        system.debug('all currencies are ' + allCurrencies);

    }
    public static void assignment6() {
        Map<string, decimal> bakeryProducts = new map<string, decimal>();
        bakeryProducts.put('Cake', 5.5);
        bakeryProducts.put('Cookies', 10);
        bakeryProducts.put('Chocolate Roll', 8.88);
        system.debug(bakeryProducts);
    }

    public static void checkpoint3(){
        list<string> stud1 = new list<string>{'Harry', 'Ron'};
        list<string> stud2 = new list<string>{'Draco', 'Scorpius'};
        list<string> stud3 = new list<string>{'Luna', 'Padma'};
        list<string> stud4 = new list<string>{'Cedric', 'Justin'};
        //key is string datatype
        //value is list of string datatype
        Map< string, list<string>> houseStudent = new map<string, list<string>>();
        houseStudent.put('Griffindor', stud1);
        houseStudent.put('Slytherin', stud2);
        houseStudent.put('Ravenclaw', stud3);
        houseStudent.put('Hufflepuff', stud4);
        system.debug(houseStudent);

        list<string> listGriffindor = houseStudent.get('Griffindor');

        list<list<string>> harryValues = houseStudent.values();
        system.debug('values of harrypotter map is ' + harryValues);
    }

    public static void monthName() {
        

        Map<integer, string> monthMap = new map<integer, string>();
        monthMap.put(1, 'January');
        monthMap.put(2, 'February');
        monthMap.put(3, 'March');

        monthMap.put(4, 'April');
        monthMap.put(5, 'May');
        monthMap.put(6, 'June');

        monthMap.put(7, 'July');
        monthMap.put(8, 'August');
        monthMap.put(9, 'September');

        monthMap.put(10, 'October');
        monthMap.put(11, 'November');
        monthMap.put(12, 'December');

        integer m = 5;
        //.get(key)
        string mValue = monthMap.get(m);//this will return value
        system.debug('mValue is ' + mValue);

        string mValue2 = monthMap.get(10);
        system.debug('mvalue2 is ' + mValue2);

        boolean monthExists = monthMap.containsKey(0);
        if (monthExists) {
            system.debug('get(0) ' + monthMap.get(0));
        } else {
            system.debug('no such month exists. Please!!!!!');
        }
        
        //keyset -> set<key_datatype>
        //keys are unique like set
        set<integer> monthMapKeys = monthMap.keySet();
        system.debug('keys of monthMapKeys ==> ' + monthMapKeys);

        //values() method -> list<value datatype>
        list<string> allMonths = monthMap.values();
        system.debug('all months ====> ' + allMonths);
    }
    public static void country(){ 
    map<string, string> countryPre = new map<string, string>();
    countryPre.put('Azerbaijan', 'Aliyev');
    countryPre.put('India', 'Murmu');
    countryPre.put('Pakistan', 'Alvi');
    countryPre.put('USA', 'Biden');
    system.debug(countryPre);
    string country='Turkiye';
boolean countryEx = countryPre.containsKey(country);
        if (countryEx) {
            system.debug('get(country) is ' + countryPre.get(country));
        } else {
            system.debug('There is not Turkiye');
        }


    }


}


