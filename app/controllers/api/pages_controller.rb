class Api::PagesController < ApplicationController
  def index
    render "params.json.jb"
  end
end
