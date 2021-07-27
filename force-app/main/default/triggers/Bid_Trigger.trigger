trigger Bid_Trigger on Official_Bid__c (before update, before insert) {
  if(trigger.isBefore){
      if(trigger.isInsert) {
			Official_BidHandler.deleteOldBids(trigger.new);
        }
      }
}