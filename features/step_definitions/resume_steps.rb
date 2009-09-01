Given /^A resume exists$/ do
  resume = Factory.create(:resume)
end

Then /^resume exists$/ do
  selector = 'div.resume p'
  doc = Nokogiri::HTML.parse(response.body)
  assert_match doc.css(selector).first, /Gogo Gordon/  
end
