public with sharing class EventController {
    @AuraEnabled(cacheable=true)
    public static List<Event> getEvents() {
        return [SELECT Id, Subject, StartDateTime, IsAllDayEvent, EndDateTime 
                FROM Event 
                WITH SECURITY_ENFORCED
                ORDER BY CreatedDate DESC
                LIMIT 100];
    }
}