class AuthorSerializer < ActiveModel::Serializer
  attributes :name, :profile

  has_one :profile, serializer: AuthorProfileSerializer
  
  has_many :posts, serializer: AuthorPostSerializer
end
