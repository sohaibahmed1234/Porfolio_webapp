class PagesController < ApplicationController
  protect_from_forgery except: :index
  def index
  end
end
