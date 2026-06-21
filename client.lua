print("starting radio")
local speaker = peripheral.find("speaker")
rednet.open("back")
rednet.host("radio_recive")

local computers = {rednet.lookup("radio_server")}


local server_sender = computers[0]
print("reciving from: ")
print(server_sender)

while true do

    --radio_recive 
    local decoder = dfpwm.make_decoder()
    --decode
    local audio_text = rednet.receive("radio_server")

    local decoder = dfpwm.make_decoder()

    local audio = decoder.decode(audio_text)



    while not speaker.playAudio(audio) do
        os.pullEvent("speaker_audio_empty")
    end

end



