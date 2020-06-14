public class Jobinsert {
    public Job_Yourname__c JName {get; set;}
    public Jobinsert()
    { 
         Id id = ApexPages.currentPage().getParameters().get('id');
         JName= (id==null)?new Job_Yourname__c():[select Description__c,Number_of_Positions__c,Expires_On__c,Active__c,Salary_Offered__c,Manager__c,Total_Applicants__c,Hired_Applicants__c,Job_Type__c,Required_Skills__c,Qualification_Required__c,Certification_Required__c from Job_Yourname__c where id=:id];  
    }
    public PageReference insertMe(){
        upsert(JName);
        return null;
    }
    
}