trigger ApplicationDate on Candidate_Yourname__c (before update,before insert) {
    for(Candidate_Yourname__c  Obj : Trigger.new)
    {
         if (Obj.Application_Date__c!=Obj.CreatedDate)
             Obj.Application_Date__c= Obj.CreatedDate;
    }
}