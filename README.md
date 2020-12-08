# Royal_Family_Natural_Language_First_Order_Logic_Prolog
This Prolog project determines the line of succession based on the succession rules in United Kingdom.  
The candicates are the four offsprings of Queen elizabeth: Prince Charles, Princess Snn, Prince Sndrew and Prince Edward (listed in the order of birth).  


## Old Succession Rule
The old succession rule states that the throne is passed down along the male line according to the order of birth before the consideration along the female line – similarly according to the order of birth.  
The corresponding Prolog clause is:  
```prolog
rank_higher(X, Y):- male(X), female(Y); male(X), male(Y), elder(X, Y); female(X), female(Y), elder(X, Y).
```
The line of succession determined is:  
<img src = "https://github.com/StephanieMussi/Royal_Family_Natural_Language_First_Order_Logic_Prolog/blob/main/Figures/old.png" width = 550 height = 95>  

## New Succession Rule  
The new succession rule states that the throne is now passed down according to the order of birth irrespective of gender.  
The corresponding Prolog clause is:  
```prolog
rank_higher(X, Y):- elder(X, Y).
```  
The line of succession determined is:  
<img src = "https://github.com/StephanieMussi/Royal_Family_Natural_Language_First_Order_Logic_Prolog/blob/main/Figures/new.png" width = 550 height = 95>   
