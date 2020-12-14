class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email_address, :password, :carts 
end
