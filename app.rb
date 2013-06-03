require 'pry'
require 'rubygems'
require 'sinatra'
require 'sinatra/activerecord'
require File.expand_path('../config/environments', __FILE__) 
require File.expand_path('../models/word', __FILE__)
 
get '/' do
	@words_count = Word.count
   erb :index
end

get '/about' do
  @words_count = Word.count
   erb :about
end

get '/credits' do
  @words_count = Word.count
   erb :credits
end

post '/find_eng_word' do
  @words_count = Word.count
  @word = Word.where(:english_word => params[:word][:english_word]).first
  if @word == nil 
    erb :word_not_found
  else 
  erb :eng_word
  end
end

post '/find_pol_word' do
  @words_count = Word.count
  @word = Word.where(:polish_word => params[:word][:polish_word]).first
  if @word == nil 
    erb :word_not_found
  else 
  erb :pol_word
  end
end

post '/create_word' do
  @words_count = Word.count
  if Word.where(:english_word => params[:word][:english_word]).first == nil 
    # >>> Problem with pk-sequence	
    #ActiveRecord::Base.connection.tables.each do |t| 
    #  ActiveRecord::Base.connection.reset_pk_sequence!(t)
    #end
    @word = Word.create!(     
    	:english_word => params[:word][:english_word],
    	:polish_word => params[:word][:polish_word],
    	:explanation => params[:word][:explanation]
    )
    erb :word_created
  else
    erb :word_already_in_db
  end
end

