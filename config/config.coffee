path     = require 'path'
rootPath = path.normalize __dirname + '/..'
env      = process.env.NODE_ENV || 'development'

config =
  development:
    root: rootPath
    app:
      name: 'leaguewards'
    port: 3000
    db: 'mongodb://localhost/leaguewards-development'

  test:
    root: rootPath
    app:
      name: 'leaguewards'
    port: 3000
    db: 'mongodb://localhost/leaguewards-test'

  production:
    root: rootPath
    app:
      name: 'leaguewards'
    port: 3000
    db: 'mongodb://localhost/leaguewards-production'

module.exports = config[env]
