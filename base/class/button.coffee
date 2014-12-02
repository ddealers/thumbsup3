class Button
	constructor: (name, image, index, x, y)->
		@initialize name, image, index, x, y
	Button.prototype = new createjs.Container()
	Button::Container_initialize = Button::initialize
	Button::initialize = (name, image, index, x, y)->
		@Container_initialize()
		@name = name
		@bitmap = new createjs.Bitmap image
		@bitmap.mouseEnabled = false
		@index = index
		@x = x
		@y = y
		@pos = x:x, y:y
		hit = new createjs.Shape()
		hit.graphics.beginFill('rgba(255,255,255,0.01)').drawRect(0, 0, image.width, image.height)
		@mouseChildren = false
		@addChild @bitmap, hit
		false
	blink: (state=on) ->
		TweenMax.killTweensOf @bitmap
		@bitmap.alpha = 1
		TweenMax.to @bitmap, 0.5, {alpha:.5, repeat:-1, yoyo:true}  if state
	window.Button = Button