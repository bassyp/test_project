class RoleHistory < ApplicationRecord
    belongs_to :mandant, class_name: "Mandant", foreign_key: "mandant_id"
    belongs_to :updater, class_name: "User", foreign_key: "updater_id"
    belongs_to :creator, class_name: "User", foreign_key: "creator_id"

    belongs_to :parent, class_name: "Role", foreign_key: "parent_id"
    has_many :childs, -> { where("del_flag = 0") }, class_name: "Role", foreign_key: "parent_id"

    belongs_to :original, class_name: "Role", foreign_key: "parent_id"

  def get_hierachy_name(opts = {})
    default_options = { field: "title", c: nil, already_used_ids: [], current_value: false,
                            select: [ :id, :uuid, :title, :name, :parent_id, :parent_uuid ] # , :hierachy_name]
                      }
    options         = default_options.merge(opts)
    "#{self.title} (#{self.name})"
  rescue => e
      self.title
  end
end
