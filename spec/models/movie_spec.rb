require 'rails_helper'

describe "Movie" do
  it "is a flop movie if the gross is less than $50M" do
    movie = Movie.new(total_gross: 40000000.00)
    expect(movie.flop?).to eq(true)
  end
  it "is not a flop movie if the gross is more than $50M" do
    movie = Movie.new(total_gross: 60000000.00)
    expect(movie.flop?).to eq(false)
  end
end
