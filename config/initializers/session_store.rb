# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_marketware_session',
  :secret      => '7a07e086f4621885dbdd2083756080511fe2377c1b3a0b113b16fdbb16ae631015626a5b11a3ce6f10b3696344b76ccd1744d715d9cde1ab64683b6ba44eb03a'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
