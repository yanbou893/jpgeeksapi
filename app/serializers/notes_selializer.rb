class NoteSerializer < ActiveModel::Serializer
    attributes :id, :body,:title, :user_id,:app_id
    belongs_to :app
    belongs_to :user
  end