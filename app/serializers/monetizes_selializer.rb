class AppSerializer < ActiveModel::Serializer
    attributes :id, :date, :money
    belongs_to :app
  end