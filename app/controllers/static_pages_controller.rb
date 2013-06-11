class StaticPagesController < ApplicationController
  def home
  end

  def help
  end

  def about
  end

  def contact
  end

  def problem1
    @answer = 0
    @multiples = Array.new
    for i in 1 .. params[:max].to_i - 1
      if ((i % 3 == 0) && (i % 5 == 0))
        @multiples.push( i )
      elsif (i % 3 == 0)
        @multiples.push( i )
      elsif (i % 5 == 0)
        @multiples.push( i )
      end
    end
    @multiples.each do |n|
      @answer += n
    end
  end
end
