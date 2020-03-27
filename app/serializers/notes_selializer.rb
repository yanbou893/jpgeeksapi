class NoteSerializer < ActiveModel::Serializer
    attributes :id, :body,:title
    belongs_to :app
  end