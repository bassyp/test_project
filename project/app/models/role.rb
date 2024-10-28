class Role < ApplicationRecord
	
	has_many :lookup_join_role,      :class_name => 'LookupJoinRole', :foreign_key => 'role_uuid', :primary_key => 'uuid'
	has_many :lookups,  :through => :lookup_join_role

	
	has_many :page_item_join_role,      :class_name => 'PageItemJoinRole', :foreign_key => 'role_uuid', :primary_key => 'uuid'
	has_many :page_items,  :through => :page_item_join_role

	
	has_many :wiki_item_join_role,      :class_name => 'WikiItemJoinRole', :foreign_key => 'role_uuid', :primary_key => 'uuid'
	has_many :wiki_items,  :through => :wiki_item_join_role

	
	has_many :lookup_group_join_role,      :class_name => 'LookupGroupJoinRole', :foreign_key => 'role_uuid', :primary_key => 'uuid'
	has_many :lookup_groups,  :through => :lookup_group_join_role

	
	has_many :serial_e_mail_join_role,      :class_name => 'SerialEMailJoinRole', :foreign_key => 'role_uuid', :primary_key => "uuid"
	has_many :serial_e_mails,  :through => :serial_e_mail_join_role

  has_many :template_item_join_role,      :class_name => 'TemplateItemJoinRole', :foreign_key => 'role_uuid', :primary_key => "uuid"
	has_many :template_items,  :through => :template_item_join_role

	has_many :e_mail_join_role,      :class_name => 'EMailJoinRole', :foreign_key => 'role_uuid', :primary_key => "uuid"
	has_many :e_mails,  :through => :e_mail_join_role

	has_many :wiki_item_join_role,      :class_name => 'WikiItemJoinRole', :foreign_key => 'role_uuid', :primary_key => "uuid"
	has_many :wiki_items,  :through => :wiki_item_join_role

	has_many :link_item_join_role,      :class_name => 'LinkItemJoinRole', :foreign_key => 'role_uuid', :primary_key => "uuid"
	has_many :link_items,  :through => :link_item_join_role

	has_many :user_join_role,      :class_name => 'UserJoinRole', :foreign_key => 'role_uuid', :primary_key => "uuid"
	has_many :users,  :through => :user_join_role

  belongs_to :mandant,    :class_name => "Mandant",   :foreign_key => "mandant_id"
  belongs_to :updater,       :class_name => "User",      :foreign_key => "updater_id"
  belongs_to :creator,    :class_name => "User",      :foreign_key => "creator_id"

  belongs_to :parent,  :class_name => "Role",      :foreign_key => "parent_id"
  has_many :childs, -> {where("del_flag = 0")},       :class_name => "Role", :foreign_key => "parent_id"

  has_many :histories,    :class_name => "RoleHistory", :foreign_key => "original_uuid", :primary_key => "uuid"

  # returns a tree of parent fields
  # customer_group > billing_account > customer
  def get_field_hierachy(field = 'title', c = nil)
    return "#{self.title} (#{self.name})"
  rescue => e
      return self.title
  end
  
  def get_hierachy_name(opts = {})
    default_options = {:field => 'title', :c => nil, :already_used_ids => [], :current_value => false,
                            :select => [:id,:uuid, :title, :name, :parent_id, :parent_uuid] # , :hierachy_name]
                      }
    options         = default_options.merge(opts)
    return "#{self.title} (#{self.name})"
  rescue => e
      return self.title
  end
  
  def get_all_users_as_string(*args)
    return User.where("uuid in (select user_uuid from user_join_roles where role_uuid = ?) and (parent_uuid is null or parent_uuid = '')", self.uuid).order(:last_name,:first_name).map{|e| ["#{e.last_name}, #{e.first_name} (#{e.id})"]}.join(", ")
  end
  
end
