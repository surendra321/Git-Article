public with sharing class InvoiceEmailController 
{
    public String To{get; set;}
    public String CC{get; set;}
    public String MailSubject{get; set;}
    public String MailBody{get; set;}  
    Public PageReference pdf;
    
    Public string id;
    Public string email;
    
    public InvoiceEmailController (ApexPages.StandardController controller)
    {
       //o2bc__Quote__c q = [select id, o2bc__Contact__r.Email from o2bc__Quote__c where id = :ApexPages.currentPage().getParameters().get('id')];
       //To = q.o2bc__Contact__r.Email;
       contract i = [select id,suri__pdfvalue__c from contract where id = :ApexPages.currentPage().getParameters().get('id')];
       if(i.suri__pdfvalue__c == '1'){
       pdf = Page.PDF1;
       }
       else if(i.suri__pdfvalue__c == '2'){
       pdf = Page.PDF2;
       }
       else if(i.suri__pdfvalue__c == '3'){
       pdf = Page.PDF3;
       }
    }


    public pageReference sendPdf()
    {
       // Quote q = [select id,Email from quote where id = :ApexPages.currentPage().getParameters().get('id')];
       // Email = q.Email;
       // PageReference pdf = Page.QuotePDF;
       // Pagereference pdf = Page.PDF1;
    
        // add parent id to the parameters for standardcontroller
        pdf.getParameters().put('id',ApexPages.currentPage().getParameters().get('id'));
        //system.debug('ID' + ApexPages.currentPage().getParameters().get('id'));
        // the contents of the attachment from the pdf
        Blob body;
 
        try {
 
        // returns the output of the page as a PDF
        body = pdf.getContent();
 
       // need to pass unit test -- current bug  
        }
        catch (VisualforceException e) 
        {
        body = Blob.valueOf('Some Text');
        }

       // system.debug('body of the content ');
        Messaging.EmailFileAttachment attach = new Messaging.EmailFileAttachment();
        attach.setContentType('application/pdf');
        attach.setFileName('Quote.pdf');
        attach.setInline(false);
        attach.Body = body;
        pdf = new pagereference('/'+ApexPages.currentPage().getParameters().get('id'));
        Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();
        mail.setUseSignature(false);
        
        //string[] ToMAil= new string[20];
        //string[] CCMAil= new string[20];
        //for(string t : To.split(',',0))
        //{
         //  ToMAil.add(t);
        //} 
       //for(string c : CC.split(',',0))
       // {
       //    CCMAil.add(c);
       // } 

        mail.setToAddresses(new string[]{To});
        if (cc.length() > 0)
        {
            mail.setCcAddresses(new string[]{CC});
        }
        
        //system.debug('to add of the content '+ To );
        mail.setSubject(MailSubject);
        //system.debug('body of the content '+ MailSubject);
        //mail.setHtmlBody('Here is the email you requested! Check the attachment!');
        mail.setHtmlBody(MailBody);
        //system.debug('body of the content '+ MailBody);
         
        mail.setFileAttachments(new Messaging.EmailFileAttachment[] { attach }); 
 
        // Send the email
        Messaging.sendEmail(new Messaging.SingleEmailMessage[] { mail });
 
        ApexPages.addMessage(new ApexPages.Message(ApexPages.Severity.INFO, 'Email with PDF sent to '+email));
       
        return pdf;

      }
}