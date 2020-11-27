class HomeController < ApplicationController
  
  require './app/lib/stripe'
    def stripe__processing
      @stripe=Stripes.new
      stripe_id = @stripe.stripe
      render json:{id:stripe_id}
      
    end
    

  def success 
  end


end