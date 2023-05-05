public with sharing class AccountListController {
    @AuraEnabled(cacheable=true)
    public static List<Account>getAccountList(){
        List<Account> accountList = [SELECT Id, Name, Type, Phone, Income__C FROM Account];
    return accountList;
    }
}