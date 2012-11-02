require 'spec_helper'

describe 'Routing for Movie(s)' do
  fixtures :movies

  it "should route 'movies/similar_to/:id' to movies controller with action similar_to" do
    movie = movies( :star_wars )
    { :get => "/movies/similar_to/#{movie.id}" }.should route_to( :controller => 'movies',
                                                                  :action     => 'similar_to',
                                                                  :movie      => movie.id.to_s )
  end

end
