# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_niufi_session',
  :secret      => 'd5c730f70347ba4d0b56ecd97bd85703dbefb6afdc44b9e844df7536febcc8a294a180a424619a6be42915b58b23e3d83323e11e3f4de07e847ef97ccc8ac245'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
