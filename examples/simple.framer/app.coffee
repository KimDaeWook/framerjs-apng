require "apng"

apngLayer = new Layer
	width: 400
	height: 400
	backgroundColor: "#FFFFFF"
	apngImage: "images/clock.png"
apngLayer.center();

# Listen to the loading event 
apngLayer.on Events.ImageLoaded, ->
    print "The image loaded"
 
apngLayer.on Events.ImageLoadError, (err)->
    print "The image couldn't be loaded"

# Play APNG Image
apngLayer.playAPNG();
# or Stop
# apngLayer.stopAPNG()