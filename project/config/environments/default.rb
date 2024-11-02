# !!! DO NOT CHANGE HERE THE DEFAULT CONFIG VALUES IN ..custom/config/environments/default.rb !!!

COMMON[:system_title] = "RRBBS"

load_individual_config_files(sub_path: '"' + File.dirname(__FILE__).gsub("#{Rails.root}", "") + '/"',
                              regex_file_condition: "^#{File.basename(__FILE__).gsub(".", "*.")}")
