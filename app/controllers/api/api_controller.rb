class Api::ApiController < ApplicationController

  def update
    if params[:change]
      link = Link.find(params[:id])
      link.update_attributes(read: !link.read)
      render json: link
    else
      link = Link.find(params[:id])
      link.update(link_params)
      render json: link
    end
  end

  private

  def link_params
    params.permit(:title, :url, :change, :id)
  end

end
