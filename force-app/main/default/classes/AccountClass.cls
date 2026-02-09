public Class AccountClass {
    @AuraEnabled
    public static List<Account> fetchAccountRecord() {
            List<Account> accList = [Select Id , Name , Rating , Phone From Account];
            return accList;
    }
    @AuraEnabled
    public static Account getRecord(String recordId){
        Account accList2 = [Select Id , Name , Phone , Rating From Account Where Id =: recordId];
        return accList2; //y d return type is account because we are fetching single record and not list of records
    }
}  