print("starting server")
print("enter radio name: ")
local radioname = read()
rednet.open("back")
rednet.host("radio_server", radioname)

while true do
    
end