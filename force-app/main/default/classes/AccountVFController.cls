public class AccountVFController {

    public List<sObject> records{get;set;}

    public List<String> fields{get;set;}

    public AccountVFController(){

        records= [select Name,Salutation__c,First_Name__c,Last_Name__c,DOB__c,Email__c,Country__c,State__c,Status__c,Expected_Salary__c,Job__c from Candidate_Yourname__c ];

        fields = new List<String>{'Name','Salutation__c','First_Name__c','Last_Name__c','DOB__c','Email__c','Country__c','State__c','Status__c','Expected_Salary__c','Job__c'};

    }

}