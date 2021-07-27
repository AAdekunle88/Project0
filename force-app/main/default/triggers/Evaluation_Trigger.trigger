trigger Evaluation_Trigger on Evaluation__c (after insert, after update) {
    
    if(trigger.isInsert){
         ETriggerHandler.updateCard();
    }
    
}