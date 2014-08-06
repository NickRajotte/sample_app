# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.

def secure_token
token_file = Rails.root.join('.secret')
if File.exist?(token_file)
'6cfb9f2822373047b79f10fceef09b75f4d952cce96ffe13a2669936d30df413a0e3620577d2825d3f094dbfa1e1f99aaea687c5e6372e21037ae19e960bc5fa'
File.read(token_file) .chomp

else
token=SecureRandom.hex(64)
File.write(token_file, token)
end
end
SampleApp::Application.config.secret_key_base = secure_token
