--Hide the status Bar
display.setStatusBar(display.HiddenStatusBar)
local widget=require("widget")

--Give background color to all pages of the application
display.setDefault('background',0,0,255);

--Define Music variable
local piano = audio.loadSound("piano.mp3")

function playSound()
	audio.play(piano,{loops=-1})
end
local myText1=display.newText("Play",display.contentWidth/2,display.contentHeight/2-200,Arial, 50)
myText1:addEventListener("tap",playSound)

function pauseSound()
	audio.pause(piano)
end
local myText2=display.newText("Pause",display.contentWidth/2,display.contentHeight/2-100,Arial, 50)
myText2:addEventListener("tap",pauseSound)

function showchoices(event)
	if music.isOn==true then
	audio.play(piano,{loops=-1})
	else
	audio.stop()
	end
end

local musicText=display.newText("Music On/Off",display.contentWidth/2-100,display.contentHeight/2,Arial, 50)	
music =widget.newSwitch
{
x=display.contentWidth/2+100,
y=display.contentHeight/2,
style="onOff",
initialSwitchState=false,
onEvent=showchoices
}





	