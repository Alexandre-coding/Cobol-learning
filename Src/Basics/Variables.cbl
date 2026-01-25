      
       IDENTIFICATION DIVISION. 
       PROGRAM-ID. Variables.
       author. Alexandre.
      
      *-----------------------------------------------------------------

       ENVIRONMENT DIVISION. 
      
      *-----------------------------------------------------------------

       DATA DIVISION. 
       WORKING-STORAGE SECTION. 
      
       01 Student.
           05 Name pic x(10) value "Joseph".
           05 Surname pic x(10) value "Alpha".
           05 Identifiant pic 9(10) value 1234567891.
       
       01 StudentV2 redefines Student.
           05 Name pic x(10).
           05 Surname pic x(10).
           05 Identifiant pic x(10).


       01 Teacher.
           05 Name pic x(10) value "Arthur".
           05 Surname pic x(10) value "Beta".
           05 Identifiant pic 9(10) value 1122334455.
           05 Salaire pic ZZBZZ9.99 value 2123.20.
       
       

       01 Inscription pic xx value spaces.

      

       01 Employee.
           05 Identity.
              10 Prénom pic x(10) value "Alexandre".
              10 Nom pic x(10) value "Lenglart".
           05 Birthdate.
              10 Jour pic 99 value 18.
              10 filler pic x value "/".
              10 Mois pic 99 value 06.
              10 filler pic x value "/".
              10 Annee pic 9999 value 1998.

      
      *-----------------------------------------------------------------

       PROCEDURE DIVISION. 

           display "Student"
           Display "Name : " Name of Student 
           Display "Surname : " Surname of Student 
           Display "ID : " Identifiant of Student
           display "Student new ID : " Identifiant of StudentV2
           DISPLAY "Studant inscription : " Inscription
           
           display " ".
           display "*-------------------------------".
           display " ".

           display "Teacher"
           Display "Name : " Name of Teacher 
           Display "Surname : " Surname of Teacher 
           display "ID : " Identifiant of Teacher 
           DISPLAY "monthly income : " Salaire of Teacher.
           
           display " ".
           display "*-------------------------------".
           display " ".
           
           display "Employee :".
           display "Identity : " Identity.
           display "Birthdate : " Birthdate .

           stop run.
