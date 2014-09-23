class PagesController < ApplicationController
  def home
  end

  def about
    @title = "About"
    @description = "The World Pro Skiing Foundation Mission"
  end

  def donate
    @title = "Donate"
    @description = "Make a Donation to Support the World Pro Skiing Foundation"
  end
end
