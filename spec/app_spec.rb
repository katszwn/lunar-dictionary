require 'spec_helper'

describe "app" do

  it "should load index page" do
    get '/'
    last_response.should be_ok
    last_response.body.should match(/Pick a word to translate!/)
  end

  it "should load about page" do
    get '/about'
    last_response.should be_ok
    last_response.body.should match(/kat.szwn[at]gmail.com/)
  	
  end	

  it "should load credits page" do
    get '/credits'
    last_response.should be_ok
    last_response.body.should match(/Bootstrap/)
    
  end 

end
