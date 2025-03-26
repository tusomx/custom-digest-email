# name: custom-digest-email
# about: Customizes the digest email template
# version: 0.1
# authors: Kudzai Tuso

after_initialize do
  EmailController.prepend_view_path File.expand_path("../views", __FILE__)
end