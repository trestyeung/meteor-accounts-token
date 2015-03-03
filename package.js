Package.describe({
  name: 'andrei:accounts-token',
  version: '0.0.1',
  summary: 'login users with a token',
  git: 'https://github.com/andreivolt/meteor-accounts-token'
});

Package.onUse(function(api) {
  api.use([
    'accounts-base@1.0.0',
    'coffeescript@1.0.0',
  ]);

  api.addFiles([
    'client/accounts-token.coffee',
    'client/iron-router-hook.coffee',
  ], 'client');

  api.addFiles([
    'server/accounts-token.coffee',
  ], 'server');
});
