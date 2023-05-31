
public   with sharing class Getmainproductprice {
    @AuraEnabled(cacheable=true)
    public static List<Main_product__c> mainproductprice() {

List<Main_product__c>mainList=[select Name,Unit_Price__c,image__c,Id,(select Select_Product__c from CustomProducts__r) from Main_product__c  WITH SECURITY_ENFORCED ];
return mainList; 

    }
}