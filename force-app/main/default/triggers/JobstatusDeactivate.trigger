trigger JobstatusDeactivate on Job_Yourname__c (before insert,before update) {
    for(Job_Yourname__c  Obj : Trigger.new)
    {
        if(Obj.Hired_Applicants__c == Obj.Number_of_Positions__c)
        {
            Obj.Active__c=false;
        }
   }

}