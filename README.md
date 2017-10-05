# Good Form

Form backend that emails forms contents to an email address via sendgrid.

POST request to your-domain.com/forms

Environment variables:

    ENV["SITE_DOMAIN"]
    ENV["SITE_RETURN_URL"]
    ENV["MAILTO_ADDRESS"]
    ENV["MAILTO_SUBJECT"]
    ENV['SENDGRID_USERNAME']
    ENV['SENDGRID_PASSWORD']
