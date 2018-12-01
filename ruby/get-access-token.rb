require 'googleauth'

scopes = [
  'https://www.googleapis.com/auth/userinfo.email',
  'https://www.googleapis.com/auth/firebase.database'
]

authorizer = Google::Auth::ServiceAccountCredentials.make_creds(
  scope: scopes,
  json_key_io: File.open('./private-key.json')
)

at = authorizer.fetch_access_token
puts at["access_token"]
