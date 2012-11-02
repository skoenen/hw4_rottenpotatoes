require 'spec_helper'

describe MoviesController do
  fixtures :movies

  it "should handle similar_to" do
    MoviesController.new().should respond_to( :similar_to )
  end

  it "should redirect to main page if we want similar movies to a one that has no director" do
    movie = movies( :alien )
    get :similar_to, :movie => movie.id
    response.should redirect_to( :action => :index )
  end

end
