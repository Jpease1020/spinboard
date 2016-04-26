class Api::V1::LinksController < Api::ApiController
  respond_to :json
  def index
    respond_with current_user.links.all
  end

  private

  def link_params
    params.permit(:title, :url, :change)
  end
end
