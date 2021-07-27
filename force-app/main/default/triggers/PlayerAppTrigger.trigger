trigger PlayerAppTrigger on Player_Application__c (before insert, after insert, before update, after update) {
if(trigger.isBefore){
    if(trigger.isInsert){
 PlayerCardTriggerHandler  PCH = new PlayerCardTriggerHandler();
 PCH.validateRep(trigger.new);
       }  
    }
    
  
}