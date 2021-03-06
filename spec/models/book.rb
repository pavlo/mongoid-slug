class Book
  include Mongoid::Document
  include Mongoid::Slug
  field :title

  slug :title, history: true
  embeds_many :subjects
  has_many :authors
end

class ComicBook < Book
end
