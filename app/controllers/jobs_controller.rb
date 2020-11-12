class JobsController < ApplicationController
  def index
    @jobs=Job.is_valid
  end
end
