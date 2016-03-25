class KeywordsController < ApplicationController

  def index
    @keyword = Keyword.all
    if params[:l_or_w] != nil
      @length = Length.where("keytype = ?", params[:l_or_w])
    else
      @length = Length.where("keytype = ?", "Letters")
    end
  end

  def show
    @length = Length.find("id = ?", params[:length_of_password])
  end

  def update_length
    @length = Length.where("keytype = ?", params[:l_or_w])
    respond_to do |format|
      format.js
    end
  end

  def generate
    @keyword = Keyword.all
    @show = "show"
    @display = view_context.generate
  end

end
