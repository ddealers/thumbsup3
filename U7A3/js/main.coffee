###

NEW ODA

###
class U7A3 extends Oda
	constructor: ->
		@manifest = [
			{id: 'head', src: 'pleca1.png'}
			{id: 'c1', src: 'circle1.png'}
			{id: 'c2', src: 'circle2.png'}
			{id:'repeat', src:'btn_repeat.png'}
			{id:'camelrap0001', src:'camelrap0001.png'}
			{id:'propnota', src:'prop_nota.png'}
			{id:'fondonaranja', src:'fondo-naranja.png'}
			{id:'fondoverde', src:'fondo-verde.png'}
			{id:'fondo', src:'fondo.png'}
			{id:'howget1', src:'how_get0001.png'}
			{id:'howget2', src:'how_get0002.png'}
			{id:'howgetdrag', src:'how_get_drag.png'}
			{id:'whatbring1', src:'what_bring0001.png'}
			{id:'whatbring2', src:'what_bring0002.png'}
			{id:'whatbringdrag', src:'what_bring_drag.png'}
			{id:'whattrade1', src:'what_trade0001.png'}
			{id:'whattrade2', src:'what_trade0002.png'}
			{id:'whattradedrag', src:'what_trade_drag.png'}
			{id:'wherego1', src:'where_go0001.png'}
			{id:'wherego2', src:'where_go0002.png'}
			{id:'wheregodrag', src:'where_go_drag.png'}
			{src:'TU3_U7_A3_Instructions.mp3', id:'s/instructions'}
			{src:'TU3_U7_A3_Instructions2.mp3', id:'s/instructions2'}
			{src:'TU3_U7_A3_rap.mp3', id:'s/rap'}
		]
		@game = 
			header: 'head'
			instructions: {x: 40, y: 100, states: [{text:'Put the questions in the correct order.', sound:'s/instructions', played: false},{text:'Listen to the rap and drag the questions into the spaces.', sound:'s/instructions2', played: false}]}
			score:{type: 'points', x:20, y:500, init: 0, total: 8, aimg: 'c1', acolor: '#0096DB', bimg: 'c2', bcolor: '#BFD951'}
			scenes:[
				{
					answers: {
						collection: [
							[
								{name: 'pcpt1', opts:{pattern:['#tcpt','#tcpt','#tcpt','#tcpt','#tcpt','?'], targets: [{text:'how'},{text:'did'},{text:'you'},{text:'get'},{text:'there'}]}}
								{name: 'pcpt2', opts:{pattern:['#tcpt','#tcpt','#tcpt','#tcpt','?'], targets: [{text:'what'},{text:'did'},{text:'you'},{text:'bring'}]}}
								{name: 'pcpt3', opts:{pattern:['#tcpt','#tcpt','#tcpt','#tcpt','?'], targets: [{text:'what'},{text:'did'},{text:'you'},{text:'trade'}]}}
								{name: 'pcpt4', opts:{pattern:['#tcpt','#tcpt','#tcpt','#tcpt','?'], targets: [{text:'where'},{text:'did'},{text:'you'},{text:'go'}]}}
							]
						]
						type: 'steps'
					}
					containers:[
						{type: 'img', id: 'fondo', x: 415, y: 60, align:'tc'}
						{type: 'img', id: 'fondoverde', x: 121, y: 153}
						{type: 'img', id: 'fondonaranja', x: 532, y: 153}
						{type: 'img', id: 'fondoverde', x: 121, y: 346}
						{type: 'img', id: 'fondonaranja', x: 532, y: 346}
						{type: 'pcpt', id: 'pcpt1', x: 241, y: 253, font: '20px Quicksand', margin: 10, align: 'tc', scolor: '#0098d7', stroke: 1}
						{type: 'pcpt', id: 'pcpt2', x: 652, y: 253, font: '20px Quicksand', margin: 10, align: 'tc', scolor: '#0098d7', stroke: 1}
						{type: 'pcpt', id: 'pcpt3', x: 241, y: 446, font: '20px Quicksand', margin: 10, align: 'tc', scolor: '#0098d7', stroke: 1}
						{type: 'pcpt', id: 'pcpt4', x: 652, y: 446, font: '20px Quicksand', margin: 10, align: 'tc', scolor: '#0098d7', stroke: 1}
						{type: 'ldrg', id: 'ldrg1', x: 180, y: 200, index: 'how', text:'how', font:'20px Quicksand', color:'#FFF', target: 'pcpt1', eval: 'phrase_drop_02', afterSuccess: 'hide', afterFail: 'return'}
						{type: 'ldrg', id: 'ldrg2', x: 205, y: 163, index: 'did', text:'did', font:'20px Quicksand', color:'#FFF', target: 'pcpt1', eval: 'phrase_drop_02', afterSuccess: 'hide', afterFail: 'return'}
						{type: 'ldrg', id: 'ldrg3', x: 255, y: 163, index: 'you', text:'you', font:'20px Quicksand', color:'#FFF', target: 'pcpt1', eval: 'phrase_drop_02', afterSuccess: 'hide', afterFail: 'return'}
						{type: 'ldrg', id: 'ldrg4', x: 245, y: 200, index: 'get', text:'get', font:'20px Quicksand', color:'#FFF', target: 'pcpt1', eval: 'phrase_drop_02', afterSuccess: 'hide', afterFail: 'return'}
						{type: 'ldrg', id: 'ldrg5', x: 145, y: 163, index: 'there', text:'there', font:'20px Quicksand', color:'#FFF', target: 'pcpt1', eval: 'phrase_drop_02', afterSuccess: 'hide', afterFail: 'return'}
						{type: 'ldrg', id: 'ldrg6', x: 652, y: 163, index: 'what', text:'what', font:'20px Quicksand', color:'#FFF', target: 'pcpt2', eval: 'phrase_drop_02', afterSuccess: 'hide', afterFail: 'return'}
						{type: 'ldrg', id: 'ldrg7', x: 572, y: 163, index: 'did', text:'did', font:'20px Quicksand', color:'#FFF', target: 'pcpt2', eval: 'phrase_drop_02', afterSuccess: 'hide', afterFail: 'return'}
						{type: 'ldrg', id: 'ldrg8', x: 652, y: 200, index: 'you', text:'you', font:'20px Quicksand', color:'#FFF', target: 'pcpt2', eval: 'phrase_drop_02', afterSuccess: 'hide', afterFail: 'return'}
						{type: 'ldrg', id: 'ldrg9', x: 572, y: 200, index: 'bring', text:'bring', font:'20px Quicksand', color:'#FFF', target: 'pcpt2', eval: 'phrase_drop_02', afterSuccess: 'hide', afterFail: 'return'}
						{type: 'ldrg', id: 'ldrg10', x: 145, y: 355, index: 'what', text:'what', font:'20px Quicksand', color:'#FFF', target: 'pcpt3', eval: 'phrase_drop_02', afterSuccess: 'hide', afterFail: 'return'}
						{type: 'ldrg', id: 'ldrg11', x: 145, y: 395, index: 'did', text:'did', font:'20px Quicksand', color:'#FFF', target: 'pcpt3', eval: 'phrase_drop_02', afterSuccess: 'hide', afterFail: 'return'}
						{type: 'ldrg', id: 'ldrg12', x: 245, y: 395, index: 'you', text:'you', font:'20px Quicksand', color:'#FFF', target: 'pcpt3', eval: 'phrase_drop_02', afterSuccess: 'hide', afterFail: 'return'}
						{type: 'ldrg', id: 'ldrg13', x: 245, y: 355, index: 'trade', text:'trade', font:'20px Quicksand', color:'#FFF', target: 'pcpt3', eval: 'phrase_drop_02', afterSuccess: 'hide', afterFail: 'return'}
						{type: 'ldrg', id: 'ldrg14', x: 652, y: 405, index: 'where', text:'where', font:'20px Quicksand', color:'#FFF', target: 'pcpt4', eval: 'phrase_drop_02', afterSuccess: 'hide', afterFail: 'return'}
						{type: 'ldrg', id: 'ldrg15', x: 572, y: 405, index: 'did', text:'did', font:'20px Quicksand', color:'#FFF', target: 'pcpt4', eval: 'phrase_drop_02', afterSuccess: 'hide', afterFail: 'return'}
						{type: 'ldrg', id: 'ldrg16', x: 572, y: 355, index: 'you', text:'you', font:'20px Quicksand', color:'#FFF', target: 'pcpt4', eval: 'phrase_drop_02', afterSuccess: 'hide', afterFail: 'return'}
						{type: 'ldrg', id: 'ldrg17', x: 652, y: 355, index: 'go', text:'go', font:'20px Quicksand', color:'#FFF', target: 'pcpt4', eval: 'phrase_drop_02', afterSuccess: 'hide', afterFail: 'return'}
					]	
					groups: []
				}
				{
					answers: {
						collection: [
							[
								{name:'snd', opts:{id:'s/rap'}}
								{name: 'wherego', opts:{storyboard:[1], success:'wherego'}}
								{name: 'howget', opts:{storyboard:[1], success:'howget'}}
								{name: 'whattrade', opts:{storyboard:[1], success:'whattrade'}}
								{name: 'whatbring', opts:{storyboard:[1], success:'whatbring'}}
							]
						]
						type: 'steps'
					}
					containers:[
						{type: 'img', id: 'camelrap0001', x: 293, y: 140}
						{type: 'img', id: 'propnota', x: 381, y: 398}
						{type: 'spr', id: 'wherego', imgs: ['wherego1','wherego2'], frames: null, x: 34, y:163}
						{type: 'spr', id: 'howget', imgs: ['howget1','howget2'], frames: null, x: 34, y:259}
						{type: 'spr', id: 'whattrade', imgs: ['whattrade1','whattrade2'], frames: null, x: 515, y:259}
						{type: 'spr', id: 'whatbring', imgs: ['whatbring1','whatbring2'], frames: null, x: 515, y:163}
						{type: 'drg', id: 'wheregodrag', name: 'wheregodr', x: 478, y: 444, index: 'wherego', target: ['wherego','howget','whattrade','whatbring'], eval: 'sprite_drop_01', afterSuccess: 'hide', afterFail: 'return'}
						{type: 'drg', id: 'howgetdrag', name: 'howgetdr', x: 475, y: 500, index: 'howget', target: ['wherego','howget','whattrade','whatbring'], eval: 'sprite_drop_01', afterSuccess: 'hide', afterFail: 'return'}
						{type: 'drg', id: 'whattradedrag', name: 'whattradedr', x: 125, y: 444, index: 'whattrade', target: ['wherego','howget','whattrade','whatbring'], eval: 'sprite_drop_01', afterSuccess: 'hide', afterFail: 'return'}
						{type: 'drg', id: 'whatbringdrag', name: 'whatbringdr', x: 132, y: 500, index: 'whatbring', target: ['wherego','howget','whattrade','whatbring'], eval: 'sprite_drop_01', afterSuccess: 'hide', afterFail: 'return'}
						{
							type: 'btn', id: 'repeat', x: 400, y: 355, isRepeat: true
							states:[img: {name:'repeat', x: 0, y: 0, align:'mc'}]
						}
					]
					groups: []
				}
			]
		super()
	window.U7A3 = U7A3