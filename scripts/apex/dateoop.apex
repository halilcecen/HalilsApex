//Account AC1= [select id,name from Account WHERE name='Google' limit 1];
//AsyncTraining.AccountName(AC1.ID);

//InsertAccountAndUser.performAction2();
CreateContactAndUser.TestIU('Cecen');

List<contact> allContacts = [select id, name, phone from contact where phone != null];

ContactUpdateQueueable cq = new ContactUpdateQueueable(allContacts);
system.enqueueJob(cq);


List<Account> AccByContact =[select accountid from contact group by accountid ];

AccountUpdateQueueable qc = new ContactUpdateQueueable(AccByContact);
System.enqueueJob(qc);
   
   
   string crn = '0 0 13 * * ?';
ScheduleAccountUpdate su = new ScheduleAccountUpdate();

id jobid = system.schedule('AccountUpdateCron', crn, su);
system.debug(jobid);

string xyz = '0 0 12 * * ?';
SchedulableTraining st = new SchedulableTraining();

id jobid = system.schedule('ScheduleTraning', xyz, st);
system.debug(jobid);