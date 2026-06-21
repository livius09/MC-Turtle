--rednet.open("back")

--rednet.host("chat")

print("started chat")

while true do
    write(">")
    local send = read()
    print(send)
    if (send=="exit") then
        break
    end
end


