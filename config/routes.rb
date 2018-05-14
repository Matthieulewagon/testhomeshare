Rails.application.routes.draw do

  devise_for :users

  get 'sitemap.xml', :to => 'sitemap#index', :defaults => {:format => 'xml'}

  get 'welcome_to_brussels/show'

  get 'bxl/show'

  get 'speakers/show'

  get 'programme/show'

  get 'plan_homeshare/show'

  get 'register_and_contact/show'

  get 'press_and_media/show'

  get 'homeshare_international/show'

  get 'about_homeshare/show'

  get 'programmes_bxl/show'

  get 'shared/_navbar'

  root to: 'pages#home'
end

