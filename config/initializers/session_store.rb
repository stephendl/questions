# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_questions_session',
  :secret      => '85c4c2356180d4047d9a144580d8680e16182225185f9935e0a2b859ef6a048ea4b8239478d779333a61a1a3ddad268110160409d92b4e56097a587dcfd4c61f'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
