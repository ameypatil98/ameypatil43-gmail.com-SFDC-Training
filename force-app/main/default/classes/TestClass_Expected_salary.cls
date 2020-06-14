@isTest
public class TestClass_Expected_salary{
	static testmethod void myTest()
    {
         Candidate_Yourname__c obj = new  Candidate_Yourname__c ();
         obj.Salutation__c = 'Mr.';
         obj.First_Name__c= 'Ashwini';
         obj.Last_Name__c= 'Patil';
         obj.Email__c='ameypatil43@gmail.com';
         obj.Country__c='India';
         obj.State__c='Gujrat';
         obj.Status__c='Applied';
         obj.Expected_Salary__c= null;
         obj.Job__c='a012x000008mSDk';
        try{
         	insert obj;   
        }
        catch(Exception e){
            System.debug(e);
        }
  		             
             
    }
}