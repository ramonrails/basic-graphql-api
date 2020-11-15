# README

Run: `rails server`

GraphQL examples:
```
# # create new note
# mutation {
#   addNote(input: {
#     params: {
#       title: "title-4",
#       body: "body-4"
#     }
#   }) {
#     note {
#       title
#       body
#     }
#   }
# }

# # query single note
# query {
#   fetchNote(id: 4) {
#     id
#     title
#     body
#   }
# }

# # query all notes
# query {
#   fetchNotes {
#     id
#     title
#     body
#   }
# }
```
