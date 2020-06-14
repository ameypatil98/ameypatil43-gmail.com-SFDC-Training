trigger EmailtoManager on Job_Yourname__c (before insert, after update) {
  List<Messaging.SingleEmailMessage> mails =
  new List<Messaging.SingleEmailMessage>();
    for(Job_Yourname__c  Obj : Trigger.new)
    {
        if(Obj.Hired_Applicants__c == Obj.Number_of_Positions__c)
        {
              Messaging.SingleEmailMessage mail =  new Messaging.SingleEmailMessage();
              List<String> sendTo = new List<String>();
              sendTo.add(Obj.Manager__c);
              mail.setToAddresses(sendTo);
              mail.setSubject('Hiring Information');
              String body = 'All the required candidate has been hired for this job on ' + Obj.LastModifiedDate;
              mail.setHtmlBody(body);
              mails.add(mail);
              Messaging.sendEmail(mails);
        }
   }
}