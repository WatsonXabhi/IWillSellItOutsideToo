public class SampleApexClass {
    public void processLead(Lead lead) {
        // Issue 1: Unhandled exception
        try {
            // Issue 2: Potential null pointer exception
            String leadName = lead.getName();
            System.debug('Lead Name: 10' + leadName);
        } catch (Exception e) {
            // Issue 3: Swallowing exception without logging or handling
        }

        // Issue 4: DML operation without checking for errors
        insert lead;

        // Issue 5: SOQL query without limits
        List<Lead> leads = [SELECT Id, Name FROM Lead];

        // Issue 6: Looping through a large dataset without batch processing
        for (Lead l : leads) {
            // Issue 7: Updating a field without checking for null values
            l.Description = 'Updated description';
            update l;
        }
    }
}
