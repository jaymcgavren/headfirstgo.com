require 'drb/drb'

my_object = []
DRb.start_service("druby://localhost:8787", my_object)
20.times do
  sleep 10
  p my_object
end
DRb.thread.join
