class PicturesController < ActionController::Base
  def create
    respond_to do |format|
      format.json { render json: {}.to_json }
    end
  end
end
