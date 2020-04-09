class UserSerializer < ActiveModel::Serializer
  attributes :id, :displayName, :email,:photoURL,:intro,:uid
  has_many :apps 
  has_many :notes 
  has_many :monetizes
end