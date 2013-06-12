Problem1::Application.routes.draw do
  root to: 'static_pages#home'
  match( '/help', to: 'static_pages#help', via: 'get' )
  match( '/about', to: 'static_pages#about', via: 'get' )
  match( '/contact', to: 'static_pages#contact', via: 'get' )
  match( '/problem1', to: 'static_pages#problem1', via: 'get' )
  match( '/problem2', to: 'static_pages#problem2', via: 'get' )
  match( '/problem3', to: 'static_pages#problem3', via: 'get' )
  match( '/problem4', to: 'static_pages#problem4', via: 'get' )
end
