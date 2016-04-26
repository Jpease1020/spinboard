class LinksController < ApplicationController

  def index
  end

  def create
    link = Link.new(link_params)
    link.user_id = current_user.id
    if link.save
      flash[:notice] = "Link Created"
      redirect_to links_path
    else
      flash[:error] = "Invalid Link"
      redirect_to links_path
    end
  end
  private

  def links_params
    params.require(:link).permit(:title, :url)
  end

end
