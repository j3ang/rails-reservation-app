# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
App::Application.config.secret_key_base = '30e0aa539872bfc858c713b1216e0143a423cf16366b1b40b2aaec324627a74fce1e0cb6ee97e845c2d281672e72acaa9f21f86636579b431d3db46469d7e9b3'
