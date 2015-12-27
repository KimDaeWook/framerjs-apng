# FramerJS-APNG

The framerjs-apng is APNG(Animated Portable Network Graphics) support module for framerJS.
It's based on [apng-canvas](https://github.com/davidmz/apng-canvas)

## How to install

1. Download "apng.coffee" file to modules directory in your project.
2. Just type **require "apng"** on first line.

## How to use
The default usage is the same as the FramerJS Layer except few properties. 

1. Create layer any size.
2. set **apngImage** property. 
3. call **playAPNG** method.

### Completely Example
```coffescript
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
```


### API

#### Layer.playAPNG()
play APNG image animation.(If images are being downloaded, play after download.) 

#### Layer.stopAPNG()
stop APNG image animation.