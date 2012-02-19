def clear; '<div class="clear"><!-- --></div>' end

def update_session
  session[:path] = params['project']

  comma = params['project'] =~ /,/
  if comma
    session[:project] = params['project'].slice(0,comma)
  else
    session[:project] = params['project']
  end
end

# return string of kerberos user or false
def authenticate
  if ENV['RACK_ENV'] == 'development' or ENV['RACK_ENV'] == 'qa'
    return settings.user
  end

  user = request.env["HTTP_AUTHORIZATION"]

  if user
    user = Base64.decode64(user[6,user.length-6])[/\w+/]
    return user
  end

  return false
end

