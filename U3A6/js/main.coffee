
			{id: 'numberdancing', src: 'number_dancing.png'}
			{id: 'numbermaking', src: 'number_making.png'}
			{id: 'numberpainting', src: 'number_painting.png'}
			{id: 'numberplaying', src: 'number_playing.png'}
			{id: 'numbersinging', src: 'number_singing.png'}
			{id: 'crosswords', src: 'prop_crossword-1.png'}
			{src:'TU3_U3_A6_instructions.mp3', id:'s/instructions'}
		]
		@game = 
			header: 'head'
			instructions: {x: 40, y: 100,###

NEW ODA

###
class U3A6 extends Oda
	constructor: ->
		@manifest = [
			{id: 'head', src: 'pleca1.png'}
		    {id:'c1' , src: 'circle1.png'}
		    {id:'c2' , src: 'circle2.png'}
		    {id: 'cooking', src: 'image_cooking.png'}
			{id: 'dancing', src: 'image_dancing.png'}
			{id: 'making', src: 'image_making.png'}
			{id: 'painting', src: 'image_painting.png'}
			{id: 'playing', src: 'image_playing.png'}
			{id: 'singing', src: 'image_singing.png'}
			{id: 'numbercooking', src: 'number_cooking.png'} states: [{text:'Look and drag the letters to complete the crossword puzzle.', sound:'s/instructions', played: false}]}
			score:{type: 'points', x:20, y:500, init: 0, total: 6, aimg: 'c1', acolor: '#0096DB', bimg: 'c2', bcolor: '#BFD951'}
			scenes:[
				{
					answers: {
						collection: [
							[
								{
									name:'cwd1'
									opts:{
										matrix:[
											['#','#','#','#','#','#','#','#','p','#','#','#','#','#']
											['#','#','#','#','#','#','#','#','l','#','#','#','#','#']
											['#','#','#','#','#','#','#','d','a','n','c','i','n','g']
											['#','#','#','#','#','#','#','#','y','#','#','#','#','#']
											['#','#','#','#','#','#','m','#','i','#','s','#','#','#']
											['#','#','#','#','#','p','a','i','n','t','i','n','g','#']
											['#','#','#','#','#','#','k','#','g','#','n','#','#','#']
											['#','#','#','#','#','#','i','#','-','#','g','#','#','#']
											['#','#','#','#','#','#','n','#','t','#','i','#','#','#']
											['c','o','o','k','i','n','g','#','h','#','n','#','#','#']
											['#','#','#','#','#','#','-','#','e','#','g','#','#','#']
											['#','#','#','#','#','#','c','#','-','#','#','#','#','#']
											['#','#','#','#','#','#','r','#','f','#','#','#','#','#']
											['#','#','#','#','#','#','a','#','l','#','#','#','#','#']
											['#','#','#','#','#','#','f','#','u','#','#','#','#','#']
											['#','#','#','#','#','#','t','#','t','#','#','#','#','#']
											['#','#','#','#','#','#','s','#','e','#','#','#','#','#']
										]
										words:[
											{
												x: 165, y: -25, target:'playing', complete: false
												coords:['80', '81', '82', '83', '84', '85', '86', '88', '89', '810', '812', '813', '814', '815', '816']
											}
											{
												x: 125, y: 37, target:'dancing', complete: false
												coords:['72', '82', '92', '102', '112', '122', '132']
											}
											{
												x: 125, y: 59, target:'making', complete: false
												coords:['64', '65', '66', '67', '68', '69', '611', '612', '613', '614', '615', '616']
											}
											{
												x: 205, y: 59, target:'singing', complete: false
												coords:['104', '105', '106', '107', '108', '109', '1010']
											}
											{
												x: 85, y: 100, target:'painting', complete: false
												coords:['55', '65', '75', '85', '95', '105', '115', '125']
											}
											{
												x: -15, y: 178, target:'cooking', complete: false
												coords:['09', '19', '29', '39', '49', '59', '69']
											}
										]
									}
								}
							]
						]
						type: 'steps'
					}
					containers:[
						{type: 'img', id: 'cooking', x: 564, y: 422,scale:0.5, align: 'mc'}
						{type: 'img', id: 'numbercooking', x: 547, y: 354}
						{type: 'img', id: 'dancing', x: 109, y: 258,scale:0.5, align: 'mc'}
						{type: 'img', id: 'numberdancing', x: 63, y: 185}
						{type: 'img', id: 'making', x: 193, y: 403,scale:0.5, align: 'mc'}
						{type: 'img', id: 'numbermaking', x: 136, y: 370}
						{type: 'img', id: 'painting', x: 688, y: 297,scale:0.5, align: 'mc'}
						{type: 'img', id: 'numberpainting', x: 587, y: 244}
						{type: 'img', id: 'playing', x: 263, y: 200,scale:0.5, align: 'mc'}
						{type: 'img', id: 'numberplaying', x: 237, y: 137}
						{type: 'img', id: 'singing', x: 708, y: 159,scale:0.5, align: 'mc'}
						{type: 'img', id: 'numbersinging', x: 681, y: 80}
						{type:'cwd', id: 'cwd1', x: 285, y: 156, font: '20px Quicksand', fcolor:'#333', uwidth: 20, uheight: 20, stroke: 1, scolor: '#000'}
						{type: 'abc', id: 'abc1', x: 400, y: 560, font:'20px Quicksand', fcolor:'#333', uwidth: 22, uheight: 34, margin: 10, target:'cwd1', eval:'drop_04'}
					]
					groups: []
				}
			]
		super()
	window.U3A6 = U3A6