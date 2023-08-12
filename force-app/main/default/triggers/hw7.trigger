trigger hw7 on Account (before insert, after insert, before update, after update) {
/*
if(Trigger.isBefore && Trigger.isUpdate){
for(Account acNew: Trigger.new){
Account acOld = Trigger.oldMap.get(acNew.Id);
if (acOld.Rating != acNew.Rating) {
acNew.Description='Rating Updated, old Rating was => ' +acOld.Rating +' New Rating is => '+acNew.Rating;
}
if (acOld.Industry != acNew.Industry) {
acNew.Description='Industry Updated, old Industry was => ' +acOld.Industry +' New Industry is => '+acNew.Industry;
}
if (acOld.Ownership != acNew.Ownership) {
acNew.Description='Ownership Updated, old Ownership was => ' +acOld.Ownership +' New Ownership is => '+acNew.Ownership;
}
if(acOld.Rating != acNew.Rating && acOld.Industry != acNew.Industry &&acOld.Ownership != acNew.Ownership ){
acNew.Description= 'Industry Updated, old Industry was => ' +acOld.Industry +' New Industry is => '+acNew.Industry+ 
' Ownership Updated, old Ownership was => ' +acOld.Ownership +'|| New Ownership is => '+acNew.Ownership+'|| Rating Updated, old Rating was => ' 
+acOld.Rating +' New Rating is => '+acNew.Rating;

}
}

}*/

}
