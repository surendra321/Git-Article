trigger caseAutoCheck on case (after insert) {
     List<case> ls = new List<case>();
     for (case l : Trigger.new) {
         ls.add(new case(id = l.id));
     }
     //for(case las: ls){
     //}
     Database.DMLOptions dmo = new Database.DMLOptions();
     dmo.assignmentRuleHeader.useDefaultRule = true;
     Database.update(ls, dmo);
}