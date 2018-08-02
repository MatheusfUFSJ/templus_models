Rails.application.routes.draw do

  if TemplusModels.configuration.registrar_rotas
    scope "(:locale)" do
      # Routes for RaroCrud
      get '/admin/crud/:model' => "crud#index", as: :crud_models
	  get '/admin/crud/:model/:id/edit' => "crud#edit", as: :edit_crud
	  delete '/admin/crud/:model/:id/destroy' => "crud#destroy", as: :destroy_crud
	  get '/admin/crud/:model/new' => "crud#new", as: :new_crud
	  get '/admin/crud/:model/query' => "crud#query", as: :query_crud
	  get '/admin/crud/:model/autocomplete' => "crud#autocomplete", as: :autocomplete_crud
	  post '/admin/crud/:model/create' => "crud#create", as: :create_crud
	  get '/admin/crud/:model/listing' => "crud#listing", as: :listing_crud
	  patch '/admin/crud/:model/:id/create' => "crud#create", as: :update_crud
	  get '/admin/crud/:model/:id/acao/:acao' => "crud#action", as: :action_crud
	  get '/admin/crud/:model/:id' => "crud#show", as: :crud_model

	  #Routes for RaroCrud Associations
	  get '/admin/crud/:model/:id/:associacao' => "crud#index", as: :crud_associacao_models
	  get '/admin/crud/:model/:id/:associacao/:associacao_id/edit' => "crud#edit", as: :edit_crud_associacao
	  delete '/admin/crud/:model/:id/:associacao/:associacao_id/destroy' => "crud#destroy", as: :destroy_crud_associacao
	  get '/admin/crud/:model/:id/:associacao/new' => "crud#new", as: :new_crud_associacao
	  get '/admin/crud/:model/:id/:associacao/query' => "crud#query", as: :query_crud_associacao
	  get '/admin/crud/:model/:id/:associacao/autocomplete' => "crud#autocomplete", as: :autocomplete_crud_associacao
	  post '/admin/crud/:model/:id/:associacao/create' => "crud#create", as: :create_crud_associacao
	  get '/admin/crud/:model/:id/:associacao/listing' => "crud#listing", as: :listing_crud_associacao
	  patch '/admin/crud/:model/:id/:associacao/:associacao_id/create' => "crud#create", as: :update_crud_associacao
	  get '/admin/crud/:model/:id/:associacao/:associacao_id/acao/:acao' => "crud#action", as: :action_crud_associacao
	  get '/admin/crud/:model/:id/:associacao/:associacao_id' => "crud#show", as: :crud_associacao_model
    end
  end
end
