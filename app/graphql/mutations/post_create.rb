module Mutations
  class PostCreate < BaseMutation
    field :post, Types::PostType, null: false

    argument :attributes, Types::PostInputType, required: true

    def resolve(attributes:)
      post = Post.new(attributes.to_h)

      if post.save
        { post: post }
      else
        raise "TODO: figure out error handling"
        # return errors in the error case
      end
    end
  end
end
