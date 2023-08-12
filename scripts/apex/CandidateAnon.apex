//static member belongs to class
Candidate.companyName = 'Salesforce';

Candidate c1 = new Candidate();
c1.name = 'Peter Parker';
c1.joiningYear = 2005;
c1.display();

Candidate c2 = new Candidate();
c2.name = 'Spiderman';
c2.joiningYear = 2006;
c2.display();


Candidate c3 = new Candidate();
c3.name = 'Tony';
c3.joiningYear = 2008;
c3.display();
c3.name = 'Tony Stark';

system.debug('-----');

Candidate.companyName = 'Stark';
c3.display();
c2.display();
c1.display();