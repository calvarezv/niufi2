# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_niufi_session',
  :secret      => 'ae00839731f890a16eb565cda73d943a2ece4b95963283e05a40912ed50f96708ad191e38d244e1a4fcbbe3882edd3c89369e83838d4414df5f5925f67005181'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
