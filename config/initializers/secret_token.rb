if Rails.env.production? && ENV['SECRET_TOKEN'].blank?
  raise 'SECRET_TOKEN environment variable must be set!'
end

LegacyApp::Application.config.secret_token =
  ENV['SECRET_TOKEN'] || '7559847f08785b6f756c0d9ff79433eaa043892ff94f91cd19ecd6a74918f306d6ca03a951a32ea64ecfbe2875bd282f8084ae15dfb97ebe900749d30b20dc83'