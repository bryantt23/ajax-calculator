class CalculatorsController < ApplicationController

  def create
    # https://rubymonk.com/learning/books/5-metaprogramming-ruby-ascent/chapters/24-eval/lessons/63-eval
    @sum = eval(params[:data])
    # text_field_tag :data in view
  end

end
