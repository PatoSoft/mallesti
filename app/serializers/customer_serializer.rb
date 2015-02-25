class CustomerSerializer < ActiveModel::Serializer
  attributes :id, :name, :address, :town, :city, :zip_code, :country, :phone, :cif, :email
end
