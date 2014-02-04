public class relatedlisttag1cls {
public id tid {get;set;}
public relatedlisttag1cls(){
tid=apexpages.currentpage().getparameters().get('id');

}
}