function onCreate()
       
       makeLuaSprite('flashblck', '', 0, 0);
        makeGraphic('flashblck',1280,720,'000000');
          addLuaSprite('flashblck', true);
          setLuaSpriteScrollFactor('flashblck',0,0);
          setObjectCamera('flashblck', 'other')
          setProperty('flashblck.scale.x',4);
          setProperty('flashblck.scale.y',4);
          doTweenAlpha('flashblckAlpha', 'flashblck', 0, 0.3, 'linear')

end

function onUpdate()
 if curStep >= 0 then
     doTweenAlpha('flashblckAlpha', 'flashblck', 0, 0.3, 'linear')
 end
end

function opponentNoteHit(id, direction, noteType, isSustainNote)
	if _G['dadGhostData.strumTime'] == getPropertyFromGroup('notes', id, 'strumTime') and not isSustainNote then
		shake()
	end
	if not isSustainNote then
		_G['dadGhostData.strumTime'] = getPropertyFromGroup('notes', id, 'strumTime')
		
	end

     if noteType == 'Glitch Note' then
         doTweenAlpha('flashblckAlpha', 'flashblck', 0.6, 0.2, 'cubeOut')
     end
	end
	resetOffset = false
function onSongStart()
if songName =='Forgotten-World' then
resetOffset = true
end

noteX0 = getPropertyFromGroup('strumLineNotes','0','x')
noteX1 = getPropertyFromGroup('strumLineNotes','1','x')
noteX2 = getPropertyFromGroup('strumLineNotes','2','x')
noteX3 = getPropertyFromGroup('strumLineNotes','3','x')
noteX4 = getPropertyFromGroup('strumLineNotes','4','x')
noteX5 = getPropertyFromGroup('strumLineNotes','5','x')
noteX6 = getPropertyFromGroup('strumLineNotes','6','x')
noteX7 = getPropertyFromGroup('strumLineNotes','7','x')


noteY0 = getPropertyFromGroup('strumLineNotes','0','y')
noteY1 = getPropertyFromGroup('strumLineNotes','1','y')
noteY2 = getPropertyFromGroup('strumLineNotes','2','y')
noteY3 = getPropertyFromGroup('strumLineNotes','3','y')
noteY4 = getPropertyFromGroup('strumLineNotes','4','y')
noteY5 = getPropertyFromGroup('strumLineNotes','5','y')
noteY6 = getPropertyFromGroup('strumLineNotes','6','y')
noteY7 = getPropertyFromGroup('strumLineNotes','7','y')
end

function onStepHit()
if curStep == 1435 and resetOffset then
noteX4 = noteX4- 50
noteX5 = noteX5- 50
noteX6 = noteX6- 50
noteX7 = noteX7- 50
noteY4 = noteY4- 50
noteY5 = noteY5- 50
noteY6 = noteY6- 50
noteY7 = noteY7- 50
end
end

function shake()
cameraShake('camGame',0.01,0.1)
if math.random(1,2) == 1 then
cameraShake('camHUD',0.01,0.04)
end

     noteTweenX('glitchNoteX0','0' ,math.random(noteX0- 10,noteX0+ 10),0.01,'quadInOut')     
     noteTweenY('glitchNoteY0', '0' ,math.random(noteY0- 10,noteY0+ 10),0.01,'quadInOut')
     
     noteTweenX('glitchNoteX1','1' ,math.random(noteX1- 10,noteX1+ 10),0.01,'quadInOut')     
     noteTweenY('glitchNoteY1', '1' ,math.random(noteY1- 10,noteY1+ 10),0.01,'quadInOut')
        
    noteTweenX('glitchNoteX2','2' ,math.random(noteX2- 10,noteX2+ 10),0.01,'quadInOut')     
     noteTweenY('glitchNoteY2', '2' ,math.random(noteY2- 10,noteY2+ 10),0.01,'quadInOut')
     
     noteTweenX('glitchNoteX3','3' ,math.random(noteX3- 10,noteX3+ 10),0.01,'quadInOut')     
     noteTweenY('glitchNoteY3', '3' ,math.random(noteY3- 10,noteY3+ 10),0.01,'quadInOut')
     
     noteTweenX('glitchNoteX4','4' ,math.random(noteX4- 10,noteX4+ 10),0.01,'quadInOut')     
     noteTweenY('glitchNoteY4', '4' ,math.random(noteY4- 10,noteY4+ 10),0.01,'quadInOut')
     
     noteTweenX('glitchNoteX5','5' ,math.random(noteX5- 10,noteX5+ 10),0.01,'quadInOut')     
     noteTweenY('glitchNoteY5', '5' ,math.random(noteY5- 10,noteY5+ 10),0.01,'quadInOut')
     
     noteTweenX('glitchNoteX6','6' ,math.random(noteX6- 10,noteX6+ 10),0.01,'quadInOut')     
     noteTweenY('glitchNoteY6', '6' ,math.random(noteY6- 10,noteY6+ 10),0.01,'quadInOut')
     
     noteTweenX('glitchNoteX7','7' ,math.random(noteX7- 10,noteX7+ 10),0.01,'quadInOut')     
     noteTweenY('glitchNoteY7', '7' ,math.random(noteY7- 10,noteY7+ 10),0.01,'quadInOut')
end