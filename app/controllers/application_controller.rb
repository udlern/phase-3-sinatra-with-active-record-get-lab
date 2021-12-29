class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  get "/bakeries" do
    bakeries = Bakery.all
    bakeries.to_json
  end

  get '/bakeries:id' do
    bakery = Bakery.find(params[:id])
    bakery.to_json
  end
end
