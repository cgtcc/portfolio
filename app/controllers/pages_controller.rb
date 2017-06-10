class PagesController < ApplicationController
  def home
    @posts = Blog. published
    @skills = Skill.all
  end

  def about
  end

  def contact
  end
end
