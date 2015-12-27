require "apng"

apngLayer = new Layer
	width: 400
	height: 400
	backgroundColor: "#FFFFFF"
apngLayer.center();

# Listen to the loading event 
apngLayer.on Events.ImageLoaded, ->
    print "The image loaded"
 
apngLayer.on Events.ImageLoadError, (err)->
    print "The image couldn't be loaded"

apngLayer.states.add
	clock:
		apngImage: "images/clock.png"
	balls:
		apngImage: "images/balls.png"
	cube:
		apngImage: "images/cube.png"
	shape:
		apngImage: "images/shape.png"
			
apngLayer.on Events.Click, ->
	apngLayer.states.next("clock", "balls", "cube", "shape")
	
apngLayer.states.switch("clock")

apngLayer.playAPNG();


xOffset = 0
createNewButton = (title, onClick)->
	
	newButton = new Layer
		x : xOffset 
		y: 20
		width:150
		color: "#FFFFFF"
		backgroundColor: "#000000"
		html: title
		style: 
			"font-size" : "40px"
			"text-align" : "center"
			
	xOffset += newButton.width
	newButton.on Events.Click, onClick
	return newButton

playButton = createNewButton "Play", ->
	apngLayer.playAPNG()

stopButton = createNewButton "Stop", ->
	apngLayer.stopAPNG()

