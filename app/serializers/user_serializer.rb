class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email_address, :password, :carts 
  has_many :items 
  has_many :carts 
end
