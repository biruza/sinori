class MyBaseDeviseController < ApplicationController
  layout 'pages'
  protected

  def after_sign_up_path_for(resource)
    '/questionnaire' # Or :prefix_to_your_route
  end
  def after_sign_in_path_for(resource)
    '/questionnaire' # Or :prefix_to_your_route
  end
end
