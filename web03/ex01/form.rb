#!/usr/bin/env ruby
puts "HTTP/1.0 200 OK"
puts "Content-type: text/html\n\n"
puts "<html><body>This is a test</body></html>"
require "cgi"
cgi = CGI.new("html3")  # add HTML generation methods
cgi.out{
  cgi.asp{
    cgi.head{ "\n"+cgi.title{"This Is a Test"} } +
    cgi.body{ "\n"+
      cgi.form{"\n"+
        cgi.hr +
        cgi.h1 { "A Form: " } + "\n"+
        cgi.textarea("get_text") +"\n"+
        cgi.br +
        cgi.submit
      }
    }
  }
}
