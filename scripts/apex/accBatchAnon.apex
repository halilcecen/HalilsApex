//BatchAccountUpdate ba = new BatchAccountUpdate();
//Database.executeBatch(ba, 10);
 
 //BatchOppUpdate1 od = new BatchOppUpdate1();
// Database.executeBatch(od, 800);

QueueableExample1 qe1 = new QueueableExample1();
Id jobIdQ = System.enqueueJob(qe1); //we can enqueue only those classes which are implementing queueable