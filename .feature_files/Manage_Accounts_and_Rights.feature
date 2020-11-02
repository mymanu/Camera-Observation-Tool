
Scenario: Button "Manage Accounts" is clicked

When the users has now (write) rights
Then an error message is send
And the Message is visible for the user
And the View Account dialog is shown

When the user has (write) rights
And he clicked delete account 
Then the Account state gets temporary safed 
And the user gets back to the "Manage Accounts" dialog

When the user has (write) rights
And he clicked add account 
Then an Account with basic rights is created 
And the user gets back to the "Manage Accounts" dialog

When the user has (write) rights
And he clicked view account rights 
And he clicked add rights
Then the Account state gets temporary safed 
And the user gets back to the "Manage Accounts" dialog

When the user has (write) rights
And he clicked view account rights 
And he clicked remove rights
Then the Account state gets temporary safed 
And the user gets back to the "Manage Accounts" dialog

When the user has (write) rights
And he clicked save configuration
Then all changes gets saved
And the View Account dialog is shown

When the user has (write) rights
And he clicked disregard changes
Then all changes gets returnt to there previous state
And the View Account dialog is shown