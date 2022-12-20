require "opal"
# Uncomment the following to print out you're hello-world with Opal:
#   puts "hello world!"
#
# The following will append a hello-world to your <body> element:
#
#   require "native"
#   $$[:document].addEventListener :DOMContentLoaded do
#     $$[:document][:body][:innerHTML] += '<h2>Hello World!</h2>'
#   end

Document.ready? do
  current_url = Element.find('.legislation_website').attr[:href]
  Element.find('.legislation_website').on :click do
    current_page_url = Element.find('.legislation_website').attr[:href]
    if current_page_url != current_url
      Element.find('.current_website').html = current_page_url
    end
  end
end
