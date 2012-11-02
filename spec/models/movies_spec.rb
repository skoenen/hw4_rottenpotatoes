require 'spec_helper'

describe Movie do

  it "should respond to similar_to method" do
    Movie.new.should respond_to( :similar_to )
  end

end
