
Scenario: Guest visits & person recognized

Given atleast one person is recognized

When one person is recognized 
And person is accepted
And optional notification is on
Then notification is sent 
And notification is visible for user

When one person is recognized 
And person is accepted
And optional notification is off
Then notification is not sent 
And notification is not visible for user

When one person is recognized 
And person is not accepted
Then notification is sent 
And notification is visible for user

When more than one person is recognized 
And no person is accepted
Then notification is sent 
And notification is visible for user

When more than one person is recognized 
And atleast one person is accepted
And optional notification is off
Then notification is not sent 
And notification is not visible for user

When more than one person is recognized 
And atleast one person is accepted
And optional notification is on
Then notification is sent 
And notification is visible for user




Scenario: Message after user decision

Given user accepted or declined

When visitors are accepted 
And optional message is on
Then message is sent 

When visitors are accepted 
And optional message is off
Then message is not sent 

When visitors are not accepted 
Then message is sent 