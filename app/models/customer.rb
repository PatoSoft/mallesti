class Customer
  include Mongoid::Document
  include Mongoid::Timestamps

  field :name,        type: String
  field :address,     type: String
  field :town,        type: String
  field :city,        type: String
  field :zip_code,    type: String
  field :country,     type: String
  field :phone,       type: String
  field :cif,         type: String
  field :email,       type: String

  has_many :projects

  validates :name, presence: true
  validates :address, presence: true
  validates :town, presence: true
  validates :city, presence: true
  validates :country, presence: true
  validates :phone, presence: true
  validates :cif, presence: true, uniqueness: { case_sensitive: false }
  validates :email, presence: true, uniqueness: { case_sensitive: false },
    format: Devise.email_regexp
end
