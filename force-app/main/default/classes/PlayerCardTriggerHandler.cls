public with sharing class PlayerCardTriggerHandler {
    public void  validateRep(List<Player_Application__c> validateRep) {
    
        for(Player_Application__c checkPlayerRep: validateRep){
                    if (!checkPlayerRep.Agent__c && !checkPlayerRep.Under_18__c){
                        checkPlayerRep.addError('Stop!!');

                    }
                
                }
            }
        }
    
