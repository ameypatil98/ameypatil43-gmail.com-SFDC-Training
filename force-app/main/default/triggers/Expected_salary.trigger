trigger Expected_salary on Candidate_Yourname__c (before insert) {
       Custom_trigger__c switchVar = Custom_trigger__c.getInstance('Expected_salary');
       if(switchVar != NULL && 'False'.equalsIgnorecase(String.valueOf(switchVar.Active__c)))   { 
           return;
    }
    for(Candidate_Yourname__c  Obj : Trigger.new)
    {
        
        if(Obj.Expected_Salary__c == null)
        {
            Obj.addError('Expected Salary field is missing');
        }
   }

}