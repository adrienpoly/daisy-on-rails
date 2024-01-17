class Avo::Resources::User < Avo::BaseResource
  self.title = :admin_title
  self.includes = []
  self.search = {
    query: -> { query.ransack(email_cont: params[:q], id_eq: params[:q], m: "or").result(distinct: true) }
  }

  def fields
    field :id, as: :id, link_to_record: true
    field :email, as: :text, link_to_record: true
    field :first_name, as: :text
    field :last_name, as: :text
    field :admin, as: :boolean, link_to_record: true
    field :verified, as: :boolean, hide_on: [:index]
    field :sessions, as: :has_many
  end
end
