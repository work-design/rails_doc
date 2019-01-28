Rails.application.routes.draw do

  scope :doc, module: 'doc', as: :doc do
    root 'homes#index'
  end

end
