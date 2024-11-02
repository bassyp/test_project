require_relative "boot"

require "rails/all"

# Example:
# load_individual_config_files(:excluded_main_folder => ['configs'],
# 				        :sub_file_or_folder 	=> '"app/views/import_#{extension_main_folder.singularize}_#{extension_folder.singularize}"',
# 								:regex_file_condition => "^_fragment")
#  Files will be ignored, if extension folder or target folder contain .ignore file
def load_individual_config_files(**args)
  root_folder           = (args[:root_folder].present? ? args[:root_folder] : Rails.root)
  extension_root_folder = (args[:extension_root_folder].present? ? args[:extension_root_folder] : "../extensions/")
  included_main_folder  = (args[:included_main_folder].present? ? args[:included_main_folder] : Dir.entries("#{root_folder}/#{extension_root_folder}").select { |e| File.directory? File.join("#{root_folder}/#{extension_root_folder}", e) and [ ".", ".." ].exclude?(e) })
  excluded_main_folder  = (args[:excluded_main_folder].present? ? args[:excluded_main_folder] : [])
  sub_file_or_folder    = (args[:sub_file_or_folder].present? ? eval(args[:sub_file_or_folder]) : "/")
  regex_file_condition  = (args[:regex_file_condition].present? ? Regexp.new(args[:regex_file_condition]) : Regexp.new(".*"))
  files_or_folders      = []
  execute_require       = (args[:execute_require].present? ? args[:execute_require] : true)
  verbose               = (args[:verbose].present? ? args[:verbose] : true)

  complete_custom_folder = "#{root_folder}/../custom/#{sub_file_or_folder}"

  # custom folder
  Dir.entries(complete_custom_folder).each do |file_or_folder|
    if file_or_folder != "." && file_or_folder != ".." && file_or_folder =~ regex_file_condition &&
      File.exist?("#{complete_custom_folder}/#{file_or_folder}")
      files_or_folder = {
        complete_folder:          complete_custom_folder,
        file:                     file_or_folder,
        file_short:               file_or_folder.gsub(/^_/, "").split(".").first
      }
      files_or_folders           << files_or_folder
      if execute_require
        puts "require #{complete_custom_folder}/#{files_or_folder[:file]}" if verbose
        require "#{complete_custom_folder}/#{files_or_folder[:file]}"
      end
    end
  end

  # extension folder
  included_main_folder.try(:each) do |extension_main_folder|
    if Dir.exist?("#{extension_root_folder}#{extension_main_folder}/")
      if included_main_folder.include?(extension_main_folder) && excluded_main_folder.exclude?(extension_main_folder)
        Dir.entries("#{extension_root_folder}#{extension_main_folder}/").each do |extension_folder|
          extension_sub_folder  = "#{extension_root_folder}/#{extension_main_folder}/#{extension_folder}"
          complete_folder       = "#{extension_sub_folder}/#{sub_file_or_folder}"

          if extension_folder != "." && extension_folder != ".." && File.directory?(Rails.root.join(complete_folder)) &&
            !File.exist?("#{extension_sub_folder}/.ignore") && !File.exist?("#{complete_folder}/.ignore")

            Dir.entries(complete_folder).each do |file_or_folder|
              if file_or_folder != "." && file_or_folder != ".." && file_or_folder =~ regex_file_condition
                files_or_folder = {
                  complete_folder:          complete_folder,
                  file:                     file_or_folder,
                  file_short:               file_or_folder.gsub(/^_/, "").split(".").first
                }
                files_or_folders           << files_or_folder
                if execute_require
                  puts "require #{root_folder}/#{files_or_folder[:complete_folder]}/#{files_or_folder[:file]}" if verbose
                  require "#{root_folder}/#{files_or_folder[:complete_folder]}/#{files_or_folder[:file]}"
                end
              end
            end
          end
        end
      end
    end
  end

  files_or_folders
end

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module RRBBS
  class Application < Rails::Application
    # load default field configuration
    require File.join(File.dirname(__FILE__), "environments/default")

    # set default directories
    DEFAULT[:COSTUM_ROOT]       = ENV.fetch("BBRRS_CUSTOM_ROOT") { "#{Rails.root}/../custom/" }
    DEFAULT[:PLUGIN_ROOT]      = ENV.fetch("BBRRS_PLUGIN_ROOT") { "#{Rails.root}/../extensions/plugins/" }
    DEFAULT[:PLUGIN_FOLDERS]   = Dir.entries(DEFAULT[:PLUGIN_ROOT]).select { |e| File.directory? File.join(DEFAULT[:PLUGIN_ROOT], e) and [ ".", ".." ].exclude?(e) }.map { |e|File.join(DEFAULT[:PLUGIN_ROOT], e) }
    DEFAULT[:MANDANT_ROOT]     = ENV.fetch("BBRRS_MANDANT_ROOT") { "#{Rails.root}/../extensions/mandants/" }
    DEFAULT[:MANDANT_FOLDERS]  = Dir.entries(DEFAULT[:MANDANT_ROOT]).select { |e| File.directory? File.join(DEFAULT[:MANDANT_ROOT], e) and [ ".", ".." ].exclude?(e) }.map { |e| File.join(DEFAULT[:MANDANT_ROOT], e) }
    # DEFAULT[:CONFIG_ROOT]      = ENV.fetch("BBRRS_CONFIG_FOLDER") { "#{Rails.root}/../extensions/configs/"}
    # DEFAULT[:CONFIG_FOLDERS]   = Dir.entries(DEFAULT[:CONFIG_ROOT]).select { |e| File.directory? File.join(DEFAULT[:CONFIG_ROOT], e) and [ ".", ".." ].exclude?(e) }
    DEFAULT[:EXTENSION_FOOT_FOLDERS]  = DEFAULT[:MANDANT_FOLDERS] + DEFAULT[:PLUGIN_FOLDERS]
    DEFAULT[:CUSTOM_FOLDERS]          =  DEFAULT[:EXTENSION_FOOT_FOLDERS]+ [ DEFAULT[:COSTUM_ROOT] ]

    config.autoload_paths << "#{root}/app/views"
    config.autoload_paths << "#{root}/app/views/layouts"
    config.autoload_paths << "#{root}/app/views/components"

    # load custom config from custom and extensions folder
    if File.exist?("#{DEFAULT[:COSTUM_ROOT]}/config/database.yml")
      config.paths["config/database"] = "#{DEFAULT[:COSTUM_ROOT]}/config/database.yml"
    end

    config.paths.keys.try(:each) do |key|
      DEFAULT[:CUSTOM_FOLDERS].try(:each) do |folder|
        if File.exist?("#{folder}/#{key}/")
          config.paths[key] << File.join(folder, key)
          # puts "add to config.paths #{key}: #{File.join(folder, key)}"
        end
      end
    end

    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 8.0

    # Please, add to the `ignore` list any other `lib` subdirectories that do
    # not contain `.rb` files, or that should not be reloaded or eager loaded.
    # Common ones are `templates`, `generators`, or `middleware`, for example.
    config.autoload_lib(ignore: %w[assets tasks])

    # Configuration for the application, engines, and railties goes here.
    #
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    #
    # config.time_zone = "Central Time (US & Canada)"
    # config.eager_load_paths << Rails.root.join("extras")
  end
end

load_individual_config_files(sub_file_or_folder: '"' + File.dirname(__FILE__).gsub("#{Rails.root}", "") + '/"',
                              regex_file_condition: "^#{File.basename(__FILE__).gsub(".", "*.")}")
