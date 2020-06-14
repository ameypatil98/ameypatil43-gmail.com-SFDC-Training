public class CandidateInsert {
    public Candidate_Yourname__c CName {get; set;}
    public CandidateInsert()
    { 
         Id id = ApexPages.currentPage().getParameters().get('id');
         CName= (id==null)?new Candidate_Yourname__c():[select Salutation__c,First_Name__c,Last_Name__c,DOB__c,Email__c,Country__c,State__c,Status__c,Expected_Salary__c,Job__c from Candidate_Yourname__c where id=:id];  
    }
    public PageReference insertMe(){
        upsert(CName);
        return null;
    }

}