require 'erb'

x = 42
template = ERB.new "The value of x is: <%= x %>"
puts template.result(binding)

y = "stuff"
template = ERB.new "The value of y is: <%= y %>"
puts template.result(binding)

z = x.to_s + " " + y
template = ERB.new "The value of z is: <%= z %>"
puts template.result(binding)

myHash = {'name' => "Patrick", 'eyes' => "blue", 'age' => 56}
template = ERB.new "myHash eyes are: <%= myHash['eyes']%>"
puts template.result(binding)

page_string = "
<html>
  <body>
    <p> Here is a web page </p>
    <p> The time is now: <%= Time.now %></p>
    <p> My name is: <%= myHash['name'] %></p>
  </body>
/html>"
template = ERB.new(page_string)
puts template.result(binding)

