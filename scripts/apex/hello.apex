try {
    Exceptionhw10 ST = new Exceptionhw10();
    ST.validateMarks(null);

} catch(Exceptionhw10.MarksException sme){
    system.debug('The Marks Exception: ' + sme);
}
 catch (Exception ex) {
    system.debug('Common Exception: ' + ex);
}