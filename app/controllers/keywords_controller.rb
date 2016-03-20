class KeywordsController < ApplicationController

  def index
    if params[:length_of_password]
      @keyword = Keyword.all
    end
  end

  def new
    @keyword = Keyword.all
  end

end
