public class soqltest{
    public Static testMethod void main(){
        supplier__c s1=new supplier__c();
        s1.name='sarla';
        s1.status__c=20;
        s1.city__c='mumbai'; 
        s1.supplier_number__c='s1';
        
        supplier__c s2=new supplier__c();
        s2.name='uma';
        s2.status__c=10;
        s2.city__c='chennai';
        s2.supplier_number__c='s2'; 
        
        supplier__c s3=new supplier__c();
        s3.name='nehru';
        s3.status__c=30;
        s3.city__c='chennai'; 
        s3.supplier_number__c='s3';
        
        supplier__c s4=new supplier__c();
        s4.name='priya';
        s4.status__c=20;
        s4.city__c='mumbai'; 
        s4.supplier_number__c='s4';
        
        supplier__c s5=new supplier__c();
        s5.name='anand';
        s5.status__c=30;
        s5.city__c='delhi'; 
        s5.supplier_number__c='s5';
        
        list<Supplier__c> slist1=new list<supplier__c>{s1,s2,s3,s4,s5};
        insert slist1;
        
        part__c p1=new part__c();
        p1.name='nut';
        p1.color__c='red';
        p1.weight__c=12;
        p1.city__c='mumbai'; 
        p1.part_number__c='p1';
        
        part__c p2=new part__c();
        p2.name='bolt';
        p2.color__c='green';
        p2.weight__c=17;
        p2.city__c='chennai'; 
        p2.part_number__c='p2';
        
        part__c p3=new part__c();
        p3.name='screw';
        p3.color__c='blue';
        p3.weight__c=17;
        p3.city__c='bengaluru'; 
        p3.part_number__c='p3';
        
        part__c p4=new part__c();
        p4.name='screw';
        p4.color__c='red';
        p4.weight__c=14;
        p4.city__c='mumbai'; 
        p4.part_number__C='p4';
        
        part__c p5=new part__c();
        p5.name='cam';
        p5.color__c='blue';
        p5.weight__c=12;
        p5.city__c='chenai'; 
        p5.part_number__c='p5';
        
        part__c p6=new part__c();
        p6.name='cog';
        p6.color__c='red';
        p6.weight__c=19;
        p6.city__c='mumbai'; 
        p6.part_number__c='p6';
        
        
        list<part__c> plist1=new list<part__c>{p1,p2,p3,p4,p5,p6};
        insert plist1;       
        
        shipment__c sh1=new shipment__c();
        //sh1.supplier_number__c=s1.supplier_number__c;
       // sh1.part_number__c=p1.part_number__C;
        sh1.quntity__c=300;
        
        shipment__c sh2=new shipment__c();
        sh2.supplier_number__c=s1.supplier_number__c;
        sh2.part_number__c=p2.part_number__C;
        sh2.quntity__c=200;
        
        shipment__c sh3=new shipment__c();
        sh3.supplier_number__c=s1.supplier_number__c;
        sh3.part_number__c=p3.part_number__C;
        sh3.quntity__c=400;
        
        shipment__c sh4=new shipment__c();
        sh4.supplier_number__c=s1.supplier_number__c;
        sh4.part_number__c=p4.part_number__C;
        sh4.quntity__c=200;
        
        shipment__c sh5=new shipment__c();
        sh5.supplier_number__c=s1.supplier_number__c;
        sh5.part_number__c=p5.part_number__C;
        sh5.quntity__c=100;
        
        shipment__c sh6=new shipment__c();
        sh6.supplier_number__c=s1.supplier_number__c;
        sh6.part_number__c=p6.part_number__C;
        sh6.quntity__c=100;
        
        shipment__c sh7=new shipment__c();
        sh7.supplier_number__c=s2.supplier_number__c;
        sh7.part_number__c=p1.part_number__C;
        sh7.quntity__c=300;
        
        shipment__c sh8=new shipment__c();
        sh8.supplier_number__c=s2.supplier_number__c;
        sh8.part_number__c=p2.part_number__C;
        sh8.quntity__c=400;
        
        shipment__c sh9=new shipment__c();
        sh9.supplier_number__c=s3.supplier_number__c;
        sh9.part_number__c=p2.part_number__C;
        sh9.quntity__c=400;
        
        shipment__c sh10=new shipment__c();
        sh10.supplier_number__c=s4.supplier_number__c;
        sh10.part_number__c=p2.part_number__C;
        sh10.quntity__c=200;
        
        shipment__c sh11=new shipment__c();
        sh11.supplier_number__c=s4.supplier_number__c;
        sh11.part_number__c=p4.part_number__C;
        sh11.quntity__c=300;
        
        shipment__c sh12=new shipment__c();
        sh12.supplier_number__c=s4.supplier_number__c;
        sh12.part_number__c=p5.part_number__C;
        sh12.quntity__c=400;
       
       list<shipment__c> shlist1=new list<shipment__c>{sh1,sh2,sh3,sh4,sh5,sh6,sh7,sh8,sh9,sh10,sh11,sh12};
       insert shlist1;
       
        /*list<shipment__c> slist2=[select supplier_number__c,part_number__c,quntity__c from shipment__c];
        System.debug(slist2);*/
        
       }
  }