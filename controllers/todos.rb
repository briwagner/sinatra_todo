get '/' do
  erb :default
end

get '/todos' do
  # "Welcome to todo little"
  @todos = Todo.all
  erb :index
end

post '/todos' do
  # this doesn't work
  # puts "Hello from posts todo"
  # end

  # "Hello from posts todo"
  Todo.create(description: params[:description])
  erb :confirmation
  # redirect 'todos'
end