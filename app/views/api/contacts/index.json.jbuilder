json.array! @contacts do |contact|

    json.id contact.id
    json.nome contact.name
    json.email contact.email
    # json.foto_url rails_blob_path(contact.foto) if contact.foto.attached?

end