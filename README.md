Log in user with a secret token.

The implementation is very basic:

1. Create a token for the user by calling Accounts.token.getToken() (replacing existing tokens)
2. Log in the user with Meteor.loginWithUserToken()
