Given /^the following movies exist:$/ do |table|
  table.hashes.each do | movie |
    stored_movie = Movie.where( title: movie['title'] )
    if stored_movie.any?
      stored_movie.title = movie.title if stored_movie.title != movie.title
      stored_movie.rating = movie.rating if stored_movie.rating != movie.rating
      stored_movie.director = movie.director if stored_movie.director != movie.director
      stored_movie.release_date = movie.release_date if stored_movie.release_date != movie.release_date
      stored_movie.save
    else
      Movie.create( movie )
    end
  end
end

Then /^the (\w+) of "(.+)" should be "(.+)"$/ do | field, title, value |
  Movie.where( title: title ).first()[field].should == value
end
