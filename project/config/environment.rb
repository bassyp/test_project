# Load the Rails application.
require_relative "application"

# Initialize the Rails application.
Rails.application.initialize!

load_individual_config_files(sub_file_or_folder: '"' + File.basename(File.dirname(__FILE__)) + '/"',
                              regex_file_condition: "^#{File.basename(__FILE__).gsub(".", "*.")}")
