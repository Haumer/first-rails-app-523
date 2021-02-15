class PagesController < ApplicationController

  def about

    this_is_invalid = "asdasds"

    @members = [ "Anne", "Alex", "Arthur", "Ben", "Reb"]
    if params[:member].present?
      @members = @members.select do |member|
        member.start_with?(params[:member])
      end
    end
  end

  def home
  end

  def contact
  end
end
