require 'io/console'
$terminal_width = IO.console.winsize[1] ## this gets the width of the terminal


def intro()
    system "clear"
    puts "*" * $terminal_width
    puts ""
    puts "Welcome to Your Coder Academy Journey"
    puts ""
    puts "*" * $terminal_width
    puts ""
end