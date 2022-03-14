json.user do |json|
  json.partial! 'registered_users/user', user: @current_user
end