default['wikijs']['title'] = ENV['TITLE']

default['wikijs']['host'] = ENV['HOST'] || 'http://localhost'
default['wikijs']['port'] = ENV['PORT'] || 80

## System configuration
default['wikijs']['installDir'] = '/opt/wikijs/wiki'

## Session Secret
default['wikijs']['sessionSecret'] = Array.new(16) { rand(256) }.pack('C*').unpack('H*').first

## Database configuration
default['wikijs']['mongo']['host']      = ENV['MONGO_HOST']
default['wikijs']['mongo']['port']      = ENV['MONGO_PORT'] || 27017
default['wikijs']['mongo']['database']  = ENV['MONGO_DBNAME'] || 'wikijs'
default['wikijs']['mongo']['user']      = ENV['MONGO_USER']
default['wikijs']['mongo']['password']  = ENV['MONGO_PASSWORD']

## maximum upload sizes (in MB)
default['wikijs']['maxImageSize'] = ENV['MAX_IMAGE_SIZE'] || 3
default['wikijs']['maxFileSize']  = ENV['MAX_FILE_SIZE'] || 100

## language
## Possible values: en, es, fr, ko, pt, ru or zh
default['wikijs']['lang']     = ENV['LANG'] || 'en'
default['wikijs']['langRtl']  = ENV['LANG_RTL'] || 'false'

## features
default['wikijs']['features']['mathjax']    = ENV['FEATURE_MATHJAX'] || 'true'
default['wikijs']['features']['linebreaks'] = ENV['FEATURE_LINEBREAKS'] || 'true'

## External Logging
# TODO: Make sure all options are included
default['wikijs']['extlog']['bugsnag']['enabled']     = ENV['LOG_BUGSNAG'] || 'false'
default['wikijs']['extlog']['loggly']['enabled']      = ENV['LOG_LOGGLY'] || 'false'
default['wikijs']['extlog']['loggly']['token']        = ENV['LOGGLY_TOKEN']
default['wikijs']['extlog']['loggly']['subdomain']    = ENV['LOGGLY_SUBDOMAIN']
default['wikijs']['extlog']['papertrail']['enabled']  = ENV['LOG_PAPERTRAIL'] || 'false'
default['wikijs']['extlog']['papertrail']['host']     = ENV['PAPERTRAIL_HOST']
default['wikijs']['extlog']['papertrail']['port']     = ENV['PAPERTRAIL_PORT']
default['wikijs']['extlog']['rollbar']['enabled']     = ENV['LOG_ROLLBAR'] || 'false'
default['wikijs']['extlog']['sentry']['enabled']      = ENV['LOG_SENTRY'] || 'false'

## Should the wiki be accessible publicly without a login?
default['wikijs']['isPublic'] = ENV['PUBLIC'] || 'false'

## Authentication methods
# Local authentication (via database)
default['wikijs']['auth_local']['enabled']  = ENV['AUTH_LOCAL'] || 'true'
default['wikijs']['auth_local']['readOnly'] = ENV['AUTH_LOCAL_READ_ONLY'] || 'true'


# Google OAUTH Authentication
default['wikijs']['auth_google']['enabled']      = ENV['AUTH_GOOGLE'] || 'false'
default['wikijs']['auth_google']['clientId']     = ENV['AUTH_GOOGLE_CLIENT_ID']
default['wikijs']['auth_google']['clientSecret'] = ENV['AUTH_GOOGLE_SECRET']

# Microsoft Authentication
default['wikijs']['auth_microsoft']['enabled']   = ENV['AUTH_MICROSOFT'] || 'false'
default['wikijs']['auth_microsoft_clientId']     = ENV['AUTH_MICROSOFT_CLIENT_ID']
default['wikijs']['auth_microsoft_clientSecret'] = ENV['AUTH_MICROSOFT_SECRET']

# Facebook Authentication
default['wikijs']['auth_facebook']['enabled']      = ENV['AUTH_FACEBOOK'] || 'false'
default['wikijs']['auth_facebook']['clientId']     = ENV['AUTH_FACEBOOK_CLIENT_ID']
default['wikijs']['auth_facebook']['clientSecret'] = ENV['AUTH_FACEBOOK_SECRET']

# Github authentication
default['wikijs']['auth_github']['enabled']      = ENV['AUTH_GITHUB'] || 'false'
default['wikijs']['auth_github']['clientId']     = ENV['AUTH_GITHUB_CLIENT_ID']
default['wikijs']['auth_github']['clientSecret'] = ENV['AUTH_GITHUB_SECRET']

# Slack authentication
default['wikijs']['auth_slack']['enabled']      = ENV['AUTH_SLACK'] || 'false'
default['wikijs']['auth_slack']['clientId']     = ENV['AUTH_SLACK_CLIENT_ID']
default['wikijs']['auth_slack']['clientSecret'] = ENV['AUTH_SLACK_SECRET']

# Microsoft authentication
default['wikijs']['auth_ldap']['enabled']        = ENV['AUTH_LDAP'] || 'false'
default['wikijs']['auth_ldap']['url']            = ENV['AUTH_LDAP_URL']
default['wikijs']['auth_ldap']['bindDn']         = ENV['AUTH_LDAP_BIND_DN']
default['wikijs']['auth_ldap']['bindCreds']      = ENV['AUTH_LDAP_BIND_CREDS']
default['wikijs']['auth_ldap']['searchBase']     = ENV['AUTH_LDAP_SEARCH_BASE']
default['wikijs']['auth_ldap']['searchFilter']   = ENV['AUTH_LDAP_SEARCH_FILTER']
default['wikijs']['auth_ldap']['tls']            = ENV['AUTH_LDAP_TLS']
default['wikijs']['auth_ldap']['tlsCertPath']    = ENV['AUTH_LDAP_TLS_CERT_PATH']

# Azure authentication
default['wikijs']['auth_azure']['enabled']       = ENV['AUTH_AZURE'] || 'false'
default['wikijs']['auth_azure']['clientId']      = ENV['AUTH_AZURE_CLIENT_ID']
default['wikijs']['auth_azure']['clientSecret']  = ENV['AUTH_AZURE_SECRET']
default['wikijs']['auth_azure']['resource']      = ENV['AUTH_AZURE_RESOURCE']
default['wikijs']['auth_azure']['tenant']        = ENV['AUTH_AZURE_TENANT']

## Git Repository Setup
default['wikijs']['github']['enabled']        = ENV['GIT_ENABLED'] || 'false'
default['wikijs']['github']['url']            = ENV['GIT_URL']
default['wikijs']['github']['branch']         = ENV['GIT_BRANCH'] || 'master'
default['wikijs']['github']['authType']       = ENV['GIT_AUTH']
default['wikijs']['github']['username']       = ENV['GIT_USER']
default['wikijs']['github']['password']       = ENV['GIT_PASSWORD']
default['wikijs']['github']['privateKey']     = ENV['GIT_KEY_PATH']
default['wikijs']['github']['sslVerify']      = ENV['GIT_SSL_VERIFY']
default['wikijs']['github']['serverEmail']    = ENV['GIT_SERVER_EMAIL']
default['wikijs']['github']['showUserEmail']  = ENV['GIT_SHOW_USER_EMAIL'] || 'true'
