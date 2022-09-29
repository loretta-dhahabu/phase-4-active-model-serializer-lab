class AuthorPostSerializer < ActiveModel::Serializer
  attributes :title, :short_content


  def short_content
    "#{self.object.content[0...40]...}"
  end


  has_many :tags
end
