trigger Jobstatus on Job_Yourname__c (before delete) {
    for(Job_Yourname__c  Obj : Trigger.old)
    {
        if(Obj.Active__c == true)
        {
            Obj.addError('This Job is active and can not be deleted');
        }
   }

}