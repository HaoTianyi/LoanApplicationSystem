
LoanApplicationSystem::Application.routes.draw do
	root :to => 'user#index'
  
  resources :apps
  
  match "/:ver/:current_user/apps" => 'apps#show_forms'
  match "/:ver/:current_user/wait_for_verify" => 'apps#wait_for_verify'
  match "/:ver/:current_user/failed_to_verify" => 'apps#failed_to_verify'
  match "/:ver/:current_user/reviewed" => 'apps#reviewed'
  match "/:ver/:current_user/ended_apps" => 'apps#ended_apps'
  match "/:ver/:current_user/search" => 'apps#search'
  
  # User 
  
  match "/:ver/init_admin" => "user#init_admin"
  match "/:ver/initialize/:ticket/" => 'user#init'
  match "/:ver/forgot_password" => 'user#forgot_password'
  match "/:ver/login" => 'user#login'
  match "/:ver/:current_user/logout" => 'user#logout'
  match "/:ver/:current_user/edit_profile" => 'user#edit_profile'
  match "/:ver/:current_user/save_profile" => 'user#save_profile'
  match "/:ver/:current_user/add_user" => 'user#add_user'
  
  # App
  
  match "/:ver/:current_user/delete/:id" => 'apps#delete'
  match "/:ver/:details/check" => 'apps#check'
  match "/:ver/:current_user/user_management" => 'user#user_management'
  match "/:ver/:user_name/removeuser" => 'user#remove'
  match "/:ver/:current_user/new_user" => 'apps#new_user'
  match "/:ver/:current_user/new_userc" => 'user#new_userc'
  match "/:ver/:current_user/change_to_status_(:s1)_from_(:s0)/:id" => 'apps#changes'
  
  # Form
  match "/:ver/:current_user/new_(:app_type)_form" => 'forms#new_form'
  match "/:ver/:current_user/export" => 'apps#export'
  
  #Output PDF
  match "/:ver/:current_user/output" => "apps#output"
  
end
