require_relative "config/environment"

class App < Sinatra::Base

  # Write your code here!
  get "/reversename/:name" do
    @name = params[:name]
    @name.reverse!
  end

  get "/square/:number" do
    @number = params[:number].to_i
    @squared = @number * @number
    return @squared.to_s
  end

  get "/say/:number/:phrase" do
    @name = params[:phrase]
    @number = params[:number].to_i
    @name * @number
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
  end

  get "/:operation/:number1/:number2" do
    @operation = params[:operation]
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i

    case @operation
    when "add"
      (@number1 + @number2).to_s
    when "subtract"
      (@number1 - @number2).to_s
    when "multiply"
      (@number1 * @number2).to_s
    when "divide"
      (@number1 / @number2).to_s
    else
      puts "I don't know!"
    end
  end
end
