class LinkItem < ApplicationRecord
  has_many :link_item_join_group, class_name: "LinkItemJoinGroup", foreign_key: "link_item_uuid", primary_key: "uuid", dependent: :delete_all
  has_many :groups, through: :link_item_join_group

  has_many :link_item_join_mandant, class_name: "LinkItemJoinMandant", foreign_key: "link_item_uuid", primary_key: "uuid", dependent: :delete_all
  has_many :mandants, through: :link_item_join_mandant

  has_many :link_item_join_role, class_name: "LinkItemJoinRole", foreign_key: "link_item_uuid", primary_key: "uuid", dependent: :delete_all
  has_many :roles, through: :link_item_join_role

  has_many :link_item_join_user, class_name: "LinkItemJoinUser", foreign_key: "link_item_uuid", primary_key: "uuid", dependent: :delete_all
  has_many :users, through: :link_item_join_user

    belongs_to :user, class_name: "User", foreign_key: "updater_uuid", primary_key: "uuid"
    belongs_to :creator, class_name: "User", foreign_key: "creator_uuid", primary_key: "uuid"

    belongs_to :parent, class_name: "LinkItem", foreign_key: "parent_uuid", primary_key: "uuid"
    has_many :childs, -> { where("del_flag = 0") }, class_name: "LinkItem", foreign_key: "parent_uuid", primary_key: "uuid"

    has_many :histories, class_name: "LinkItemHistory", foreign_key: "original_uuid", primary_key: "uuid"

    def get_my_links(c)
      if true # c[:session][:user].login == 'rorassau'
        if c[:session][:user].ugr_link_item_ids.blank?
          c[:session][:user].set_all_link_item_ids()
        end
        where  =  "parent_id = '#{self.id}' and del_flag = 0 and active = 1 "

        # check if current mandant has mandant rights or don't have any data sets in link_item_join_mandants.
        where << " and (id in (select link_item_id from link_item_join_mandants where mandant_id = '#{c[:session][:user].get_mandant.id}') or id not in (select link_item_id from link_item_join_mandants where link_item_id = `link_items`.`id`))"

        if c[:session][:user].has_role(roles: "admin", c: c)
            where << " and ("
            # where << " (uuid not in (select link_item_uuid from link_item_join_groups where link_item_uuid is not null) and uuid not in (select link_item_uuid from link_item_join_users where link_item_uuid is not null))"
            where << " (id not in (select link_item_id from link_item_join_groups) and id not in (select link_item_id from link_item_join_users))"
            # where << " or id in (select link_item_id from link_item_join_groups where group_id in (select group_id from user_join_groups where user_id = '#{c[:session][:user].id}'))"
            # where << " or id in (select link_item_id from link_item_join_users where user_id = '#{c[:session][:user].id}')"
            # where << " or id in (select link_item_id from link_item_join_roles where role_id in (select role_id from user_join_roles where user_id = '#{c[:session][:user].id}' and (mandant_uuids is null or mandant_uuids like '%\"#{c[:session][:user].get_mandant.uuid}\"%')))"
            where << " or        id in (#{c[:session][:user].ugr_link_item_ids.join(',')})"
            where << " )"

            # puts LinkItem.where(where).order(:position).to_sql
            # Rails.logger.info   "perf > LinkItem-get_my_links(#{self.id}) 1: #{Time.now.strftime("%H:%M:%S:%L")}"
            # temp = LinkItem.where(where).order(:position)
            # Rails.logger.info   "perf > LinkItem-get_my_links(#{self.id}) end: #{Time.now.strftime("%H:%M:%S:%L")}"
            LinkItem.where(where).order(:position) # temp
        else
            where << " and "
            where << "    ("
            where << "      ("
            where << "        id not in (select link_item_id from link_item_join_groups) and "
            where << "        id not in (select link_item_id from link_item_join_mandants) and "
            where << "        id not in (select link_item_id from link_item_join_roles) and"
            where << "        id not in (select link_item_id from link_item_join_users)"
            where << "      )"
            where << "      or "
            where << "      ("
            # where << "        id in (select link_item_id from link_item_join_mandants where mandant_id in (select mandant_id from user_join_mandants where user_id = '#{c[:session][:user].id}')) and "
            where << "          id in (#{c[:session][:user].mandant_link_item_ids.join(',')}) and"
            where << "        id not in (select link_item_id from link_item_join_groups) and "
            where << "        id not in (select link_item_id from link_item_join_roles) and "
            where << "        id not in (select link_item_id from link_item_join_users)"
            where << "      ) "
            where << "      or "
            where << "      ("
            where << "        ( "
            # where << "          id in (select link_item_id from link_item_join_mandants where mandant_id in (select mandant_id from user_join_mandants where user_id = '#{c[:session][:user].id}')) or "
            where << "          id in (#{c[:session][:user].mandant_link_item_ids.join(',')}) or"
            where << "          id not in (select link_item_id from link_item_join_mandants) "
            where << "        ) and "
            where << "        ("
            # where << "          id in (select link_item_id from link_item_join_groups where group_id in (select group_id from user_join_groups where user_id = '#{c[:session][:user].id}')) or "
            # where << "          id in (select link_item_id from link_item_join_roles where role_id in (select role_id from user_join_roles where user_id = '#{c[:session][:user].id}' and (mandant_uuids is null or mandant_uuids like '%\"#{c[:session][:user].get_mandant.uuid}\"%'))) or "
            # where << "          id in (select link_item_id from link_item_join_users where user_id = '#{c[:session][:user].id}')"
            where << "        id in (#{c[:session][:user].ugr_link_item_ids.join(',')})"
            where << "        ) "
            where << "      ) "
            where << "    )"

            # puts LinkItem.where(where).order(:position).to_sql
            # Rails.logger.info   "perf > LinkItem-get_my_links(#{self.id}) 1: #{Time.now.strftime("%H:%M:%S:%L")}"
            # temp = LinkItem.where(where).order(:position)
            # Rails.logger.info   "perf > LinkItem-get_my_links(#{self.id}) end: #{Time.now.strftime("%H:%M:%S:%L")}"
            # puts "SQL: #{LinkItem.where(where).order(:position).to_sql}"
            LinkItem.where(where).order(:position) # temp
        end
      else
        where  =  "parent_id = '#{self.id}' and del_flag = 0 and active = 1"
        if c[:session][:user].has_role(roles: "admin", c: c)
            where << " and ("
            # where << " (uuid not in (select link_item_uuid from link_item_join_groups where link_item_uuid is not null) and uuid not in (select link_item_uuid from link_item_join_users where link_item_uuid is not null))"
            where << " (id not in (select link_item_id from link_item_join_groups) and id not in (select link_item_id from link_item_join_users))"
            where << " or id in (select link_item_id from link_item_join_groups where group_id in (select group_id from user_join_groups where user_id = '#{c[:session][:user].id}'))"
            where << " or id in (select link_item_id from link_item_join_users where user_id = '#{c[:session][:user].id}')"
            where << " or id in (select link_item_id from link_item_join_roles where role_id in (select role_id from user_join_roles where user_id = '#{c[:session][:user].id}' and (mandant_uuids is null or mandant_uuids like '%\"#{c[:session][:user].get_mandant.uuid}\"%')))"
            where << " )"
        else
            where << " and "
            where << "    ("
            where << "      ("
            where << "        id not in (select link_item_id from link_item_join_groups) and "
            where << "        id not in (select link_item_id from link_item_join_mandants) and "
            where << "        id not in (select link_item_id from link_item_join_roles) and"
            where << "        id not in (select link_item_id from link_item_join_users)"
            where << "      )"
            where << "      or "
            where << "      ("
            where << "        id in (select link_item_id from link_item_join_mandants where mandant_id in (select mandant_id from user_join_mandants where user_id = '#{c[:session][:user].id}' and active = 1)) and "
            where << "        id not in (select link_item_id from link_item_join_groups) and "
            where << "        id not in (select link_item_id from link_item_join_roles) and "
            where << "        id not in (select link_item_id from link_item_join_users)"
            where << "      ) "
            where << "      or "
            where << "      ("
            where << "        ( "
            where << "          id in (select link_item_id from link_item_join_mandants where mandant_id in (select mandant_id from user_join_mandants where user_id = '#{c[:session][:user].id}' and active = 1)) or "
            where << "          id not in (select link_item_id from link_item_join_mandants) "
            where << "        ) and "
            where << "        ("
            where << "          id in (select link_item_id from link_item_join_groups where group_id in (select group_id from user_join_groups where user_id = '#{c[:session][:user].id}')) or "
            where << "          id in (select link_item_id from link_item_join_roles where role_id in (select role_id from user_join_roles where user_id = '#{c[:session][:user].id}' and (mandant_uuids is null or mandant_uuids like '%\"#{c[:session][:user].get_mandant.uuid}\"%'))) or "
            where << "          id in (select link_item_id from link_item_join_users where user_id = '#{c[:session][:user].id}')"
            where << "        ) "
            where << "      ) "
            where << "    )"
        end
        # puts "SQL: #{LinkItem.where(where).order(:position).to_sql}"
        # Rails.logger.info   "perf > LinkItem-get_my_links(#{self.id}) 1: #{Time.now.strftime("%H:%M:%S:%L")}"
        # temp = LinkItem.where(where).order(:position)
        # Rails.logger.info   "perf > LinkItem-get_my_links(#{self.id}) end: #{Time.now.strftime("%H:%M:%S:%L")}"
        LinkItem.where(where).order(:position) # temp
      end
    end

    def get_hierachy_name(opts = {})
      opts[:field] = "title"
      super(opts)
    end

    # This function add special function which add attribute function for the front end
    # For example price 10.1 price_pretty_text > 10,10 price_pretty_link makes and editable link
    # after_initialize do |temp|
    # self.add_pretty_attribute_functions
    # end


    # get just the active elements
    # http://gijgo.com/tree/demos/bootstrap-treeview
    def get_childs(c)
      children = []

      where  =  "parent_uuid = '#{self.uuid}' and del_flag = 0 and active = 1"

      where << " and ("
      where << " (uuid not in (select link_item_uuid from link_item_join_groups where link_item_uuid is not null) and uuid not in (select link_item_uuid from link_item_join_users where link_item_uuid is not null))"
      where << " or uuid in (select link_item_uuid from link_item_join_groups where group_uuid in (select group_uuid from user_join_groups where user_uuid = '#{c[:session][:user].uuid}'))"
      where << " or uuid in (select link_item_uuid from link_item_join_users where user_uuid = '#{c[:session][:user].uuid}')"
      where << " )"

      LinkItem.where(where).order("position, name")
    end

    # get just the active elements
    # http://gijgo.com/tree/demos/bootstrap-treeview
    def get_tree_array_active(*args)
      args      = args[0]
      c         = args[:c]
      where     = (args[:where].present? ? args[:where] : {})
      children  = []

      where_2   =  "parent_uuid = '#{self.uuid}' and del_flag = 0 and active = 1"

      where_2 << " and ("
      where_2 << " (uuid not in (select link_item_uuid from link_item_join_groups where link_item_uuid is not null) and uuid not in (select link_item_uuid from link_item_join_users where link_item_uuid is not null))"
      where_2 << " or uuid in (select link_item_uuid from link_item_join_groups where group_uuid in (select group_uuid from user_join_groups where user_uuid = '#{c[:session][:user].uuid}'))"
      where_2 << " or uuid in (select link_item_uuid from link_item_join_users where user_uuid = '#{c[:session][:user].uuid}')"
      where_2 << " )"

      LinkItem.where(where).where(where_2).order("position, name").try(:each) do |item|
        children << item.get_tree_array_active(args)
      end

      self.get_tree_params(children)
    end

    # returns the min width for the navigation
    def get_navigation_min_width
      if self.title.include?("</i>")
        size = self.title.split("</i>")[-1].size + 2
      else
        size = self.title.size
      end

      if size > 28
        "min-width: #{size * 8.57}px;"
      else
        "min-width: 240px;"
      end
    end

    # get also the inactive elements
    # http://gijgo.com/tree/demos/bootstrap-treeview
    def get_tree_array_complete(*args)
      args            = args[0]
      c               = args[:c]
      where           = (args[:where].present? ? args[:where] : {})
      children        = []
      where_2           =  "parent_uuid = '#{self.uuid}' and del_flag = 0"

      where_2 << " and ("
      where_2 << " (uuid not in (select link_item_uuid from link_item_join_groups where link_item_uuid is not null) and uuid not in (select link_item_uuid from link_item_join_users where link_item_uuid is not null))"
      where_2 << " or uuid in (select link_item_uuid from link_item_join_groups where group_uuid in (select group_uuid from user_join_groups where user_uuid = '#{c[:session][:user].uuid}'))"
      where_2 << " or uuid in (select link_item_uuid from link_item_join_users where user_uuid = '#{c[:session][:user].uuid}')"
      where_2 << " )"

      LinkItem.where(where).where(where_2).order("position, name").try(:each) do |item|
        children << item.get_tree_array_complete(args)
      end

      self.get_tree_params(children)
    end

    def get_link_string(*args)
      args            = args[0]
      c               = args[:c]
      session         = c[:session]

      if self.main_link.blank? || self[:reload_allways_link] == true
        generate_link_sting(args)
      end
      temp          = self.main_link

      if self.include_search_link
        temp       << self.search_link
      elsif self.creator_id == session[:user].id
        temp       << self.edit_link
      end

      temp.html_safe
    end

    def generate_link_sting(*args)
      args            = args[0]
      c               = args[:c]
      session         = c[:session]
      prefix_title    = ""

      if self.parent_id == 1 # is main element of navigation
        main_link_size =  12
      else
        main_link_size =  10
      end

      if "#{self.action_name}".start_with?("list_") || "#{self.action_name}".start_with?("tree_")
        prefix_title = "Übersicht "
      elsif "#{self.action_name}".start_with?("search_")
        prefix_title = "Suche "
      end

      url           =  nil
      onclick       =  nil
      if self.url.present?
        begin
          url = eval('"' + self.url + '"')
        rescue SyntaxError => e
          url = self.url
        end
      end

      if self.onclick.present?
        begin
          onclick = eval('"' + self.onclick + '"')
        rescue SyntaxError => e
          onclick = self.onclick
        end
      end

      html_options = {
                        onclick: (url.present? || onclick.present? ? onclick : "return appJS.load_content({'url': '/#{self.controller_name}/#{self.action_name}/#{self.id_key}', 'title': '#{prefix_title}#{ActionController::Base.helpers.strip_tags(self.title)}', 'event' : event, 'this' : this, 'show_error' : false})"),
                        class: "dropdown-item dropdown-item-own col-#{main_link_size} nav-link nav-link-#{self.f_type}-own", title: "#{self.description} (Ersteller: #{self.creator_id})", # :style => "width: 100%;",
                        id: "mainlink_#{self.name}", name: "mainlink_#{self.name}", target: self.target }
      if url.present?
        html_options[:href] =  url
      end

      url   = ""
      if self.controller_name.present?
        url = "/#{self.controller_name}/#{self.action_name}/"
        if self.id_key.present?
           url << self.id_key
        end
      end

      self.main_link   = ActionController::Base.helpers.link_to("#{self.title}".html_safe, url, html_options)

      self.search_link = ActionController::Base.helpers.link_to('<i class="fa fa-search"></i>'.html_safe,
                          "/#{self.controller_name}/#{self.action_name.to_s.gsub(c[:page_prefix_regex], "search_")}/#{self.id_key}",
                          onclick: "return appJS.load_content({'url': '/#{self.controller_name}/#{self.action_name.to_s.gsub(c[:page_prefix_regex], "search_")}/#{self.id_key}', 'title': 'Suche #{ActionController::Base.helpers.strip_tags(self.title)}', 'event' : event, 'this' : this, 'show_error' : false})",
                          id: "mainlink_search_#{self.name}", name: "mainlink_search_#{self.name}", class: "dropdown-item dropdown-item-own col-2 nav-link nav-link-search-own nav-link-extra-own ml-auto mr-0 px-0 text-center", title: "Suche (Ersteller: #{self.creator_id})")

      # Nutzerkategorie suche auf Bestand umdstellen
      if self.uuid == "ebca5674-8f09-47a1-9af2-7ecc16ac4bf8--link_item--20180307000000"
        self.search_link = self.search_link.to_s.gsub(/\/customer\//, "/inventory/")
      end


      self.edit_link   = ActionController::Base.helpers.link_to('<i class="fa fa-pencil-square-o fas fa-edit"></i>'.html_safe,
                          "/link_item/edit_element/#{self.id_key}?uuid=#{self.uuid}",
                          onclick: "return appJS.open_dialog({'url': '/link_item/edit_element/#{self.id}?uuid=#{self.uuid}', 'title': 'Link \"#{self.title.gsub('"', '').html_safe}\" bearbeiten', 'event' : event, 'this' : this, 'show_error' : false})",
                          id: "mainlink_edit_link_#{self.name}", name: "mainlink_edit_link_#{self.name}", class: "dropdown-item dropdown-item-own col-2 nav-link nav-link-edit-own nav-link-extra-own ml-auto mr-0 px-0 text-center", title: "Bearbeiten (Ersteller: #{self.creator_id})")
    end
end
