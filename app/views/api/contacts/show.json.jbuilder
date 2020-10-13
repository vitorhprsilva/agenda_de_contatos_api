json.id contact.id
json.nome contact.nome
json.email contact.email
json.foto_url rails_blob_path(contact.foto) if contact.foto.attached?