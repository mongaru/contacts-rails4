# Load the Rails application.
require File.expand_path('../application', __FILE__)

# remove the field_with_error class on the forms when a validation is done on a field
# https://coderwall.com/p/s-zwrg/remove-rails-field_with_errors-wrapper
ActionView::Base.field_error_proc = Proc.new do |html_tag, instance|
  html_tag.html_safe
end

# Initialize the Rails application.
Rails.application.initialize!

