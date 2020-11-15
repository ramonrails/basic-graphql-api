module Queries
  class FetchNotes < Queries::BaseQuery
    type [Types::NoteType], null: false

    def resolve
      Note.order(created_at: :desc).limit(5)
    end
  end
end
