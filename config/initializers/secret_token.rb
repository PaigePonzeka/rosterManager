# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
RosterManager::Application.config.secret_key_base = '5672eea599bfd667192f9683d39d5c1ba3a8b23db3b172e1688e186bd7bdff19e00a056861be1b1e3b910f61bfb1a657854650247d49a3f7aca1f136b421c896'
