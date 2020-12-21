class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email_address, :password, :carts, :current_cart_pls 
  #has_many :items 
  has_many :carts 
  has_many :reviews 
end
