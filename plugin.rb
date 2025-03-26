# name: custom-digest-email
# about: Customizes the digest email template
# version: 0.1
# authors: Kudzai Tuso

after_initialize do
  module ::CustomDigestEmail
    def template_path(template)
      return "#{Rails.root}/plugins/custom-digest-email/views/user_notifications/custom_digest" if template == "user_notifications.digest"
      super(template)
    end
  end

  Email::Renderer.prepend CustomDigestEmail
end