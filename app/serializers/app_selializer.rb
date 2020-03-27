class AppSerializer < ActiveModel::Serializer
    attributes :id, :title, :semititle,:url,:icon,:twitter,:bisinessmodel,:pratform,:body,:release
    has_many :notes 
    has_many :updates
    has_many :monetizes
    belongs_to :user
  end