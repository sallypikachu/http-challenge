<<-DOC

HTTP Challenge
--------------

* Define the common HTTP verbs
  - GET:
  - POST:
  - PUT/PATCH:
  - DELETE:

* Use the tool of your choice to draw the HTTP request/response cycle.
  - include a link to your diagram, here

* Use telnet, curl, or ruby code to retrieve the messages at
  launch-academy-chat.herokuapp.com/messages

* Use telnet, curl, or ruby code to create a new message at
  launch-academy-chat.herokuapp.com/messages

  - Kernel::system method in ruby will allow you to execute command-line utilities such as curl.
  - other useful ruby libraries:
    * Net::HTTP
    * Net::Telnet

DOC

# code goes here
puts "Define the common HTTP verbs"
puts "GETS: Read"
puts "POST: Create"
puts "PUT/PATCH: Update"
puts "DELETE: Delete\n\n"

require 'net/http'
require 'uri'

puts "Retrieve the index of messages"
uri = URI.parse("http://launch-academy-chat.herokuapp.com/messages")

Net::HTTP.get_print(uri)

response = Net::HTTP.post_form(uri, {"q" => "My query", "per_page" => "50"})

puts "\nCreate a new message"
puts "curl --data \"content=WOW\" launch-academy-chat.herokuapp.com/messages \n\n"

puts "HTTP response/request cycle diagram can be found at:"
puts "https://dl.dropboxusercontent.com/u/87789399/Launch%20Academy/Screen%20Shot%202015-11-15%20at%208.35.10%20PM.png"
