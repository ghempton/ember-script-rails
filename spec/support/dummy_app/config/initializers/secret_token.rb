# Be sure to restart your server when you modify this file.

# Your secret key for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!
# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
DummyApp::Application.config.secret_token = '1f186a67e9c2eb4b363ff710de1e55269972364290d4bdfd72b58118d89bede3eb4fbeff7c80bc955034755a18ea77c8712e712a4282bc7a53fc70398e579fdf'

DummyApp::Application.config.secret_key_base = DummyApp::Application.config.secret_token
