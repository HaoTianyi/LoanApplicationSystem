class ChController < ApplicationController
  def index
  end
  def show
     @id = params[:id]
  end
  def apply
     @id = params[:ch_id]
  end
end
