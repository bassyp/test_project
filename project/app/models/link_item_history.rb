class LinkItemHistory < ApplicationRecord
    belongs_to :mandant, class_name: "Mandant", foreign_key: "mandant_id"
    belongs_to :updater, class_name: "User", foreign_key: "updater_id"
    belongs_to :creator, class_name: "User", foreign_key: "creator_id"

    belongs_to :parent, class_name: "LinkItem", foreign_key: "parent_id"
    has_many :childs, -> { where("del_flag = 0") }, class_name: "LinkItem", foreign_key: "parent_id"

    belongs_to :original, class_name: "LinkItem", foreign_key: "parent_id"

    def get_link_string(*args)
      args            = args[0]
      c               = args[:c]
      session         = c[:session]

      if self.main_link.blank?
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
      html_options = {
                        onclick: (self.url.present? || self.onclick.present? ? self.onclick : "return appJS.load_content({'url': '/#{self.controller_name}/#{self.action_name}/#{self.id_key}', 'title': '#{ActionController::Base.helpers.strip_tags(self.title)}', 'event' : event, 'this' : this})"),
                        class: "col-xs-10 col-10", title: self.description, style: "width: 100%;",
                        id: "mainlink_#{self.name}", name: "mainlink_#{self.name}", target: self.target }
      if self.url.present?
        html_options[:href] =  self.url
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
                          "/#{self.controller_name.to_s.gsub(/^customer$/, "inventory")}/#{self.action_name.to_s.gsub(c[:page_prefix_regex], "search_")}/#{self.id_key}",
                          onclick: "return appJS.load_content({'url': '/#{self.controller_name.to_s.gsub(/^customer$/, "inventory")}/#{self.action_name.to_s.gsub(c[:page_prefix_regex], "search_")}/#{self.id_key}', 'title': 'Suche #{ActionController::Base.helpers.strip_tags(self.title)}', 'event' : event, 'this' : this})",
                          id: "mainlink_search_#{self.name}", name: "mainlink_search_#{self.name}", class: "col-xs-2 col-2", title: "Suche")

      self.edit_link   = ActionController::Base.helpers.link_to('<i class="fa fa-pencil-square-o fas fa-edit"></i>'.html_safe,
                          "/link_item/edit_element/#{self.id_key}?uuid=#{self.uuid}",
                          onclick: "return appJS.open_dialog({'url': '/link_item/edit_element/#{self.id}?uuid=#{self.uuid}', 'title': 'Link \"#{self.title.gsub('"', '').html_safe}\" bearbeiten', 'event' : event, 'this' : this})",
                          id: "mainlink_edit_link_#{self.name}", name: "mainlink_edit_link_#{self.name}", class: "col-xs-2 col-2", title: "Suche")
    end
end
