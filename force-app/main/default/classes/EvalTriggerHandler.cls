public with sharing class EvalTriggerHandler {
    
    public Static void updatePlayercard(List<Evaluation__c> triggernew) {

   List<Evaluation__c > playerName = new List<Evaluation__c >();

        for (Evaluation__c pId : triggernew){

            playerName.add(pId);

        }
    List<Evaluation__c> furtherEval = new List<Evaluation__c>();

        For(List <Evaluation__c> playerRating:[Select Name,  Total__c, Further_Evaluation__c from Evaluation__c ]){
         	
            for (Evaluation__c pRating : playerRating){
                
                if (pRating.Total__c >= 7.5){
                    
                    pRating.Further_Evaluation__c = true; 
                }
                
            }
            
        
           

        }
insert furtherEval;

    }

    }
