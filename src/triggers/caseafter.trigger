trigger caseafter on Case (after insert) {
    case c =[select id, roundcheck__c from case where id=:trigger.new[0].id limit 1];
    c.roundcheck__c = 5;
    update c;
}