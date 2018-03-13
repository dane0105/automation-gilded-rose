require 'capybara/dsl'

class GoogleShopping
  include Capybara::DSL

  def verify_search(string)
    within 'div.sh-pr__product-results' do
      result = first'div.psli h3'
      if result.text.slice(string).nil?
        fail
      end
    end
  end

  def click_on_books_category
    find('span[title=Books]').click
    sleep(2)
  end
  
  def click_on_EatBig_category
    find('span[title=EatBig]').click
    sleep(2)
  end
  
  def verify_shopping(string)
    elements = all('div.pslline')
    case "string"
    when 'ocado'
      elements.each do |element|
        unless element.text =~ /Ocado/
          fail
        end
    when 'EatBig'
        elements.each do |element|
          unless element.text =~ /EatBig/
            fail
          end    
      end
    end
  end
end
