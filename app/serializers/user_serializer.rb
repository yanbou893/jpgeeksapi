class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email,:photo,:intro,:uid
  has_many :apps 
end