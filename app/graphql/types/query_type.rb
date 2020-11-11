module Types
  class QueryType < Types::BaseObject
    field :posts, [Types::PostType], 'Returns all blog posts', null: false

    def posts
      Post.all
    end
  end
end
