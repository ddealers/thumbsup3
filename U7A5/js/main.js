/*

NEW ODA
*/


(function() {
  var U7A5,
    __hasProp = {}.hasOwnProperty,
    __extends = function(child, parent) { for (var key in parent) { if (__hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; };

  U7A5 = (function(_super) {
    __extends(U7A5, _super);

    function U7A5() {
      var _this = this;
      this.manifest = [
        {
          id: 'head',
          src: 'pleca1.png'
        }, {
          id: 'c1',
          src: 'circle1.png'
        }, {
          id: 'c2',
          src: 'circle2.png'
        }, {
          id: 'bg',
          src: 'bg.png'
        }, {
          id: 'btnnext',
          src: 'btn_next.png'
        }, {
          id: 'btnrepeat',
          src: 'btn_repeat.png'
        }, {
          id: 'scene1',
          src: 'scene_1.png'
        }, {
          id: 'scene2',
          src: 'scene_2.png'
        }, {
          id: 'scene3',
          src: 'scene_3.png'
        }, {
          id: 'scene4',
          src: 'scene_4.png'
        }, {
          id: 'scene5',
          src: 'scene_5.png'
        }, {
          id: 'scene6',
          src: 'scene_6.png'
        }, {
          id: 'lanswer',
          src: 'label_answer.png'
        }, {
          id: 'lquestion',
          src: 'label_question.png'
        }, {
          id: 'l1',
          src: '1.png'
        }, {
          id: 'l2',
          src: '2.png'
        }, {
          id: 'l3',
          src: '3.png'
        }, {
          id: 'l4',
          src: '4.png'
        }, {
          id: 'l5',
          src: '5.png'
        }, {
          id: 'l6',
          src: '6.png'
        }, {
          id: 'l7',
          src: '7.png'
        }, {
          id: 'l8',
          src: '8.png'
        }, {
          id: 'l9',
          src: '9.png'
        }, {
          id: 'l10',
          src: '10.png'
        }, {
          id: 'l11',
          src: '11.png'
        }, {
          id: 'l12',
          src: '12.png'
        }, {
          id: 'l13',
          src: '13.png'
        }, {
          id: 'l14',
          src: '14.png'
        }, {
          id: 'l15',
          src: '15.png'
        }, {
          id: 'l16',
          src: '16.png'
        }, {
          id: 'l17',
          src: '17.png'
        }, {
          id: 'l18',
          src: '18.png'
        }, {
          src: 'TU3_U7_A5_instructions.mp3',
          id: 's/instructions'
        }, {
          src: 'TU3_U7_A5_song_1.mp3',
          id: 's/song1'
        }, {
          src: 'TU3_U7_A5_song_2.mp3',
          id: 's/song2'
        }, {
          src: 'TU3_U7_A5_song_3.mp3',
          id: 's/song3'
        }, {
          src: 'TU3_U7_A5_song_4.mp3',
          id: 's/song4'
        }, {
          src: 'TU3_U7_A5_song_5.mp3',
          id: 's/song5'
        }, {
          src: 'TU3_U7_A5_song_6.mp3',
          id: 's/song6'
        }
      ];
      this.baseClick = function(dispatcher, target) {
        var a;
        a = lib[dispatcher];
        return d2oda.evaluator.success = a.index;
      };
      this.btnClick = function(dispatcher, target) {
        var a;
        a = lib[dispatcher];
        if (a.index === d2oda.evaluator.success) {
          return console.log(true);
        } else {
          return console.log(false);
        }
      };
      this.game = {
        header: 'head',
        instructions: {
          x: 40,
          y: 100,
          states: [
            {
              text: 'Read the text and match the questions with the answers.',
              sound: 's/instructions',
              played: false
            }
          ]
        },
        score: {
          type: 'points',
          x: 20,
          y: 500,
          init: 0,
          total: 18,
          aimg: 'c1',
          acolor: '#0096DB',
          bimg: 'c2',
          bcolor: '#BFD951'
        },
        scenes: [
          {
            answers: {
              collection: [
                [
                  {
                    name: 'snd',
                    opts: {
                      id: 's/song1'
                    }
                  }
                ]
              ],
              type: 'steps'
            },
            containers: [
              {
                type: 'img',
                id: 'bg',
                x: 400,
                y: 0,
                align: 'tc'
              }, {
                type: 'img',
                id: 'scene1',
                x: 400,
                y: 130,
                align: 'tc'
              }, {
                type: 'btn',
                id: 'btn1',
                x: 180,
                y: 445,
                index: 1,
                target: 'global',
                "eval": this.baseClick,
                states: [
                  {
                    txt: {
                      text: '1. What instrument did Aniz play?',
                      x: 0,
                      y: 0,
                      font: '12px Quicksand'
                    }
                  }
                ]
              }, {
                type: 'btn',
                id: 'btn2',
                x: 180,
                y: 470,
                index: 2,
                target: 'global',
                "eval": this.baseClick,
                states: [
                  {
                    txt: {
                      text: '2. Who listened to Aniz?',
                      x: 0,
                      y: 0,
                      font: '12px Quicksand'
                    }
                  }
                ]
              }, {
                type: 'btn',
                id: 'btn3',
                x: 180,
                y: 495,
                index: 3,
                target: 'global',
                "eval": this.baseClick,
                states: [
                  {
                    txt: {
                      text: '3. Who didn\'t like Aniz\'s music?',
                      x: 0,
                      y: 0,
                      font: '12px Quicksand'
                    }
                  }
                ]
              }, {
                type: 'btn',
                id: 'btn4',
                x: 660,
                y: 445,
                index: 1,
                target: 'global',
                "eval": this.btnClick,
                states: [
                  {
                    txt: {
                      text: 'The landlord.',
                      x: 0,
                      y: 0,
                      font: '12px Quicksand',
                      align: 'right'
                    }
                  }
                ]
              }, {
                type: 'btn',
                id: 'btn5',
                x: 660,
                y: 470,
                index: 2,
                target: 'global',
                "eval": this.btnClick,
                states: [
                  {
                    txt: {
                      text: 'He played the flute.',
                      x: 0,
                      y: 0,
                      font: '12px Quicksand',
                      align: 'right'
                    }
                  }
                ]
              }, {
                type: 'btn',
                id: 'btn6',
                x: 660,
                y: 495,
                index: 3,
                target: 'global',
                "eval": this.btnClick,
                states: [
                  {
                    txt: {
                      text: 'Other people and his sheep.',
                      x: 0,
                      y: 0,
                      font: '12px Quicksand',
                      align: 'right'
                    }
                  }
                ]
              }, {
                type: 'img',
                id: 'lquestion',
                x: 230,
                y: 395,
                align: 'tc'
              }, {
                type: 'img',
                id: 'lanswer',
                x: 600,
                y: 395,
                align: 'tc'
              }, {
                type: 'btn',
                id: 'repeat',
                x: 400,
                y: 570,
                isRepeat: true,
                states: [
                  {
                    img: {
                      name: 'btnrepeat',
                      x: 0,
                      y: 0,
                      align: 'mc'
                    }
                  }
                ]
              }
            ],
            groups: []
          }
        ]
      };
      U7A5.__super__.constructor.call(this);
    }

    window.U7A5 = U7A5;

    return U7A5;

  })(Oda);

}).call(this);
