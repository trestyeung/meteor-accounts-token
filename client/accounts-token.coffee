Meteor.loginWithUserToken = (token, callback) ->
  loginRequest = token: token

  Accounts.callLoginMethod
    methodArguments: [loginRequest]
    userCallback: callback
