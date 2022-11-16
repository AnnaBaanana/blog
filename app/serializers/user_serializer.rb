class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :password_digest, :email, :first_name, :last_name, :image_url, :is_author, :bio, :author_started_at, :author_ended_at
end
