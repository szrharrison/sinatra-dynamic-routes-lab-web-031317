require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do
    "#{params[:name].reverse}"
  end

  get '/square/:number' do
    @number = params[:number]
    @sq = @number.to_i**2
    "#{@sq}"
  end

  get '/say/:number/:phrase' do
    @phrase = params[:phrase]
    @num = params[:number].to_i
    full_text = @phrase + "\n"
    "#{full_text * @num}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    word1 = params[:word1]
    word2 = params[:word2]
    word3 = params[:word3]
    word4 = params[:word4]
    word5 = params[:word5]
    sentence = [word1, word2, word3, word4, word5].join(' ') + '.'
    "#{sentence}"
  end

  get '/:operation/:number1/:number2' do
    operation = params[:operation]
    num1 = params[:number1].to_i
    num2 = params[:number2].to_i

    case operation
    when 'add'
      answer = num1 + num2
    when 'subtract'
      answer = num1 - num2
    when 'multiply'
      answer = num1 * num2
    when 'divide'
      answer = num1 / num2
    end
    "#{answer}"
  end
end
