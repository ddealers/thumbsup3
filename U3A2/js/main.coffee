###

NEW ODA

###
class U3A2 extends Oda
	constructor: ->
		@manifest = [
			{id: 'head', src: 'pleca.png'}
			{id: 'c1', src: 'circle1.png'}
			{id: 'c2', src: 'circle2.png'}
			{id: 'repeat', src:'btn_repeat.png'}
			{id: 'kid0', src:'kid_nate.png'}
			{id: 'kid1', src:'kid_ricky.png'}
			{id: 'kid2', src:'kid_daniel.png'}
			{id: 'kid3', src:'kid_hudson.png'}
			{id: 'girl0', src:'kid_magda.png'}
			{id: 'girl1', src:'kid_keira.png'}
			{id: 'girl2', src:'kid_mia.png'}
			{id: 'girl3', src:'kid_gemma.png'}
			{src:'TU3_U3_A2_instructions.mp3', id:'s/instructions'}
			{src:'TU3_U3_A2_daniel.mp3', id:'s/daniel'}
			{src:'TU3_U3_A2_gemma.mp3', id:'s/gemma'}
			{src:'TU3_U3_A2_hudson.mp3', id:'s/hudson'}
			{src:'TU3_U3_A2_keira.mp3', id:'s/keira'}
			{src:'TU3_U3_A2_magda.mp3', id:'s/magda'}
			{src:'TU3_U3_A2_mia.mp3', id:'s/mia'}
			{src:'TU3_U3_A2_nate.mp3', id:'s/nate'}
			{src:'TU3_U3_A2_ricky.mp3', id:'s/ricky'}
		]
		@game = 
			header: 'head'
			instructions: {x: 40, y: 100, states: [{text:'Who is it? Listen and click on the correct person.', sound:'s/instructions', played: false}]}
			score:{type: 'points', x:20, y:500, init: 0, total: 8, aimg: 'c1', acolor: '#0096DB', bimg: 'c2', bcolor: '#BFD951'}
			scenes:[
				{
					answers: {
						collection: [
							[
								{name:'global',opts:{success:'daniel'}}
								{name:'snd', opts:{id:'s/daniel'}}
							]
							[
								{name:'global',opts:{success:'hudson'}}
								{name:'snd', opts:{id:'s/hudson'}}
							]
							[
								{name:'global',opts:{success:'nate'}}
								{name:'snd', opts:{id:'s/nate'}}
							]
							[
								{name:'global',opts:{success:'ricky'}}
								{name:'snd', opts:{id:'s/ricky'}}
							]
						]
						mixed: true
						type: 'steps'
					}
					containers:[
						{
							type: 'btn', id: 'btn1', x: 250, y: 330, index: 'nate', eval: 'global_01'
							states: [
								{
									img: {name: 'kid0', x: 0, y: 0,scale:0.5, align: 'bc'}
								}
							]
						}
						{
							type: 'btn', id: 'btn2', x: 570, y: 330, index: 'ricky', eval: 'global_01'
							states: [
								{
									img: {name: 'kid1', x: 0, y: 0,scale:0.5, align: 'bc'}
								}
							]
						}
						{
							type: 'btn', id: 'btn3', x: 250, y: 530, index: 'daniel', eval: 'global_01'
							states: [
								{
									img: {name: 'kid2', x: 0, y: 0,scale:0.5, align: 'bc'}
								}
							]
						}
						{
							type: 'btn', id: 'btn4', x: 570, y: 530, index: 'hudson', eval: 'global_01'
							states: [
								{
									img: {name: 'kid3', x: 0, y: 0,scale:0.5, align: 'bc'}
								}
							]
						}
						{
							type: 'btn', id: 'repeat', x: 400, y: 550, align: 'tc', isRepeat: true
							states:[
								img: {name:'repeat', x: 0, y: 0,}
							]
						}
					]
					groups: []
				}
				{
					answers: {
						collection: [
							[
								{name:'global',opts:{success:'gemma'}}
								{name:'snd', opts:{id:'s/gemma'}}
							]
							[
								{name:'global',opts:{success:'magda'}}
								{name:'snd', opts:{id:'s/magda'}}
							]
							[
								{name:'global',opts:{success:'keira'}}
								{name:'snd', opts:{id:'s/keira'}}
							]
							[
								{name:'global',opts:{success:'mia'}}
								{name:'snd', opts:{id:'s/mia'}}
							]
						]
						mixed: true
						type: 'steps'
					}
					containers:[
						{
							type: 'btn', id: '2btn1', x: 250, y: 330, index: 'magda', eval: 'global_01'
							states: [
								{
									img: {name: 'girl0', x: 0, y: 0,scale:0.5, align: 'bc'}
								}
							]
						}
						{
							type: 'btn', id: '2btn2', x: 570, y: 330, index: 'keira', eval: 'global_01'
							states: [
								{
									img: {name: 'girl1', x: 0, y: 0,scale:0.5, align: 'bc'}
								}
							]
						}
						{
							type: 'btn', id: '2btn3', x: 250, y: 530, index: 'mia', eval: 'global_01'
							states: [
								{
									img: {name: 'girl2', x: 0, y: 0,scale:0.5, align: 'bc'}
								}
							]
						}
						{
							type: 'btn', id: '2btn4', x: 570, y: 530, index: 'gemma', eval: 'global_01'
							states: [
								{
									img: {name: 'girl3', x: 0, y: 0,scale:0.5, align: 'bc'}
								}
							]
						}
						{
							type: 'btn', id: 'repeat', x: 400, y: 550, align: 'tc', isRepeat: true
							states:[
								img: {name:'repeat', x: 0, y: 0,}
							]
						}
					]
					groups: []
				}
			]
		super()
	window.U3A2 = U3A2