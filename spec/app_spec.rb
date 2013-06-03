require 'spec_helper'

describe "app" do

  it "should load index page" do
    get '/'
    last_response.should be_ok
    last_response.body.should match(/Pick a word to translate!/)
  end

  it "should find an english word and print its translation" do
  	@word = Word.where(:english_word => 'house')
  	visit '/find_eng_word'
  	
  end	

  it "should find a polish word and print its translation" do
  	@word = Word.where(:polish_word => 'dom')

  end	

end