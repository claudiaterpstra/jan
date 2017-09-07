class Contact < MailForm::Base
  attribute :name
  attribute :email,     :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :message
  # Declare the e-mail headers. It accepts anything the mail method
  # in ActionMailer accepts.
  def headers
    {
      :subject => "My Contact Form",
      :to => "terpstra.claudia@gmail.com",
      :from => %("#{name}" <#{email}>)
    }
  end
end
