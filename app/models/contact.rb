class Contact < ApplicationRecord
  belongs_to :kind,optional: true
  has_many :phones
  has_one :adress
  accepts_nested_attributes_for :phones,allow_destroy: true
  accepts_nested_attributes_for :adress,allow_destroy: true,update_only: true

  #def author
  #  "Lucas Pedatela"
  #end

  #def kind_description
  #  self.kind.description unless self.kind_id.blank?
  #end

  #def birthdate_br
  #  I18n.l(self.birthdate) unless self.birthdate.blank?
  #end

  #def as_json(options={})
  #  super(
  #    root: true,
  #    methods: [:author, :kind_description,:birthdate_br],
  #
  #    )
  #  end
end
