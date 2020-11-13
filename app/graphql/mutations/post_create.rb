module Mutations
  class PostCreate < BaseMutation
    field :post, Types::PostType, null: false

    argument :user_id, ID, required: true
    argument :title, String, required: true
    argument :content, String, required: true

    def resolve(user_id:, title:, content:)
      post = Post.new(user_id: user_id, title: title, content: content)

      if post.save
        { post: post }
      else
        raise "TODO: figure out error handling"
        # return errors in the error case
      end
    end
  end
end
