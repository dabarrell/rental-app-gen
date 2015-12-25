class PagesController < ApplicationController

  before_action :require_user, only: [:index, :show]

  def home
  end

end
