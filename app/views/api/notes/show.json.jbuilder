if @message.present?

  json.message @message

else

  json.note do
    json.id @note.id

    json.created_at @note.created_at

    json.updated_at @note.updated_at

    json.content @note.content

    user = @note.user
    if user.present?
      json.user do
        json.id user.id

        json.created_at user.created_at

        json.updated_at user.updated_at

        json.fullname user.fullname
      end
    end

    json.user_id @note.user_id
  end

end
