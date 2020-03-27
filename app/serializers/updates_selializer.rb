class UpdateSerializer < ActiveModel::Serializer
    attributes :id, :body
    belongs_to :app
  end