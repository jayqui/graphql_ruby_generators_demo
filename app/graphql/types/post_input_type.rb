module Types
  class PostInputType < BaseInputObject
    argument :user_id, ID, required: false
    argument :title, String, required: true
    argument :content, String, required: true
  end
end
