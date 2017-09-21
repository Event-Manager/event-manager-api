class PublicController < ApplicationController
  def health_check
    render :ok
  end
end
