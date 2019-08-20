require 'rubygems'
require 'selenium-webdriver'

begin
 
chromedriver_path = File.join(File.absolute_path('', File.dirname("C:/Program Files/Chromedriver/")),"Chromedriver","chromedriver.exe")
Selenium::WebDriver::Chrome.driver_path = chromedriver_path
driver = Selenium::WebDriver.for :chrome

    driver.get "http://google.com"
    
    driver.find_element(:name,"q").send_keys("fhgkfjghskjahsjk")
  
    driver.find_element(:xpath,"//input[@value='Google Search']").click
 
    puts driver.title
      
    puts "Search was successful: No matching websites found"

end

 