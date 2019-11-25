if Rails.env.production?
Paperclip::Attachment.default_options[:url] = 'pingood.senn.s3.amazonaws.com'
end
