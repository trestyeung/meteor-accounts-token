Accounts.token = {}

Accounts.token.getToken = (userId) ->
  token = Random.secret()
  Meteor.users.update userId,
    $set:
      'services.token.loginToken': token
  token


Accounts.registerLoginHandler (loginRequest) ->
  return if not loginRequest.token

  user = Meteor.users.findOne
    'services.token.loginToken': loginRequest.token
  return if not user

  stampedToken = Accounts._generateStampedLoginToken()
  hashStampedToken = Accounts._hashStampedToken(stampedToken)
  Meteor.users.update user._id,
    $push:
      "services.resume.loginTokens": hashStampedToken

  userId: user._id
  token: stampedToken.token
