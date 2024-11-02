# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = "1.0"

# Add additional assets to the asset load path.
# Rails.application.config.assets.paths << Emoji.images_path

load_individual_config_files(sub_file_or_folder: '"' + File.dirname(__FILE__).gsub("#{Rails.root}", "") + '/"',
                              regex_file_condition: "^#{File.basename(__FILE__).gsub(".", "*.")}")
