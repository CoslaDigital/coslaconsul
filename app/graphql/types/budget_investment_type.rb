module Types
  class Budget_investmentType < Types::BaseObject
    field :comments, Types::CommentType.connection_type, null: true
    field :comments_count, Integer, null: true
    field :description, String, null: true
    field :geozone, Types::GeozoneType, null: true
    field :geozone_id, Integer, null: true
    field :id, ID, null: false
    field :public_author, Types::UserType, null: true
    field :public_created_at, String, null: true
    field :tags, Types::TagType.connection_type, null: true
    field :title, String, null: true
    field :video_url, String, null: true

    def tags
      object.tags.public_for_api
    end

    def geozone
      Geozone.public_for_api.find_by(id: object.geozone)
    end
  end
end
