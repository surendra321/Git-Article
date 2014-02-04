Trigger autoforwardAccount on Account(after insert, after update)
{
    String UserName = UserInfo.getName();
    String orgName = UserInfo.getOrganizationName(); 
    List<PartnerNetworkConnection> connMap = new List<PartnerNetworkConnection>(
    [select Id, ConnectionStatus, ConnectionName from PartnerNetworkConnection where ConnectionStatus = 'Accepted']
    );
    System.debug('Size of connection map: '+connMap.size());
    List<PartnerNetworkRecordConnection> prncList = new List<PartnerNetworkRecordConnection>(); 
    for(Integer i =0; i< Trigger.size; i++)
    { 
        Account acc = Trigger.new[i];
        String acId = acc.Id;
        System.debug('Value of AccountId: '+acId);
        for(PartnerNetworkConnection network : connMap) 
        { 
            String cid = network.Id;
            String status = network.ConnectionStatus;
            String connName = network.ConnectionName; 
            String AccountName = acc.Name;
            System.debug('Connectin Details.......Cid:::'+cid+'Status:::'+Status+'ConnName:::'+connName+'AccountName:::'+AccountName);
            if(AccountName !=Null)
            {
                PartnerNetworkRecordConnection newrecord = new PartnerNetworkRecordConnection(); 
                newrecord.ConnectionId = cid;
                newrecord.LocalRecordId = acId;
                newrecord.SendClosedTasks = true;
                newrecord.SendOpenTasks = true;
                newrecord.SendEmails = true;
                System.debug('Inserting New Record'+newrecord);
                insert newrecord;
            }
         }
     }
 }