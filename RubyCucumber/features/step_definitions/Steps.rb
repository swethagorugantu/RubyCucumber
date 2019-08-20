require 'rubygems'
require 'selenium-webdriver' 

chromedriver_path = File.join(File.absolute_path('', File.dirname("C:/Program Files/Chromedriver/")),"Chromedriver","chromedriver.exe")
Selenium::WebDriver::Chrome.driver_path = chromedriver_path
$driver = Selenium::WebDriver.for :chrome 

Given("User is on Home page") do
  $driver.navigate.to "http://google.com"
end

When("User enters search item") do
  element = $driver.find_element(:name,"q").send_keys("Google")
end

When("User clicks on Search") do

  $driver.find_element(:xpath,"//input[@value='Google Search']").click
end

Then("User navigates to search result of links to related websites") do
  
  puts driver.title
    puts "Search was successful"
    $driver.quit
end