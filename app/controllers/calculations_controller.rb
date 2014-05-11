class CalculationsController < ApplicationController
  def home
  end

  def sq
  end

  def square_root
    @the_number = params[:number].to_f
    @answer = Math.sqrt(@the_number)
  end

  def pmt
  end
end
