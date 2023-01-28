class FortunesController < ApplicationController
  def horoscopes
    @zodiac = params.fetch("the_sign")
    @horoscope = Zodiac.list.fetch(@zodiac.to_sym).fetch(:horoscope)

    @array_of_numbers = Array.new
    5.times do
      another_number = rand(1...100)
      @array_of_numbers.push(another_number)
    end

    render({ :template => "/horoscope_templates/horoscope.html.erb" })
  end
end
