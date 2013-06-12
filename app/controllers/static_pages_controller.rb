require 'prime'

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

  def problem2
    @answer = 0
    penultimate = 1
    ultimate = 1
    fibanacci = 2
    while (fibanacci < params[:max].to_i)
      fibanacci = penultimate + ultimate
      penultimate = ultimate
      ultimate = fibanacci
      if (fibanacci % 2 == 0) then @answer += fibanacci end
    end
  end

  def problem3
    @answer = 0
    Prime.each( Math.sqrt( params[:max].to_i ) ) do |prime|
      if (params[:max].to_i % prime == 0) then @answer = prime end
    end
  end

  def problem4
    @answer = 0
    for i in 1 .. params[:max].to_i
      for j in 1 .. params[:max].to_i
        product = i * j
        if ((product > @answer) && StaticPage.palindrome( product )) then
          @answer = product
        end
      end
    end
  end
end
