class PagesController < ApplicationController
  def index
  end
  def terms
    @term_and_conditions=TermAndCondition.all
  end

end
