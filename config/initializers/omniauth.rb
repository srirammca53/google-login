OmniAuth.config.full_host = "http://localhost:3000"

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google, '636468651159.apps.googleusercontent.com', '4WOlxjuKHcS7T3RxbufzgvK7', :scope => 'https://mail.google.com/mail/feed/atom/' 
end

