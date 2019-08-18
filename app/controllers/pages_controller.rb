class PagesController < ApplicationController

  def about
  end

  def home
    @hat1 = Hat.all[-1]
    @hat2 = Hat.all[-2]
    @hat3 = Hat.all[-3]
  end

end
