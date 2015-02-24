class CustomerSerializer < ActiveModel::Serializer
  attributes :id
  attributes :name
  attributes :address
  attributes :town
  attributes :city
  attributes :zip_code
  attributes :country
  attributes :phone
  attributes :cif
  attributes :email
end
