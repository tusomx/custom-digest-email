# name: custom-digest-email
# about: Customizes the digest email template
# version: 0.1
# authors: Kudzai Tuso

after_initialize do

  custom_views_path = File.expand_path("../app/views", __FILE__)

# For admin preview
::Admin::EmailController.prepend_view_path(custom_views_path)
  
# For actual emails sent to users
::UserNotifications.prepend_view_path(custom_views_path) if defined?(::UserNotifications)

# For the email renderer (used by both)
::Email::Renderer.prepend_view_path(custom_views_path) if defined?(::Email::Renderer)
end


