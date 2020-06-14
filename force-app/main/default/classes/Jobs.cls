public class Jobs {

    List<Job_Yourname__c> job =[select Description__c,Number_of_Positions__c,Expires_On__c,Active__c,Salary_Offered__c,Job_Type__c,Required_Skills__c,Qualification_Required__c,Certification_Required__c,Manager__c from Job_Yourname__c];
    
    public List<Job_Yourname__c> getjob(){
    return job;
    }
    public List<sObject> records{get;set;}

    public List<String> fields{get;set;}

    public Jobs(){

        records= [Select Salutation__c,First_Name__c,Last_Name__c,DOB__c,Email__c,Country__c,State__c,Status__c,Expected_Salary__c,Application_Date__c FROM Candidate_Yourname__c];

        fields = new List<String>{'Salutation__c','First_Name__c','Last_Name__c','DOB__c','Email__c','Country__c','State__c','Status__c','Expected_Salary__c','Application_Date__c'};

    }
}