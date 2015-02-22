Log in a user with a secret token.

The implementation is very basic:

1. Create a token for the user by calling Accounts.token.getToken(userId) (replacing the existing token)
2. Log in the user with Meteor.loginWithUserToken(token)
