# Be sure to restart your server when you modify this file.

# Configure parameters to be partially matched (e.g. passw matches password) and filtered from the log file.
# Use this to limit dissemination of sensitive information.
# See the ActiveSupport::ParameterFilter documentation for supported notations and behaviors.
Rails.application.config.filter_parameters += [
  :passw, :password, :email, :secret, :token, :_key, :crypt, :salt, :certificate, :otp, :ssn, :cvv, :cvc
]

load_individual_config_files(sub_file_or_folder: '"' + File.dirname(__FILE__).gsub("#{Rails.root}", "") + '/"',
                              regex_file_condition: "^#{File.basename(__FILE__).gsub(".", "*.")}")
