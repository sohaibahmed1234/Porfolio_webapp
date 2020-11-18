class PagesController < ApplicationController
  def index
  end
  def terms_and_conditions
    @term_and_conditions=TermAndCondition.all
  end

end
