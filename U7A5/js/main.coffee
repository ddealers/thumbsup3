###

NEW ODA

###
class U7A5 extends Oda
	constructor: ->
		@manifest = [
			{id: 'head', src: 'pleca1.png'}
			{id: 'c1', src: 'circle1.png'}
			{id: 'c2', src: 'circle2.png'}
            {id: 'bg', src:'bg.png'}
			{id: 'btnnext', src: 'btn_next.png'}
			{id: 'btnrepeat', src: 'btn_repeat.png'}
			{id: 'scene1', src:'scene_1.png'}
			{id: 'scene2', src:'scene_2.png'}
			{id: 'scene3', src:'scene_3.png'}
			{id: 'scene4', src:'scene_4.png'}	
			{id: 'scene5', src:'scene_5.png'}	
			{id: 'scene6', src:'scene_6.png'}
            {id: 'lanswer', src:'label_answer.png'}
            {id: 'lquestion', src:'label_question.png'}
            {id: 'l1', src:'1.png'}
            {id: 'l2', src:'2.png'}
            {id: 'l3', src:'3.png'}
            {id: 'l4', src:'4.png'}
            {id: 'l5', src:'5.png'}
            {id: 'l6', src:'6.png'}
            {id: 'l7', src:'7.png'}
            {id: 'l8', src:'8.png'}
            {id: 'l9', src:'9.png'}
            {id: 'l10', src:'10.png'}
            {id: 'l11', src:'11.png'}
            {id: 'l12', src:'12.png'}
            {id: 'l13', src:'13.png'}
            {id: 'l14', src:'14.png'}
            {id: 'l15', src:'15.png'}
            {id: 'l16', src:'16.png'}
            {id: 'l17', src:'17.png'}
            {id: 'l18', src:'18.png'}
			{src:'TU3_U7_A5_instructions.mp3', id:'s/instructions'}
            {src:'TU3_U7_A5_song_1.mp3', id:'s/song1'}
            {src:'TU3_U7_A5_song_2.mp3', id:'s/song2'}
            {src:'TU3_U7_A5_song_3.mp3', id:'s/song3'}
            {src:'TU3_U7_A5_song_4.mp3', id:'s/song4'}
            {src:'TU3_U7_A5_song_5.mp3', id:'s/song5'}
            {src:'TU3_U7_A5_song_6.mp3', id:'s/song6'}
		]
		totality = lib.total_index = 0
		@baseClick = (dispatcher, target) =>
			a = lib[dispatcher]
			d2oda.evaluator.success = a.index
			a.complete = true
		@btnClick = (dispatcher, target) =>
			a = lib[dispatcher]
			if a.index is d2oda.evaluator.success
				lib.score.plusOne()
				createjs.Sound.play 's/good'
			else
				lib.scene.fail()

			totality = totality + 1
			if totality == 3
				lib.game.nextScene()
				totality = lib.total_index = 0
		@game = 
			header: 'head'
			instructions: {x: 40, y: 100, states: [{text:'Read the text and match the questions with the answers.', sound:'s/instructions', played: false}]}
			score:{type: 'points', x:20, y:500, init: 0, total: 18, aimg: 'c1', acolor: '#0096DB', bimg: 'c2', bcolor: '#BFD951'}
			scenes:[
				{
					answers: {
						collection: [
							[
                                {name:'snd', opts:{id:'s/song1'}}
                                {name:'total', opts:{total: 3}}
                            ]
						]
						mixed: true
						type: 'steps'
					}
					containers:[
                        {type:'img', id: 'bg', x: 400, y: 0, align: 'tc'}
                        {type:'img', id: 'scene1', x:400, y: 130, align: 'tc'}
                        {
                        	type: 'btn', id: 'btn1', x: 180, y: 445, index: 1, target: 'global'
                        	eval: @baseClick
                        	states: [{txt: {text: '1. What instrument did Aniz play?', x: 0, y: 0, font: '12px Quicksand'}}]
                        }
						{
							type: 'btn', id: 'btn2', x: 180, y: 470, index: 2, target: 'global'
							eval: @baseClick
							states: [{txt: {text: '2. Who listened to Aniz?', x: 0, y: 0, font: '12px Quicksand'}}]
						}
						{
							type: 'btn', id: 'btn3', x: 180, y: 495, index: 3, target: 'global'
							eval: @baseClick
							states: [{txt: {text: '3. Who didn\'t like Aniz\'s music?', x: 0, y: 0, font: '12px Quicksand'}}]
						}
						{
							type: 'btn', id: 'btn4', x: 660, y: 445, index: 1, target: 'global'
							eval: @btnClick
							states: [{txt: {text: 'The landlord.', x: 0, y: 0, font: '12px Quicksand', align:'right'}}]
						}
						{
							type: 'btn', id: 'btn5', x: 660, y: 470, index: 2, target: 'global'
							eval: @btnClick
							states: [{txt: {text: 'He played the flute.', x: 0, y: 0, font: '12px Quicksand', align:'right'}}]
						}
						{
							type: 'btn', id: 'btn6', x: 660, y: 495, index: 3, target: 'global'
							eval: @btnClick
							states: [{txt: {text: 'Other people and his sheep.', x: 0, y: 0, font: '12px Quicksand', align:'right'}}]
						}
                        {type:'img', id: 'lquestion', x:230, y: 395, align: 'tc'}
                        {type:'img', id: 'lanswer', x:600, y: 395, align: 'tc'}

					]	
					groups: []
				}
				{
					answers: {
						collection:[
							[
								{name:'snd', opts:{id:'s/song2'}}
								{name:'total', opts:{total: 3}}
							]
						]
						mixed: true
						type: 'steps'
					}
					containers:[
						{type:'img', id: 'bg', x: 400, y: 0, align: 'tc'}
                        {type:'img', id: 'scene2', x:400, y: 170, align: 'tc'}
						{
                        	type: 'btn', id: 'btn7', x: 180, y: 445, index: 4, target: 'global'
                        	eval: @baseClick
                        	states: [{txt: {text: '4. How did Aniz fell?', x: 0, y: 0, font: '12px Quicksand'}}]
                        }
						{
							type: 'btn', id: 'btn8', x: 180, y: 470, index: 5, target: 'global'
							eval: @baseClick
							states: [{txt: {text: '5. Who made Aniz a new flute?', x: 0, y: 0, font: '12px Quicksand'}}]
						}
						{
							type: 'btn', id: 'btn9', x: 180, y: 495, index: 6, target: 'global'
							eval: @baseClick
							states: [{txt: {text: '6. Where did they find bamboo?', x: 0, y: 0, font: '12px Quicksand'}}]
						}
						{
							type: 'btn', id: 'btn10', x: 660, y: 445, index: 4, target: 'global'
							eval: @btnClick
							states: [{txt: {text: 'He was very sad.', x: 0, y: 0, font: '12px Quicksand', align:'right'}}]
						}
						{
							type: 'btn', id: 'btn11', x: 660, y: 470, index: 5, target: 'global'
							eval: @btnClick
							states: [{txt: {text: 'A kind old man.', x: 0, y: 0, font: '12px Quicksand', align:'right'}}]
						}
						{
							type: 'btn', id: 'btn12', x: 660, y: 495, index: 6, target: 'global'
							eval: @btnClick
							states: [{txt: {text: 'In a market.', x: 0, y: 0, font: '12px Quicksand', align:'right'}}]
						}
                        {type:'img', id: 'lquestion', x:230, y: 395, align: 'tc'}
                        {type:'img', id: 'lanswer', x:600, y: 395, align: 'tc'}
					]
					groups: []
				}
				{
					answers: {
						collection:[
							[
								{name:'snd', opts:{id:'s/song3'}}
								{name:'total', opts:{total: 3}}
							]
						]
						mixed: true
						type: 'steps'
					}
					containers:[
						{type:'img', id: 'bg', x: 400, y: 0, align: 'tc'}
                        {type:'img', id: 'scene3', x:400, y: 175, align: 'tc'}
						{
                        	type: 'btn', id: 'btn13', x: 180, y: 445, index: 7, target: 'global'
                        	eval: @baseClick
                        	states: [{txt: {text: '7. What did the landlord dream about?', x: 0, y: 0, font: '12px Quicksand'}}]
                        }
						{
							type: 'btn', id: 'btn14', x: 180, y: 470, index: 8, target: 'global'
							eval: @baseClick
							states: [{txt: {text: '8. What was different about the rabbit?', x: 0, y: 0, font: '12px Quicksand'}}]
						}
						{
							type: 'btn', id: 'btn15', x: 180, y: 495, index: 9, target: 'global'
							eval: @baseClick
							states: [{txt: {text: '9. What did the landlord want his sons to do?', x: 0, y: 0, font: '12px Quicksand'}}]
						}
						{
							type: 'btn', id: 'btn16', x: 660, y: 445, index: 7, target: 'global'
							eval: @btnClick
							states: [{txt: {text: 'A rabbit.', x: 0, y: 0, font: '12px Quicksand', align:'right'}}]
						}
						{
							type: 'btn', id: 'btn17', x: 660, y: 470, index: 8, target: 'global'
							eval: @btnClick
							states: [{txt: {text: 'It had a black spot on its head.', x: 0, y: 0, font: '12px Quicksand', align:'right'}}]
						}
						{
							type: 'btn', id: 'btn18', x: 660, y: 495, index: 9, target: 'global'
							eval: @btnClick
							states: [{txt: {text: 'To catch the rabbit.', x: 0, y: 0, font: '12px Quicksand', align:'right'}}]
						}
                        {type:'img', id: 'lquestion', x:230, y: 395, align: 'tc'}
                        {type:'img', id: 'lanswer', x:600, y: 395, align: 'tc'}
					]
					groups: []
				}
				{
					answers: {
						collection:[
							[
								{name:'snd', opts:{id:'s/song4'}}
								{name:'total', opts:{total: 3}}
							]
						]
						mixed: true
						type: 'steps'
					}
					containers:[
						{type:'img', id: 'bg', x: 400, y: 0, align: 'tc'}
                        {type:'img', id: 'scene4', x:400, y: 190, align: 'tc'}
						{
                        	type: 'btn', id: 'btn19', x: 180, y: 445, index: 10, target: 'global'
                        	eval: @baseClick
                        	states: [{txt: {text: '10. Who did the oldest son talk to first?', x: 0, y: 0, font: '12px Quicksand'}}]
                        }
						{
							type: 'btn', id: 'btn20', x: 180, y: 470, index: 11, target: 'global'
							eval: @baseClick
							states: [{txt: {text: '11. Why did the rabbit come out of the forest?', x: 0, y: 0, font: '12px Quicksand'}}]
						}
						{
							type: 'btn', id: 'btn21', x: 180, y: 495, index: 12, target: 'global'
							eval: @baseClick
							states: [{txt: {text: '12. How did the rabbit escape?', x: 0, y: 0, font: '12px Quicksand'}}]
						}
						{
							type: 'btn', id: 'btn22', x: 660, y: 445, index: 10, target: 'global'
							eval: @btnClick
							states: [{txt: {text: 'To the kind old man.', x: 0, y: 0, font: '12px Quicksand', align:'right'}}]
						}
						{
							type: 'btn', id: 'btn23', x: 660, y: 470, index: 11, target: 'global'
							eval: @btnClick
							states: [{txt: {text: 'Aniz played a beautiful song.', x: 0, y: 0, font: '12px Quicksand', align:'right'}}]
						}
						{
							type: 'btn', id: 'btn24', x: 660, y: 495, index: 12, target: 'global'
							eval: @btnClick
							states: [{txt: {text: 'It jumped out of the bag.', x: 0, y: 0, font: '12px Quicksand', align:'right'}}]
						}
                        {type:'img', id: 'lquestion', x:230, y: 395, align: 'tc'}
                        {type:'img', id: 'lanswer', x:600, y: 395, align: 'tc'}
					]
					groups: []
				}
				{
					answers: {
						collection:[
							[
								{name:'snd', opts:{id:'s/song5'}}
								{name:'total', opts:{total: 3}}
							]
						]
						mixed: true
						type: 'steps'
					}
					containers:[
						{type:'img', id: 'bg', x: 400, y: 0, align: 'tc'}
                        {type:'img', id: 'scene5', x:400, y: 190, align: 'tc'}
						{
                        	type: 'btn', id: 'btn25', x: 180, y: 445, index: 13, target: 'global'
                        	eval: @baseClick
                        	states: [{txt: {text: '13. What mistake did the sons make?', x: 0, y: 0, font: '12px Quicksand'}}]
                        }
						{
							type: 'btn', id: 'btn26', x: 180, y: 470, index: 14, target: 'global'
							eval: @baseClick
							states: [{txt: {text: '14. How many people went looking for the rabbit?', x: 0, y: 0, font: '12px Quicksand'}}]
						}
						{
							type: 'btn', id: 'btn27', x: 180, y: 495, index: 15, target: 'global'
							eval: @baseClick
							states: [{txt: {text: '15. Who did the landlor see in the forest?', x: 0, y: 0, font: '12px Quicksand'}}]
						}
						{
							type: 'btn', id: 'btn28', x: 660, y: 445, index: 13, target: 'global'
							eval: @btnClick
							states: [{txt: {text: 'They looked in the bag.', x: 0, y: 0, font: '12px Quicksand', align:'right'}}]
						}
						{
							type: 'btn', id: 'btn29', x: 660, y: 470, index: 14, target: 'global'
							eval: @btnClick
							states: [{txt: {text: 'Four.', x: 0, y: 0, font: '12px Quicksand', align:'right'}}]
						}
						{
							type: 'btn', id: 'btn30', x: 660, y: 495, index: 15, target: 'global'
							eval: @btnClick
							states: [{txt: {text: 'Aniz.', x: 0, y: 0, font: '12px Quicksand', align:'right'}}]
						}
                        {type:'img', id: 'lquestion', x:230, y: 395, align: 'tc'}
                        {type:'img', id: 'lanswer', x:600, y: 395, align: 'tc'}
					]
					groups: []
				}
				{
					answers: {
						collection:[
							[
								{name:'snd', opts:{id:'s/song6'}}
								{name:'total', opts:{total: 3}}
							]
						]
						mixed: true
						type: 'steps'
					}
					containers:[
						{type:'img', id: 'bg', x: 400, y: 0, align: 'tc'}
                        {type:'img', id: 'scene6', x:400, y: 190, align: 'tc'}
						{
                        	type: 'btn', id: 'btn31', x: 180, y: 445, index: 16, target: 'global'
                        	eval: @baseClick
                        	states: [{txt: {text: '16. What was the shadows?', x: 0, y: 0, font: '12px Quicksand'}}]
                        }
						{
							type: 'btn', id: 'btn32', x: 180, y: 470, index: 17, target: 'global'
							eval: @baseClick
							states: [{txt: {text: '17. What were they doing?', x: 0, y: 0, font: '12px Quicksand'}}]
						}
						{
							type: 'btn', id: 'btn33', x: 180, y: 495, index: 18, target: 'global'
							eval: @baseClick
							states: [{txt: {text: '18. Why did the landlord promise to be kind?', x: 0, y: 0, font: '12px Quicksand'}}]
						}
						{
							type: 'btn', id: 'btn34', x: 660, y: 445, index: 16, target: 'global'
							eval: @btnClick
							states: [{txt: {text: 'Bears, tigers and wolves.', x: 0, y: 0, font: '12px Quicksand', align:'right'}}]
						}
						{
							type: 'btn', id: 'btn35', x: 660, y: 470, index: 17, target: 'global'
							eval: @btnClick
							states: [{txt: {text: 'They were listening to Aniz.', x: 0, y: 0, font: '12px Quicksand', align:'right'}}]
						}
						{
							type: 'btn', id: 'btn36', x: 660, y: 495, index: 18, target: 'global'
							eval: @btnClick
							states: [{txt: {text: 'He was afraid of the animals.', x: 0, y: 0, font: '12px Quicksand', align:'right'}}]
						}
                        {type:'img', id: 'lquestion', x:230, y: 395, align: 'tc'}
                        {type:'img', id: 'lanswer', x:600, y: 395, align: 'tc'}
						{
							type: 'btn', id: 'repeat', x: 400, y: 570, isRepeat: true
							states: [{img: {name: 'btnrepeat', x: 0, y: 0, align: 'mc'}}]
						}
					]
					groups: []
				}
			]
		super()
	window.U7A5 = U7A5