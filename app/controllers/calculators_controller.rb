class CalculatorsController < ApplicationController
  #
  # def create
  #   # https://rubymonk.com/learning/books/5-metaprogramming-ruby-ascent/chapters/24-eval/lessons/63-eval
  #   @sum = eval(params[:data])
  #   # text_field_tag :data in view
  # end


  # def calculate
  def create
    op = params[:op_id]
    a = params[:a].to_f
    b = params[:b].to_f
    calc = Calculation.new(a, b)

    case op
    when '1'
      @result = calc.add
    when '2'
      @result = calc.subtract
    when '3'
      @result = calc.multiply
    else
      @result = calc.add
    end
  end


end
