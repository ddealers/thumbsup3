class U6A5 extends Oda
	constructor: ->
		manifest = [
			{id: 'head', src: 'pleca1.png'}
			{id: 'c1', src: 'circle1.png'}
			{id: 'c2', src: 'circle2.png'}
			{id: 'repeatbtn', src: 'repeat-btn.png'}
			{id: 'playagain', src:'play_again.png'}
			{id: 'startgame', src:'start_game.png'}
			{id: 'bg', src:'bg.png'}

			{id: 'nube1', src:'nube1.png'}
			{id: 'nube2', src:'nube2.png'}
			{id: 'nube3', src:'nube1.png'}
			{id: 'nube4', src:'nube2.png'}

			{id: '1', src:'1.png'}
			{id: '2', src:'2.png'}
			{id: '3', src:'3.png'}
			{id: '4', src:'4.png'}	
			{id: '5', src:'5.png'}	
			{id: '6', src:'6.png'}	
			{id: '7', src:'7.png'}	
			{id: '8', src:'8.png'}	
			{id: '9', src:'9.png'}	
			{id: '10', src:'10.png'}	
			{id: '11', src:'11.png'}	
			{id: '12', src:'12.png'}	
			{id: '13', src:'13.png'}	
			{id: '14', src:'14.png'}	
			{id: '15', src:'15.png'}	
		
			{id: '1b', src:'1b.png'}
			{id: '2b', src:'2b.png'}
			{id: '3b', src:'3b.png'}
			{id: '4b', src:'4b.png'}	
			{id: '5b', src:'5b.png'}	
			{id: '6b', src:'6b.png'}	
			{id: '7b', src:'7b.png'}	
			{id: '8b', src:'8b.png'}
			{id: '9b', src:'9b.png'}
			{id: '10b', src:'10b.png'}
			{id: '11b', src:'11b.png'}
			{id: '12b', src:'12b.png'}
			{id: '13b', src:'13b.png'}
			{id: '14b', src:'14b.png'}
			{id: '15b', src:'15b.png'}	

		]
		sounds = [
			{src:'sounds/good.mp3', id:'good'}
			{src:'sounds/wrong.mp3', id:'wrong'}
			{src:'sounds/boing.mp3', id:'boing'}
		    {src:'sounds/TU3_U6_A5_instructions.mp3', id:'instructions'}
		    {src:'sounds/TU3_U6_A5_song_1.mp3', id:'scene1'}
		    {src:'sounds/TU3_U6_A5_song_2.mp3', id:'scene2'}
		    {src:'sounds/TU3_U6_A5_song_3.mp3', id:'scene3'}
		    {src:'sounds/TU3_U6_A5_song_4.mp3', id:'scene4'}
		]
		@game = [
			{
				texts:[
					{idx:2, t:"He couldn't go down the cliff--it was too dangerous", x:544, y:900}
					{idx:3, t:'Simon started to think that Joe was dead', x:544, y:930}
					{idx:1, t:'Joe was hanging on the rope like a big heavy spider', x:544, y:960}
					{idx:4, t:'In a second, the weight --his friend, Joe-- was gone', x:544, y:990}
				]
				positions:[
					{id:'1', x:160, y:400}
					{id:'2', x:845, y:400}
					{id:'3', x:845, y:572}
					{id:'4', x:845, y:736}
				]
				nube:{id:'nube1', x:180, y:840}
			}
			{
				texts:[
					{idx:6, t:"He saw a lot of ice", x:1230, y:570}
					{idx:7, t:"He didn't want to die", x:1230, y:610}
					{idx:5, t:'Everything went dark', x:1230, y:650}
				]
				positions:[
					{id:'5', x:150, y:440}
					{id:'6', x:150, y:569}
					{id:'7', x:150, y:698}
 				]
				nube:{id:'nube2', x:980, y:510}
			}
			{
				texts:[
					{idx:12, t:'In his dreams, he heard Joe yelling, "Simon! Simon!"', x:530, y:900}
					{idx:10, t:'They were so happy and excited', x:530, y:930}
					{idx:9, t:'Now he was safe', x:530, y:960}
					{idx:11, t:'He planned to leave the next day', x:530, y:990}
				]
				positions:[
					{id:'8', x:150, y:410}
					{id:'9', x:150, y:613}
					{id:'10', x:850, y:410}
					{id:'11', x:850, y:673}
				]
				nube:{id:'nube1', x:180, y:840}
			}
			{
				texts:[
					{idx:15, t:"Suddenly, he heard his name again", x:1228, y:570}
					{idx:16, t:"Joe was alive!", x:1228, y:600}
					{idx:13, t:"There wasn't any wind", x:1228, y:630}
					{idx:14, t:'He opened the tent and looked around', x:1228, y:660}
				]
				positions:[
					{id:'12', x:150, y:450}
					{id:'13', x:150, y:577}
					{id:'14', x:150, y:676}
					{id:'15', x:150, y:772}
 				]
				nube:{id:'nube2', x:980, y:510}
			}

		]
		@answers = []
		super null, manifest, sounds
	setStage: ->
		super
		@intento = 0
		@insertBitmap 'bg', 'bg', 0, 0
		@library.bg.scaleX = @library.bg.scaleY = 0.5
		@insertBitmap 'header', 'head', stageSize.w / 2, 0, 'tc'
		@insertInstructions 'instructions', ['Listen, read and drag the correct words to the text.'], 80, 180
		@addToMain new Score 'score', (@preload.getResult 'c1'), (@preload.getResult 'c2'), 0, 1000, 5, 0
		@library.score.txtCount.color = "#C3DB5B"
		@library.score.txtTotal.color = "#EB2D3C"
		@setCuento( 1 ).introEvaluation()
	setCuento: (scene) ->
		cuento = new createjs.Container()
		cuento.name = 'cuento'
		@scene = scene
		nube = @createBitmap @game[scene - 1].nube.id, @game[scene - 1].nube.id, @game[scene - 1].nube.x, @game[scene - 1].nube.y
		cuento.addChild nube
		for i in [1..@game[scene - 1].positions.length] by 1
			m = @createSprite "sc#{i}", ["#{@game[scene - 1].positions[i - 1].id}",  "#{@game[scene - 1].positions[i - 1].id}b"],null, @game[scene - 1].positions[i - 1].x, @game[scene - 1].positions[i - 1].y 
			hit = new createjs.Shape()
			hit.graphics.beginFill("rgba(255, 255, 255, 0.1)").drawRect(0, 0, m.width, m.height) 
			hit.name = "hsc#{i}"
			hit.x = @game[scene - 1].positions[i - 1].x
			hit.y = @game[scene - 1].positions[i - 1].y
			cuento.addChild hit
			#m.scaleX = m.scaleY = 0.8
			hit.index = (scene - 1) * 4 + i
			cuento.addChild hit, m
			@addToLibrary hit, m
		for i in [1..@game[scene - 1].texts.length] by 1
			t = new DraggableText "t#{i}", @game[scene - 1].texts[i-1].t, @game[scene - 1].texts[i-1].idx, @game[scene - 1].texts[i-1].x, @game[scene - 1].texts[i-1].y - 5
			t.text.textAlign = 'center'
			t.text.font = '22px Quicksand'
			t.setHitArea()
			if @game[scene - 1].texts[i-1].p
				t.p = @game[scene - 1].texts[i-1].p
			@addToLibrary t
			cuento.addChild t
		@addToMain cuento
		@
	introEvaluation: ->
		super
		for i in [1..@game[@scene - 1].texts.length] by 1
			@observer.subscribe 'init_evaluation', @library["t#{i}"].onInitEvaluation
		TweenLite.from @library['header'], 1, {y: -@library['header'].height}
		TweenLite.from @library['instructions'], 1, {alpha: 0, x: 0, delay: 0.5}
		TweenLite.from @library['cuento'], 1, {alpha: 0, y: @library['cuento'].y + 20, delay: 1, onComplete: @playInstructions, onCompleteParams: [@]}
	initEvaluation: (e) =>
		super
		createjs.Sound.play "scene#{@scene}"
		for i in [1..@game[@scene - 1].texts.length] by 1
			@library["t#{i}"].addEventListener 'click', @evaluateAnswer
	evaluateAnswer: (e) =>
		@answer = e.currentTarget
		dropped = off
		for i in [1..@game[@scene - 1].positions.length] by 1
			pt = @library["hsc#{i}"].globalToLocal @stage.mouseX, @stage.mouseY
			if @library["hsc#{i}"].hitTest pt.x, pt.y
				if @answer.index is @library["hsc#{i}"].index
					if @answer.p
						if @library["sc#{i}"].animation.currentFrame in [1,2]
							@library["sc#{i}"].animation.gotoAndStop 3
						else if @answer.p is 'p1'
							@library["sc#{i}"].animation.gotoAndStop 1
						else
							@library["sc#{i}"].animation.gotoAndStop 2
					else
						@library["sc#{i}"].animation.gotoAndStop 1
					@answer.visible = off
					createjs.Sound.play 'good'
					if @intento is 0
						@library['score'].plusOne()
					@intento = 0
					@finishEvaluation()
				else
					@intento = 1
					@warning()
					@answer.returnToPlace()
			else
				@answer.returnToPlace()
	finishEvaluation: =>
		for i in [1..@game[@scene - 1].positions.length] by 1
			if @library["sc#{i}"].animation.currentFrame is 0
				return
		@nextEvaluation()

		#@finish()
	nextEvaluation: =>
		@index++
		createjs.Sound.stop()
		if @index < @game.length
			TweenLite.to @library['cuento'], 1, {alpha:0, y:@library['cuento'].y + 10}
			@setCuento @index + 1
			createjs.Sound.play "scene#{@scene}"
			TweenLite.from @library['cuento'], 1, {alpha:0, y:@library['cuento'].y + 10}
			for i in [1..@game[@scene - 1].texts.length] by 1
				@library["t#{i}"].onInitEvaluation()
				@library["t#{i}"].addEventListener 'click', @evaluateAnswer
		else
			@finalscene = 0
			@finish()
			#TweenLite.to @library['title'], 1, {alpha:0, y:@library['title'].y + 20}
			#setTimeout @storyTale, 2 * 1000	
	finish: =>
		createjs.Sound.stop()
		createjs.Sound.play 'good'

		TweenLite.to @library['cuento'], 1, {alpha:0, y:@library['cuento'].y + 10}
		TweenLite.to @library['bg'], 1, {alpha:0}
		super
	window.U6A5 = U6A5