class Group < ApplicationRecord
  has_many :wiki_item_join_group, class_name: "WikiItemJoinGroup", foreign_key: "group_uuid", primary_key: "uuid"
  has_many :wiki_items, through: :wiki_item_join_group


  has_many :billing_account_join_group, class_name: "BillingAccountJoinGroup", foreign_key: "group_uuid", primary_key: "uuid"
  has_many :billing_accounts, through: :billing_account_join_group


  has_many :serial_e_mail_join_group, class_name: "SerialEMailJoinGroup", foreign_key: "group_uuid", primary_key: "uuid"
  has_many :serial_e_mails, through: :serial_e_mail_join_group

  has_many :template_item_join_group, class_name: "TemplateItemJoinGroup", foreign_key: "group_uuid", primary_key: "uuid"
  has_many :template_items, through: :template_item_join_group

  has_many :e_mail_join_group, class_name: "EMailJoinGroup", foreign_key: "group_uuid", primary_key: "uuid"
  has_many :e_mails, through: :e_mail_join_group

  belongs_to :mandant, class_name: "Mandant", foreign_key: "mandant_id"
  belongs_to :updater, class_name: "User", foreign_key: "updater_id"
  belongs_to :creator, class_name: "User", foreign_key: "creator_id"

  has_many :wiki_item_join_group, class_name: "WikiItemJoinGroup", foreign_key: "group_uuid", primary_key: "uuid"
  has_many :wiki_items, through: :wiki_item_join_group

  has_many :link_item_join_group, class_name: "LinkItemJoinGroup", foreign_key: "group_uuid", primary_key: "uuid"
  has_many :link_items, through: :link_item_join_group

  has_many :groupJoinTodoItem

  has_many :user_join_group, class_name: "UserJoinGroup", foreign_key: "group_uuid", primary_key: "uuid"
  has_many :users, through: :user_join_group

  def get_sub_childs_active(sum = [])
     self.get_childs.try(:each) do |item|
       sum << item
       sum = item.get_sub_childs_active(sum)
    end
    sum
  end

  def get_all_users_as_string(*args)
    User.where("uuid in (select user_uuid from user_join_groups where group_uuid = ?) and (parent_uuid is null or parent_uuid = '')", self.uuid).order(:last_name, :first_name).map { |e| [ "#{e.last_name}, #{e.first_name} (#{e.id})" ] }.join(", ")
  end

  def get_all_e_mails_as_string(*args)
    e_mails = User.where("uuid in (select user_uuid from user_join_groups where group_uuid = ?) and (parent_uuid is null or parent_uuid = '')", self.uuid).map { |e| "#{e.mail_address}" }
    e_mails = e_mails + "#{self.extra_e_mails}".split(/[,;]/)
    e_mails.join(", ")
  end

  def get_all_e_mails(*args)
    e_mails = User.where("uuid in (select user_uuid from user_join_groups where group_uuid = ?) and (parent_uuid is null or parent_uuid = '')", self.uuid).map { |e| "#{e.mail_address}" }
    e_mails = e_mails + "#{self.extra_e_mails}".split(/[,;]/)
    e_mails.uniq.reject { |e_mail| e_mail.blank? }
  rescue => e
    []
  end

  def get_sub_childs_complete(sum = [])
     self.get_all_childs.try(:each) do |item|
       sum << item
       sum = item.get_sub_childs_complete(sum)
    end
    sum
  end

  def get_as_csv_active(c, csv)
    csv << self.attributes.values
      self.get_childs.try(:each) do |item|
        csv = item.get_as_csv_active(csv)
    end
    csv
  end

  def get_as_csv_complete(c, csv)
    csv << self.attributes.values
      self.get_all_childs.try(:each) do |item|
        csv = item.get_as_csv_complete(csv)
    end
    csv
  end

  # get just the active elements
  # http://gijgo.com/tree/demos/bootstrap-treeview
  def get_tree_array_active(*args)
    args            = args[0]
    c               = args[:c]
    where           = (args[:where].present? ? args[:where] : {})
    children        = []
    self.get_childs.where(where).order("position, name").try(:each) do |item|
      children << item.get_tree_array_active(args)
    end

    { id: "#{self.id};#{self.uuid}", active: false, position: self.position, text: (self.active ? "#{self.name}" : "#{self.name} (deaktiviert)"), population: nil, checked: !self.active, children: children }
  end

  # get also the inactive elements
  # http://gijgo.com/tree/demos/bootstrap-treeview
  def get_tree_array_complete(*args)
    args      = args[0]
    c               = args[:c]
    where           = (args[:where].present? ? args[:where] : {})
    children        = []
    self.get_all_childs.where(where).order("position, name").try(:each) do |item|
      children << item.get_tree_array_complete(args)
    end

    { id: "#{self.id};#{self.uuid}", active: false, position: self.position, text: (self.active ? "#{self.name}" : "#{self.name} (deaktiviert)"), population: nil, checked: !self.active, children: children }
  end
end
