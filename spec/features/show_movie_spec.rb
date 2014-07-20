require 'rails_helper'

describe "show a movie listing" do
  it "should contain movie details" do
    movie = Movie.create(movie_attributes(total_gross: 12312312321.00))
    visit movie_url(movie)

    expect(page).to have_text(movie.title)
    expect(page).to have_text(movie.rating)
    expect(page).to have_text("$12,312,312,321.00")
    expect(page).to have_text(movie.released_on)
    expect(page).to have_text(movie.description[0..9])
  end
end
