class Business < ApplicationRecord
  validates :name, :type, :description, :location, :phone, presence: true

  scope :search, -> (name_parameter) { where("favorite business", "%#{name_parameter}%#")}
end