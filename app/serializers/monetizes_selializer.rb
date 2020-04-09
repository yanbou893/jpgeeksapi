class AppSerializer < ActiveModel::Serializer
    attributes :id, :date, :money, :user_id,:app_id
    belongs_to :app
    belongs_to :user
  end