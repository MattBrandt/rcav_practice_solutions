class CalculationsController < ApplicationController
  def home
  end

  def sq
    @the_number = params[:number].to_f
    @answer = @the_number ** 2
  end

  def sqrt
    @the_number = params[:number].to_f
    @answer = Math.sqrt(@the_number)
  end

  def pmt
    # The route that sends us to this method is:
    # get("/payment/:interest_rate/:number_of_payments/:present_value", { :controller => "calculations", :action => "pmt" })

    rate = params[:interest_rate].to_f/100
    nper = params[:number_of_payments].to_f
    pv = params[:present_value].to_f

    # Formula from http://en.wikipedia.org/wiki/Mortgage_calculator
    @payment = (rate * pv) / (1 - (1 + rate)**-nper)
  end
end
