-- Script made by AstronomicalGaming

-- Optimization by BlixerTheGameBananer

function onEvent(eventName, value1, value2)
local playVideo = true    
    if eventName == "playvideo" then -- feel free to change lua script name     
        startVideo(value1); -- put video name here, video should be in mod/your_mod/videos and should be .mp4
        return Function_Continue;
    end     
end


