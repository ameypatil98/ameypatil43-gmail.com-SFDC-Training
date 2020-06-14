function myfunction(desid, salid) {
         var desc = document.getElementById(desid).value;
         var salary = document.getElementById(salid).value;
         if(desc == ''){
                alert('Please Enter Description');
         }
         else if(salary == ''){
                alert('Please Enter Salary');
         }
         else
         {
            alert('Successful');
            insertMe();        
         }
}