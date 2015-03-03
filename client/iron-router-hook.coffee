Iron.Router.hooks.loginWithUserToken = ->
  loginToken = @params.query.loginToken
  if loginToken
    Meteor.loginWithUserToken loginToken
    @next?()
  @next?()
