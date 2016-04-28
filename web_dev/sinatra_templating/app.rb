# require gems
require 'sinatra'
require 'sqlite3'

set :public_folder, File.dirname(__FILE__) + '/static'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# show students on the home page
get '/' do
  @students = db.execute("SELECT * FROM students")
  erb :home
end

get '/students/new' do
  erb :new_student
end

# create new students via
# a form
post '/students' do
  db.execute("INSERT INTO students (name, campus, age) VALUES (?,?,?)", [params['name'], params['campus'], params['age'].to_i])
  redirect '/'
end

# still playing with this....
# to search a current student via a form
get '/students/search_student' do
	erb :search_student
end

post '/students/search' do
	@student = db.execute("SELECT * FROM students WHERE name=?", [params['name']])
	puts @student
	puts "*****"
	redirect '/students/search_student'
end

# delete a student via a form
get '/students/delete' do
	erb :delete_student
end

post '/students/erase' do
  db.execute("DELETE FROM students WHERE name=?", params['name'])
  return
  redirect '/'
end

# add static resources