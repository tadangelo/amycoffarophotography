class PagesController < ApplicationController
  before_action :authenticate_user!, :except => [:home, :about, :packages, :gallery, :contact]

  def home
  end

  def about
  end

  def packages
  end

  def gallery
  end

  def proofs
  end

  def contact
  end
end