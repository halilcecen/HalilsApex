public class WeekdaysEnum {
    public enum weekdays {Monday, Tuesday, Wednsday, Thursday, Friday } 
    public enum weekenddays {Saturday,Sunday}
    
    
    public static void TestEnums(weekdays wd , weekenddays we) {

        system.debug('Weekday enum values: ' + weekdays.values());
        string DayName= wd.name();
        system.debug('The Name of Day ==> ' + DayName);
        integer DayOrd = wd.ordinal();
        system.debug('Week day ordinal ==> ' + DayOrd);

        switch on wd {
            when Monday {
                system.debug('The day is Monday.');
            }
            when Tuesday {
                system.debug('The day is Tuesday');
            }
            when Wednsday {
                system.debug('The day is Wednsday.');
            }
            when Thursday{
                system.debug('The day is Thursday');
            }
            when Friday {
                system.debug('The day is Friday.');
            }
        }
    }
}

