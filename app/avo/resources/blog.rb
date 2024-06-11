class Avo::Resources::Blog < Avo::BaseResource
  self.includes = []
  # self.search = {
  #   query: -> { query.ransack(id_eq: params[:q], m: "or").result(distinct: false) }
  # }

  def fields
    field :id, as: :id
    field :title, as: :text
    field :content, as: :textarea
    field :status, as: :boolean
    field :author, as: :text
    field :user_id, as: :number
    field :user, as: :belongs_to
  end
end
