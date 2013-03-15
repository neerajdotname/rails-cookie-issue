# Be sure to restart your server when you modify this file.

RailsCookieIssue::Application.config.session_store :upgrade_signature_to_encryption_cookie_store, key: '_rails-cookie-issue_session'

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rails generate session_migration")
# RailsCookieIssue::Application.config.session_store :active_record_store
