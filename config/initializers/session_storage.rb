if Rails.env === 'production' 
    Rails.application.config.session_store :cookie_store, key: '_proyectofinal_back', domain: 'proyectofinal_front'
  else
    Rails.application.config.session_store :cookie_store, key: '_proyectofinal_back' 
  end