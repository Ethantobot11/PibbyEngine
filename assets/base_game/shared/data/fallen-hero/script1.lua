local followchars = true;
local focus=false

function onCreatePost()
makeLuaText('lyr', ' ', 0,170,470)
setTextSize('lyr', 60)
doTweenColor('lyrZ', 'lyr', '778899', 0.01, 'linear')
setObjectCamera('lyr', 'other')
setTextFont('lyr', 'Finn.ttf')
addLuaText('lyr', true)
end

function onEvent(name,value1,value2)
if name == 'Ansfoxy' then 
if value1 == 'intro' then
setProperty('defaultCamZoom',0.90)
doTweenAlpha("white1","white", 5, 000000.1, 'linear');
doTweenAlpha("white2","white", 0, 1, 'linear');
doTweenAlpha('fadeInn', 'camHUD', 1, 0.1, 'linear')
doTweenAlpha("c2A","c2", 0, 0.1, true);
introfocada=false
end

if value1 == 'pibby' then
triggerEvent('Ansfoxy', 'comeon', '')
triggerEvent('Play Animation', 'cmon', 'gf')
focus=true
runTimer('pibby',2);
end

if value1 == 'cinema1' then
doTweenX('cX', 'c.scale', 1, 0.5, 'linear')
doTweenY('cY', 'c.scale', 1, 0.5, 'linear')
end

if value1 == 'white' then
doTweenAlpha("white1","white2", 1, 0.001, 'linear');
doTweenAlpha("white2","white2", 0, 1, 'linear');
end

if value1 == 'white2' then
doTweenAlpha("blackA","black", 0, 0.001, true);
doTweenAlpha("white1","white", 5, 0.001, 'linear');
doTweenAlpha("white2","white", 0, 1, 'linear');
end

if value1 == 'cinema2' then
doTweenX('cX', 'c.scale', 2, 0.5, 'linear')
doTweenY('cY', 'c.scale', 2, 0.5, 'linear')
end

if value1 == 'cinema3' then
doTweenX('cX', 'c.scale', 1, 0.5, 'linear')
doTweenY('cY', 'c.scale', 1, 0.5, 'linear')
doTweenAlpha("white1","white", 5, 0.001, 'linear');
doTweenAlpha("white2","white", 0, 1, 'linear');
end

if value1 == 'blacker' then
doTweenAlpha("blackA","black", 1, 0.001, true);
end

if value1 == 'blacker2' then
doTweenAlpha("black","black", 0, 6, true);
doTweenAlpha("BFA","boyfriend", 0.2, 0.0001, true);
doTweenAlpha("DADA","dad", 0.4, 0.0001, true);
end

if value1 == 'finaph' then
doTweenAlpha("DADC","dad", 1, 0.0001, true);
end

if value1 == 'black1' then
cam=false
doTweenX('cX', 'c.scale', 1, 0.0001, 'linear')
doTweenY('cY', 'c.scale', 1, 0.0001, 'linear')
doTweenAlpha("white1","white", 5, 000000.1, 'linear');
doTweenAlpha("white2","white", 0, 1, 'linear');
setProperty('dad.colorTransform.greenOffset', 255)
setProperty('dad.colorTransform.redOffset', 255)
setProperty('dad.colorTransform.blueOffset', 255)
setProperty('boyfriend.colorTransform.greenOffset', 255)
setProperty('boyfriend.colorTransform.redOffset', 255)
setProperty('boyfriend.colorTransform.blueOffset', 255)
setProperty('BG3.visible', false)
setProperty('BG2.visible', false)
setProperty('BG1.visible', false)
setProperty('BG0.visible', false)
doTweenAlpha("GFA","gf", 0, 0.0001, true);
doTweenAlpha("JakeA","Jake", 0, 0.0001, true);
doTweenAlpha("BFC","boyfriend", 1, 0.0001, true);
focado=true
nonotas=true
end

