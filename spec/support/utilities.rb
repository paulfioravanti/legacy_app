RSpec::Matchers::define :have_alert_message do |type, message|
  match do |page|
    page.has_selector?("div.flash.alert.alert-#{type}", text: message)
  end
end