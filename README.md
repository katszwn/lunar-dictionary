<h1> >> lunarDict </h1>

A simple English-Polish-English dictionary written in Ruby and Sinatra. 

It is currently deployed on heroku and can be accessed at <h2>http://lunar-dictionary.herokuapp.com</h2>


However, if you want to run it locally, here are the requirements: 
<ul>
<li>Ruby 1.9.3</li>
<li>Sinatra 1.4.2 </li>
<li>RubyGems 2.0.3 </li>
<li>Bundler 1.3.2</li>
<li>PostgreSQL 9.1.9 </li>
</ul>

 At first, you need to run: <br>
<code>bundle install</code><br>
<code>rake db:migrate </code><br>
Then run the application: <br>
<code>ruby app.rb</code> <br>
...and type http://localhost:4567/ in your browser.

