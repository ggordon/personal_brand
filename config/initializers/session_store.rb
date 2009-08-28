# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_gg-blog_session',
  :secret      => '831b5c75606e88d710605ee86177c54273a3dfa3be98a4819b3c970780b3e61b488a9ccd3befb7eea776976d032e6837082ba6b915d7351246d3ded6b7677112'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
