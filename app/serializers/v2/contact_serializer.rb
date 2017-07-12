module V2
  class ContactSerializer < ActiveModel::Serializer
  attributes :id,:name,:email,:birthdate #,:author

  belongs_to :kind do
    link(:related) {v2_contact_kind_url(object.id)}
  end

  has_many :phones do
      link(:related) {v2_contact_phones_url(object.id)}
  end

  has_one :adress do
    link(:related) {v2_contact_address_url(object.id)}
  end
  def attributes(*args)
    h = super(*args)
    #FORMATO : PT_BR h[:birthdate] = (I18n.l(object.birthdate) unless object.birthdate.blank?)
    h[:birthdate] = object.birthdate.to_time.iso8601 unless object.birthdate.blank?
    h
    end
  end
end
