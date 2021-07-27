trigger Bid_Trigger on Official_Bid__c (after update) {
    
    Official_BidHandler.deleteOldBids();

}