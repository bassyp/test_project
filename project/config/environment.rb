# Load the Rails application.
require_relative "application"

# Initialize the Rails application.
Rails.application.initialize!

load_individual_config_files(sub_path: '"' + File.dirname(__FILE__).gsub("#{Rails.root}", "") + '/"',
                              regex_file_condition: "^#{File.basename(__FILE__).gsub(".", "*.")}")
