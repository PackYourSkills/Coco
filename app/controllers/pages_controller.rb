class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @nest = Nest.new
  end
end
