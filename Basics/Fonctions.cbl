       IDENTIFICATION DIVISION. 
       PROGRAM-ID. Boucles.
       AUTHOR. moi.

       DATA DIVISION. 
       WORKING-STORAGE SECTION. 
       
       01 i pic 99 value zero.
       01 String1 pic x(10) value 'Cobol'.
       01 String2 pic x(10) value SPACES .
       01 date-du-jour pic 9(10) value ZEROS .
       
       01 nbr1 pic 9 value 1.
       01 nbr2 pic 9 value 3.
       01 nbr3 pic 9 value 6.
       01 nbr4 pic 9 value 9.

       01 Min pic 9 value zero.
       01 Max pic 9 value zero.
       01 Somme pic 9 value zero.

       01 String3 pic x(5) value '99999'.
       01 ValString3 pic 99999 value zero.
       
       
       PROCEDURE DIVISION.
           
      *récupération de la date du jour sous la forme AAAAMMJJHHMMSS     
           move function current-date to date-du-jour.  
           
      *récupération de la taille dun texte
           compute i = function length(String1).
           inspect String1 tallying i for CHARACTERS BEFORE SPACE.
       

      *Fonction reverse, inverse le sens de la phrase
           move function REVERSE(String1) to String2.



      * Fonctions MIN/MAX et somme 
           compute min = function min (nbr1 nbr2 nbr3 nbr4 )
           compute max = function max (nbr1 nbr2 nbr3 nbr4 )
           compute somme = function sum (nbr1 nbr2 nbr3 nbr4 )


      * Conversion char - dec  (NUMVAL-C pour ignorer les espaces 
      * et signes de monnaie)
           compute ValString3 = function NUMVAL (String3).


      * Lower case et Upper case conversion
           move function LOWER-CASE (String1 ) to String2.
           move function upper-CASE (String1 ) to String2.
           

      * Autres fonctions de math
      * COS         : Cosinus
      * LOG         : logarithmique
      * LOG 10      : log base 10
      * MOD         : modulo renvoyant le reste d'une division
      * RANDOM      : generation nombre aleatoie entre 0 et 1 exclu
      * SIN         : Sinus
      * SQRT        : Racine carré
      * TAN         : Tangente


      * Pour pouvoir appeler des fonctions sans le mot clé FUNCTION 
      * devant il faut rajouter une ligne dans la configuration


      * environnement division.
      * configuration section.
      * repository.
      *    function as intrinsic.

      


           stop run.