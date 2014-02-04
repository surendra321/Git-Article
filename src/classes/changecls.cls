//webservies for account class(field is rating)
global class changecls{
  
    webservice static void changeRating(string accid){
        System.debug('----------Method is called-------------');
        Account acc = [Select id, rating from Account where id=:accid];
        acc.rating = 'Hot';
        update acc;
    }

}