function onCreate()
	
  makeAnimatedLuaSprite('cut1', 'cutscene/cut1', 0, 0)
  addAnimationByPrefix('cut1', 'cut1 idle', 'cut1 idle', 11, false)
  addLuaSprite('cut1', true)
  setObjectCamera('cut1', 'other')
  scaleObject('cut1', 0.675, 0.675)

  makeAnimatedLuaSprite('cut2', 'cutscene/cut2', 0, 0)
  addAnimationByPrefix('cut2', 'cut2 idle', 'cut2 idle', 11, false)
  addLuaSprite('cut2', true)
  setObjectCamera('cut2', 'other')
  scaleObject('cut2', 0.675, 0.675)

  makeAnimatedLuaSprite('cut3', 'cutscene/cut3', 0, 0)
  addAnimationByPrefix('cut3', 'cut3 idle', 'cut3 idle', 11, false)
  addLuaSprite('cut3', true)
  setObjectCamera('cut3', 'other')
  scaleObject('cut3', 0.675, 0.675)

  makeAnimatedLuaSprite('cut4', 'cutscene/cut4', 0, 0)
  addAnimationByPrefix('cut4', 'cut4 idle', 'cut4 idle', 11, false)
  addLuaSprite('cut4', true)
  setObjectCamera('cut4', 'other')
  scaleObject('cut4', 0.675, 0.675)

  makeAnimatedLuaSprite('cut5', 'cutscene/cut5', 0, 0)
  addAnimationByPrefix('cut5', 'cut5 idle', 'cut5 idle', 11, false)
  addLuaSprite('cut5', true)
  setObjectCamera('cut5', 'other')
  scaleObject('cut5', 0.675, 0.675)

  makeAnimatedLuaSprite('cut6', 'cutscene/cut6', 0, 0)
  addAnimationByPrefix('cut6', 'cut6 idle', 'cut6 idle', 11, false)
  addLuaSprite('cut6', true)
  setObjectCamera('cut6', 'other')
  scaleObject('cut6', 0.675, 0.675)

  makeAnimatedLuaSprite('cut7', 'cutscene/cut7', 0, 0)
  addAnimationByPrefix('cut7', 'cut7 idle', 'cut7 idle', 11, false)
  addLuaSprite('cut7', true)
  setObjectCamera('cut7', 'other')
  scaleObject('cut7', 0.675, 0.675)

  makeAnimatedLuaSprite('cut8', 'cutscene/cut8', 0, 0)
  addAnimationByPrefix('cut8', 'cut8 idle', 'cut8 idle', 11, false)
  addLuaSprite('cut8', true)
  setObjectCamera('cut8', 'other')
  scaleObject('cut8', 0.675, 0.675)

  makeAnimatedLuaSprite('cut9', 'cutscene/cut9', 0, 0)
  addAnimationByPrefix('cut9', 'cut9 idle', 'cut9 idle', 11, false)
  addLuaSprite('cut9', true)
  setObjectCamera('cut9', 'other')
  scaleObject('cut9', 0.675, 0.675)

end

function onUpdate()
	if curStep == 0 then
        setProperty('cut1.visible', false)
        setProperty('cut2.visible', false)
        setProperty('cut3.visible', false)
        setProperty('cut4.visible', false)
        setProperty('cut5.visible', false)
        setProperty('cut6.visible', false)
        setProperty('cut7.visible', false)
        setProperty('cut8.visible', false)
        setProperty('cut9.visible', false)
	end

	--if curStep >= 1296 then
		--setProperty('cut1.visible', true)
       -- objectPlayAnimation('cut1', 'cut1 idle')
   -- end

   -- if curStep >= 1348.9 then
		--setProperty('cut1.visible', false)
		--setProperty('cut2.visible', true)
       -- objectPlayAnimation('cut2', 'cut2 idle')
   -- end

    --if curStep >= 1402 then
		--setProperty('cut2.visible', false)
		--setProperty('cut3.visible', true)
        --objectPlayAnimation('cut3', 'cut3 idle')
   -- end

    -- if curStep >= 1455 then
		--setProperty('cut3.visible', false)
		--setProperty('cut4.visible', true)
       -- objectPlayAnimation('cut4', 'cut4 idle')
   -- end
     
    -- if curStep >= 1505 then
       -- setProperty('cut4.visible', false)
       -- setProperty('cut5.visible', true)
        --objectPlayAnimation('cut5', 'cut5 idle')
    --end

     if curStep >= 1680 then
        setProperty('cut5.visible', false)
        setProperty('cut6.visible', true)
        objectPlayAnimation('cut6', 'cut6 idle')
    end

    if curStep >= 1734 then
        setProperty('cut6.visible', false)
        setProperty('cut7.visible', true)
        objectPlayAnimation('cut7', 'cut7 idle')
    end

    if curStep >= 1788 then
        setProperty('cut7.visible', false)
        setProperty('cut8.visible', true)
        objectPlayAnimation('cut8', 'cut8 idle')
    end

    if curStep >= 1842 then
        setProperty('cut8.visible', false)
        setProperty('cut9.visible', true)
        objectPlayAnimation('cut9', 'cut9 idle')
    end

    if curStep >= 1904 then
        setProperty('cut9.visible', false)
    end
end