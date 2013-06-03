<h1> >> lunarDict </h1>

A simple English-Polish-English dictionary written in Ruby and Sinatra. 

It is currently deployed on heroku and can be accessed at <h2>http://lunar-dict.herokuapp.com/</h2>. 

However, if you want to run it locally, here are the requirements: 
<ul>
<li>Ruby 1.9.3</li>
<li>Sinatra 1.4.2 </li>
<li>RubyGems 2.0.3 </li>
<li>Bundler (1.3.2)</li>
<li>PostgreSQL 9.1.9 </li>
</ul>

At first, you need to create a psql database and set database data (name, user, password) in 'environments.rb' and 'database.yml'
Then run:
<code>bundle install</code>
<code>rake db:migrate </code>
Now you need to restore the database from dict.dump file (f.ex. using pg_dump).
Then change directory to the project's, run the application: 
<code>ruby app.rb</code>
...and type http://localhost:4567/ in your browser.

