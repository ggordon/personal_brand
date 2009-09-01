class ResumesController < ApplicationController
  def show
    @resume = Resume.first
  end
end
