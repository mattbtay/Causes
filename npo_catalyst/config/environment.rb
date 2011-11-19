# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
NpoCatalyst::Application.initialize!

config.action_controller.relative_url_root = '/npo_catalyst'
