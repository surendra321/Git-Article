public class sample3cls {

public String debugInfo {get; set;} {
    debugInfo = '';
    // All Incoming Headers
    debugInfo += '<h1>ALL INCOMING HEADERS</h1>';
    for (string key: ApexPages.currentPage().getHeaders().keySet()) {
        debugInfo += key + ' = ' + ApexPages.currentPage().getHeaders().get(key) + '<br />';
    }
}


}