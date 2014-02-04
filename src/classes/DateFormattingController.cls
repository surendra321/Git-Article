public class DateFormattingController {

  Datetime myDateTime = datetime.newInstance(2010, 12, 31, 23, 59, 59);

  List<String> dateFormats = new List<String> {
     'dd.MM.yy HH:mm:ss',
     'MMM-dd-yyyy hh:mm a',
     'EEEEE dd MMMMM yyyy G',
     'E hh:mm:ss:SSS z',
     'zzzzz (Z), \'Day of the year:\' D' 
  };
   
  public DateTime getMyDateTime(){
    return myDateTime;
  }



  public List<String> getDateFormats(){
    return dateFormats;
  }
}