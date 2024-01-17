class Avo::Resources::Session < Avo::BaseResource
  self.includes = []
  # self.search = {
  #   query: -> { query.ransack(id_eq: params[:q], m: "or").result(distinct: false) }
  # }

  def fields
    field :id, as: :id
    field :user, as: :belongs_to
    field :user_id, as: :number
    field :user_agent, as: :text, hide_on: [:index]
    field :ip_address, as: :text, hide_on: [:index]
  end
end