if value1 == 'black2' then
focado=false
cam=true
nonotas=false
doTweenAlpha("white1","white", 5, 000000.1, 'linear');
doTweenAlpha("white2","white", 0, 1, 'linear');
setProperty('dad.colorTransform.greenOffset', 0)
setProperty('dad.colorTransform.redOffset', 0)
setProperty('dad.colorTransform.blueOffset', 0)
setProperty('boyfriend.colorTransform.greenOffset', 0)
setProperty('boyfriend.colorTransform.redOffset', 0)
setProperty('boyfriend.colorTransform.blueOffset', 0)
setProperty('BG3.visible', true)
setProperty('BG2.visible', true)
setProperty('BG1.visible', true)
setProperty('BG0.visible', true)
doTweenAlpha("GFB","gf", 1, 0.0001, true);
doTweenAlpha("JakeB","Jake", 1, 0.0001, true);
setProperty('defaultCamZoom',0.90)
--note
setPropertyFromGroup('opponentStrums', 0, 'x', defaultOpponentStrumX0)
setPropertyFromGroup('opponentStrums', 1, 'x', defaultOpponentStrumX1)
setPropertyFromGroup('opponentStrums', 2, 'x', defaultOpponentStrumX2)
setPropertyFromGroup('opponentStrums', 3, 'x', defaultOpponentStrumX3)
setPropertyFromGroup('opponentStrums', 4, 'x', defaultOpponentStrumX4)
end

if value1 == 'comeon' then
setTextString('lyr', 'COME ON')
setProperty('lyr.x', 480)
setProperty('lyr.y', 550)
end

if value1 == 'wah' then
setTextString('lyr', 'WAAAAAAAAAAAH!')
setProperty('lyr.x', 300)
setProperty('lyr.y', 550)
end

if value1 == 'notext' then
setTextString('lyr', ' ')
setProperty('lyr.x', 300)
setProperty('lyr.y', 550)
end

if value1 == 'black3' then
cam=false
doTweenAlpha("white1","white", 5, 000000.1, 'linear');
doTweenAlpha("white2","white", 0, 1, 'linear');
doTweenAlpha("blackA","black", 0, 0.001, true);
setProperty('gf.colorTransform.greenOffset', 255)
setProperty('gf.colorTransform.redOffset', 255)
setProperty('gf.colorTransform.blueOffset', 255)
setProperty('boyfriend.colorTransform.greenOffset', 255)
setProperty('boyfriend.colorTransform.redOffset', 255)
setProperty('boyfriend.colorTransform.blueOffset', 255)
setProperty('BG3.visible', false)
setProperty('BG2.visible', false)
setProperty('BG1.visible', false)
setProperty('BG0.visible', false)
doTweenAlpha("FinnA","dad", 0, 0.0001, true);
doTweenAlpha("JakeA","Jake", 0, 0.0001, true);
end

if value1 == 'black4' then
doTweenAlpha("white1","white", 5, 000000.1, 'linear');
doTweenAlpha("white2","white", 0, 1, 'linear');
setProperty('camGame.visible', false)
end

end
end

function onTimerCompleted(tag, loops, loopsLeft)
if tag=='pibby' then
focus=false
end
if tag=='focan' then
foca2=false
end
end

function onUpdate(elapsed)
if nonotas then
setPropertyFromGroup('opponentStrums', 0, 'x', 100000)
setPropertyFromGroup('opponentStrums', 1, 'x', 100000)
setPropertyFromGroup('opponentStrums', 2, 'x', 100000)
setPropertyFromGroup('opponentStrums', 3, 'x', 100000)
setPropertyFromGroup('opponentStrums', 4, 'x', 100000)
end
if foca2 then
doTweenZoom('camz','camGame', 0.70, 0.001,'linear')
end 
if focus then
triggerEvent('Camera Follow Pos', 2200, 1200)
end 
if focado then
setProperty('defaultCamZoom',0.70)
end 
if introfocada then
triggerEvent('Camera Follow Pos', 1900, 1100)
setProperty('defaultCamZoom',0.70)
end 

if followchars == true and cam then
if mustHitSection == false then
setProperty('defaultCamZoom',0.90)
else
setProperty('defaultCamZoom',1.1)
end
end
end

function onSongStart()
doTweenAlpha("blackA","black", 1, 0.001, true);
doTweenAlpha("black","black", 0, 6, true);
setProperty('defaultCamZoom',0.70)
doTweenAlpha('fadeInn', 'camHUD', 0, 0.5, 'linear')
doTweenAlpha("c2A","c2", 1, 0.1, true);
introfocada=true
runTimer('focan',0.6)
foca2=true
cam=true
end