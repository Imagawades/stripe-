class Stripes
    
    def  stripe
    

        require 'stripe'
        Stripe.api_key='sk_test_51HQ1JGCYlrZAIZ5DF07BPkh31CPjgb5VoSox4y3Jkps7lblzwYa6LLw304iV7546pnPhQSuXcV5l50ijfDWTbmuE00FEvhrGDB'
    
        @stripes = Stripe::Checkout::Session.create({
          payment_method_types: ['card'],
          line_items: [{
            price:'price_1HWtFhCYlrZAIZ5DSHReK9hf',
            quantity: 1
          }],
          customer:'cus_I6mWsLUBSG4ETj',
          mode: 'subscription',
          success_url:"http://localhost:3000/success",
          cancel_url:"http://localhost:3000/home/index",
        })
       return @stripes.id
      end
 end