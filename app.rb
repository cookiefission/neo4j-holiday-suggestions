require './models/holiday'

get '/' do
  @holidays = Holiday.all

  erb :index
end

get '/holiday/:region' do
  @holiday = Holiday.find(params[:region]) or redirect to('/')

  erb :holiday
end

get '/fresh_session' do
  redirect to('/')
end
