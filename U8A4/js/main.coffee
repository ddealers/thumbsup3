###

NEW ODA

###
class U8A4 extends Oda
	constructor: ->
		@manifest = [
			{id: 'head', src: 'pleca1.png'}
			{id: 'c1', src: 'circle1.png'}
			{id: 'c2', src: 'circle2.png'}
 			{id:'tara', src:'tara_1.png'}
			{id:'dragblepainting', src:'dragble_painting.png'}
			{id:'dragblewaterpark', src:'dragble_waterpark.png'}
			{id:'dragbleicecream', src:'dragble_icecream.png'}
			{id:'dragblepool', src:'dragble_pool.png'}
			{id:'dragbleseashells', src:'dragble_seashells.png'}
			{id:'tyler', src:'tyler_1.png'}
			{id:'dragbledolphins', src:'dragble_dolphins.png'}
			{id:'dragbleboooks', src:'dragble_boooks.png'}
			{id:'dragblesandcastles', src:'dragble_sandcastles.png'}
			{id:'dragblebike', src:'dragble_bike.png'}
			{id:'dragblefishing', src:'dragble_fishing.png'}
			{id:'repeat', src:'repeat-btn.png'}
			{src:'TU3_U8_A4_instructions.mp3', id:'s/instructions'}
			{src:'TU3_U8_A4_instructions2.mp3', id:'s/instructions2'}
			{src:'TU3_U8_A4_tara.mp3', id:'s/tara'}
			{src:'TU3_U8_A4_tyler.mp3', id:'s/tyler'}
		]
		@onDrop = (dispatcher, target) =>
			a = lib[dispatcher]
			b = target
			c = target.parent
			if a.index is b.success
				lib.score.plusOne()
				createjs.Sound.play 's/good'
				b.complete = true
				b.update()
				a.afterSuccess()
				c.currentTarget++
				if c.currentTarget is c.droptargets.length
					createjs.Sound.stop()
					lib.instructions.next()
					lib.scene.nextStep()
			else
				a.afterFail()
				lib.scene.fail()
		@btnClick = (dispatcher) =>
			a = lib[dispatcher]
			if a.index is d2oda.evaluator.success
				a.fadeOut()
				lib.scene.success true, false
			else
				createjs.Sound.play 's/wrong'

		@game = 
			header: 'head'
			instructions: {x: 40, y: 100, states: [{text:'Listen and drag the words to complete the text.', sound:'s/instructions', played: false}, {text:'Listen again and click on the pictures in order.', sound:'s/instructions2', played: false}]}
			score:{type: 'points', x:20, y:500, init: 0, total: 20, aimg: 'c1', acolor: '#FE008F', bimg: 'c2', bcolor: '#0A9BDD'}
			scenes:[
				{
					answers: {
						collection: [
							[
								{name: 'snd', opts:{id:'s/tyler'}}
								{name: 'pcpt1', opts:{pattern:['Hi! My name\'s Tyler and I live on an island in the gulf of Mexico. I did a lot of fun', '#rtn', 'things last summer.', '#tcpt', ', I went fishing with my dad.', '#tcpt', ', I built sandcastles on', '#rtn', 'the beach with my friends.', '#tcpt', ', my uncle taught me to ride a bike. It was so much', '#rtn', 'fun!', '#tcpt', ', I went swimming with the dolphins that live near the island.', '#tcpt', ',', '#rtn', 'I read some books and watched some cartoons to relax. What a vacation! I\'m really', '#rtn', 'looking forward to the next one!'], targets: [{text:'First', success:'first'}, {text:'Then', success:'then'}, {text:'Next', success:'next'}, {text:'After that', success:'after'}, {text:'Finally', success:'finally'}]}}
							]
							[
								{name: 'snd', opts:{id:'s/tyler'}}
								{name: 'grp_tyler_actions', opts:{type:'fadeIn'}}
								{name: 'global', opts:{success: 5}}
							]
							[
								{name: 'global', opts:{success: 3}}
							]
							[
								{name: 'global', opts:{success: 4}}
							]
							[
								{name: 'global', opts:{success: 1}}
							]
							[
								{name: 'global', opts:{success: 2}}
							]
						]
						type: 'steps'
					}
					containers:[
						{type: 'img', id:'tyler', x: 50, y:160}
						{type: 'pcpt', id: 'pcpt1', x: 230, y: 200, font: '13px Roboto', margin: 5, bcolor:'#f0f5d5', stroke: 1, scolor: '#eb188e'}
						{type: 'ldrg', id: 'ldrg1', x: 230, y: 140, index: 'first', text:'first', font:'20px Quicksand', color:'#333', target: ['pcpt1'], eval: @onDrop, afterSuccess: 'hide', afterFail: 'return'}
						{type: 'ldrg', id: 'ldrg2', x: 130, y: 140, index: 'then', text:'then', font:'20px Quicksand', color:'#333', target: ['pcpt1'], eval: @onDrop, afterSuccess: 'hide', afterFail: 'return'}
						{type: 'ldrg', id: 'ldrg3', x: 430, y: 140, index: 'next', text:'next', font:'20px Quicksand', color:'#333', target: ['pcpt1'], eval: @onDrop, afterSuccess: 'hide', afterFail: 'return'}
						{type: 'ldrg', id: 'ldrg4', x: 530, y: 140, index: 'after', text:'after that', font:'20px Quicksand', color:'#333', target: ['pcpt1'], eval: @onDrop, afterSuccess: 'hide', afterFail: 'return'}
						{type: 'ldrg', id: 'ldrg5', x: 330, y: 140, index: 'finally', text:'finally', font:'20px Quicksand', color:'#333', target: ['pcpt1'], eval: @onDrop, afterSuccess: 'hide', afterFail: 'return'}
						{
							type: 'btn', id: 'repeat', x: 400, y: 350, isRepeat: true
							states: [{img: {name: 'repeat', x: 0, y: 0, align: 'mc'}}]
						}
						{
							type: 'btn', id: 'btn1', x: 170, y: 470, index: 1, target: null
							eval: @btnClick
							states: [{img: {name: 'dragbledolphins', x: 0, y: 0, align: 'mc'}}]
						}
						{
							type: 'btn', id: 'btn2', x: 290, y: 420, index: 2, target: null
							eval: @btnClick
							states: [{img: {name: 'dragbleboooks', x: 0, y: 0, align: 'mc'}}]
						}
						{
							type: 'btn', id: 'btn3', x: 410, y: 470, index: 3, target: null
							eval: @btnClick
							states: [{img: {name: 'dragblesandcastles', x: 0, y: 0, align: 'mc'}}]
						}
						{
							type: 'btn', id: 'btn4', x: 530, y: 420, index: 4, target: null
							eval: @btnClick
							states: [{img: {name: 'dragblebike', x: 0, y: 0, align: 'mc'}}]
						}
						{
							type: 'btn', id: 'btn5', x: 650, y: 470, index: 5, target: null
							eval: @btnClick
							states: [{img: {name: 'dragblefishing', x: 0, y: 0, align: 'mc'}}]
						}
					]
					groups: [
						{
							type: 'grp', id:'grp_tyler_actions', invisible:true
							group: [
								'btn1'
								'btn2'
								'btn3'
								'btn4'
								'btn5'
							]
						}
					]
				}
				{
					answers: {
						collection: [
							[
								{name: 'instructions', opts:{state: 1}}
								{name: 'snd', opts:{id:'s/tara'}}
								{name: 'pcpt2', opts:{pattern:['Hi! My name\'s Tara and I live in Canada. I had a great summer vacation on the', '#rtn', 'beach.', '#tcpt', ', I collected seashells for my grandmother. She loves them.', '#tcpt', ', I went', '#rtn', 'swimming with my friends. We swam in a pool because the ocean was too cold.', '#rtn', '#tcpt', ', I took some painting lessons. It was really cool.', '#tcpt', ', I visited a water', '#rtn', 'park with my cousins.', '#tcpt', ', we went shopping and had some ice cream. It was', '#rtn', 'such fun! I can\'t wait for next summer vacation!'], targets: [{text:'First', success:'first'}, {text:'Then', success:'then'}, {text:'Next', success:'next'}, {text:'After that', success:'after'}, {text:'Finally', success:'finally'}]}}
							]
							[
								{name: 'snd', opts:{id:'s/tara'}}
								{name: 'grp_tara_actions', opts:{type:'fadeIn'}}
								{name: 'global', opts:{success: 5}}
							]
							[
								{name: 'global', opts:{success: 4}}
							]
							[
								{name: 'global', opts:{success: 1}}
							]
							[
								{name: 'global', opts:{success: 2}}
							]
							[
								{name: 'global', opts:{success: 3}}
							]
						]
						type: 'steps'
					}
					containers:[
						{type: 'img', id:'tara', x: 50, y:160}
						{type: 'pcpt', id: 'pcpt2', x: 90, y: 200, font: '13px Roboto', margin: 5, bcolor:'#f4e8f2', stroke: 1, scolor: '#eb188e'}
						{type: 'ldrg', id: 'ldrgt1', x: 230, y: 140, index: 'first', text:'first', font:'20px Quicksand', color:'#333', target: ['pcpt2'], eval: @onDrop, afterSuccess: 'hide', afterFail: 'return'}
						{type: 'ldrg', id: 'ldrgt2', x: 130, y: 140, index: 'then', text:'then', font:'20px Quicksand', color:'#333', target: ['pcpt2'], eval: @onDrop, afterSuccess: 'hide', afterFail: 'return'}
						{type: 'ldrg', id: 'ldrgt3', x: 430, y: 140, index: 'next', text:'next', font:'20px Quicksand', color:'#333', target: ['pcpt2'], eval: @onDrop, afterSuccess: 'hide', afterFail: 'return'}
						{type: 'ldrg', id: 'ldrgt4', x: 530, y: 140, index: 'after', text:'after that', font:'20px Quicksand', color:'#333', target: ['pcpt2'], eval: @onDrop, afterSuccess: 'hide', afterFail: 'return'}
						{type: 'ldrg', id: 'ldrgt5', x: 330, y: 140, index: 'finally', text:'finally', font:'20px Quicksand', color:'#333', target: ['pcpt2'], eval: @onDrop, afterSuccess: 'hide', afterFail: 'return'}
						{
							type: 'btn', id: 'trepeat', x: 400, y: 350, isRepeat: true
							states: [{img: {name: 'repeat', x: 0, y: 0, align: 'mc'}}]
						}
						{
							type: 'btn', id: 'btnt1', x: 170, y: 470, index: 1, target: null
							eval: @btnClick
							states: [{img: {name: 'dragblepainting', x: 0, y: 0, align: 'mc'}}]
						}
						{
							type: 'btn', id: 'btnt2', x: 290, y: 420, index: 2, target: null
							eval: @btnClick
							states: [{img: {name: 'dragblewaterpark', x: 0, y: 0, align: 'mc'}}]
						}
						{
							type: 'btn', id: 'btnt3', x: 410, y: 470, index: 3, target: null
							eval: @btnClick
							states: [{img: {name: 'dragbleicecream', x: 0, y: 0, align: 'mc'}}]
						}
						{
							type: 'btn', id: 'btnt4', x: 530, y: 420, index: 4, target: null
							eval: @btnClick
							states: [{img: {name: 'dragblepool', x: 0, y: 0, align: 'mc'}}]
						}
						{
							type: 'btn', id: 'btnt5', x: 650, y: 470, index: 5, target: null
							eval: @btnClick
							states: [{img: {name: 'dragbleseashells', x: 0, y: 0, align: 'mc'}}]
						}
					]	
					groups: [
						{
							type: 'grp', id:'grp_tara_actions', invisible:true
							group: [
								'btnt1'
								'btnt2'
								'btnt3'
								'btnt4'
								'btnt5'
							]
						}
					]
				}
			]
		super()
	window.U8A4 = U8A4
