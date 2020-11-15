module Mutations
  class AddNote < Mutations::BaseMutation
    argument :params, Types::Input::NoteInputType, required: true
    field :note, Types::NoteType, null: false

    def resolve(params:)
      args = Hash params

      begin
        note = ::Note.create! args
        { note: note } # { `note:` } symbol must match `field :note`

      rescue ActiveRecord::RecordInvalid => e
        GraphQL::ExecutionError.new("Invalid attributes for #{e.record.class}:"\
          " #{e.record.errors.full_messages.join(', ')}")
      end
    end
  end
end
