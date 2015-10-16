require 'drb/drb'
DRb.start_service
remote_object = DRbObject.new_with_uri("druby://localhost:8787")
remote_object.push "hello", "network"
p remote_object.last
