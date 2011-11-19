class ApplicationController < ActionController::Base
  protect_from_forgery
  filter_parameter_logging :password, :password_confirmation

  CarrierWave.configure do |config|
    config.fog_credentials = {
      :provider => 'AWS',
      :aws_access_key_id => 'AKIAI3WQT6RDRB4Z6VRQ',
      :aws_secret_access_key => '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'
    }
    config.fog_directory = 'startup_weekend'
  end
end
