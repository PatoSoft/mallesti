Rails.application.routes.draw do
	# Rutas para los recursos relacionados con CUstomer
	resources :customers, except: [:new, :edit]
end
