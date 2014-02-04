trigger acctrg10 on Account (before insert, before update) {    
    Account ac=trigger.new[0];    
    if(ac.BillingCity!=null){        
      if( ac.ShippingCity==null || ac.ShippingCity!=null ){
            ac.ShippingCity=ac.BillingCity;    
       }
    }
    
    if(ac.BillingCountry!=null){        
        if( ac.ShippingCountry==null || ac.ShippingCountry!=null ){
                ac.ShippingCountry=ac.BillingCountry;
        }
    }
    
    if(ac.BillingPostalCode!=null ){        
        if( ac.ShippingPostalCode==null || ac.ShippingPostalCode!=null ){
                ac.ShippingPostalCode=ac.BillingPostalCode;
        }
    }
    
    if(ac.BillingState!=null){        
        if( ac.ShippingState==null || ac.ShippingState!=null ){
                ac.ShippingState=ac.BillingState;
        }
    }
    
    if(ac.BillingStreet!=null){        
        if( ac.ShippingStreet==null  || ac.ShippingStreet!=null){
                ac.ShippingStreet=ac.BillingStreet;
        }
    }    
}