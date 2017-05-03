Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get("/", {:controller => "directors", :action => "index"})
  get("/directors", {:controller => "directors", :action => "index"})

  get("/directors/delete_director/:id",{:controller => "directors", :action => "destroy_row"})
  get("/directors/new_form",{:controller => "directors", :action => "new_form"}) #rails processes top to bottom
  get("directors/create_director",{:controller => "directors", :action => "create_director"})
  get("/directors/:da_id",{:controller => "directors", :action => "show"})
  get("/directors/:da_id/edit_form",{:controller => "directors", :action => "edit_form"})
  get("/directors/update_director/:da_id",{:controller => "directors", :action => "update_row"})





end
