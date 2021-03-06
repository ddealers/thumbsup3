/*

NEW ODA
*/


(function() {
  var U2A3,
    __hasProp = {}.hasOwnProperty,
    __extends = function(child, parent) { for (var key in parent) { if (__hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; };

  U2A3 = (function(_super) {
    __extends(U2A3, _super);

    function U2A3() {
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
          id: 'letraM',
          src: 'letra_M.png'
        }, {
          id: 'letraU',
          src: 'letra_U.png'
        }, {
          id: 'letraS',
          src: 'letra_S.png'
        }, {
          id: 'letraH',
          src: 'letra_H.png'
        }, {
          id: 'letraR',
          src: 'letra_R.png'
        }, {
          id: 'letraO',
          src: 'letra_O.png'
        }, {
          id: 'mush',
          src: 'mush.png'
        }, {
          id: 'priceblueberryJam',
          src: 'price_blueberryJam.png'
        }, {
          id: 'pricebutter',
          src: 'price_butter.png'
        }, {
          id: 'pricecarrots',
          src: 'price_carrots.png'
        }, {
          id: 'pricechilis',
          src: 'price_chilis.png'
        }, {
          id: 'pricecream',
          src: 'price_cream.png'
        }, {
          id: 'priceeggs',
          src: 'price_eggs.png'
        }, {
          id: 'pricemushrooms',
          src: 'price_mushrooms.png'
        }, {
          id: 'pricepeachJam',
          src: 'price_peachJam.png'
        }, {
          id: 'pricepeppers',
          src: 'price_peppers.png'
        }, {
          id: 'propabuelita',
          src: 'prop_abuelita.png'
        }, {
          id: 'propbg',
          src: 'prop_bg.png'
        }, {
          id: 'clue',
          src: 'text_clue.png'
        }, {
          id: 's/instructions',
          src: 'TU3_U2_A3_Instructions.mp3'
        }, {
          id: 's/instructions2',
          src: 'TU3_U2_A3_Instructions2.mp3'
        }
      ];
      this.game = {
        header: 'head',
        instructions: {
          x: 40,
          y: 100,
          states: [
            {
              text: 'Read the price and click on the correct item.',
              sound: 's/instructions',
              played: false
            }, {
              text: 'Read the question and drag the letters to write the answer.',
              sound: 's/instructions2',
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
          acolor: '#EB2D3C',
          bimg: 'c2',
          bcolor: '#C3DB5B'
        },
        scenes: [
          {
            answers: {
              collection: [
                [
                  {
                    name: 'lbl1',
                    opts: {
                      text: 'It\'s three dollars and ten cents.',
                      success: 'peach'
                    }
                  }
                ], [
                  {
                    name: 'lbl1',
                    opts: {
                      text: 'They\'re three dollars a kilo.',
                      success: 'carrots'
                    }
                  }
                ], [
                  {
                    name: 'lbl1',
                    opts: {
                      text: 'It\'s ninety-five cents.',
                      success: 'cream'
                    }
                  }
                ], [
                  {
                    name: 'lbl1',
                    opts: {
                      text: 'It\'s one dollar and fifty cents.',
                      success: 'butter'
                    }
                  }
                ], [
                  {
                    name: 'lbl1',
                    opts: {
                      text: 'They\'re two dollars and seventy-five cents.',
                      success: 'chilis'
                    }
                  }
                ], [
                  {
                    name: 'lbl1',
                    opts: {
                      text: 'They\'re two dollars and forty cents a kilo.',
                      success: 'peppers'
                    }
                  }
                ], [
                  {
                    name: 'lbl1',
                    opts: {
                      text: 'They\'re two dollars and seventy-five cents a kilo.',
                      success: 'eggs'
                    }
                  }
                ], [
                  {
                    name: 'lbl1',
                    opts: {
                      text: 'It\'s four dollars and fifty cents.',
                      success: 'blueberry'
                    }
                  }
                ], [
                  {
                    name: 'lbl1',
                    opts: {
                      text: 'They\'re four dollars and five cents a kilo.',
                      success: 'mushrooms'
                    }
                  }
                ]
              ],
              mixed: true,
              type: 'steps'
            },
            containers: [
              {
                type: 'img',
                id: 'propbg',
                name: 'propbg',
                x: 426,
                y: 308,
                align: 'mc'
              }, {
                type: 'lbl',
                id: 'lbl1',
                x: 415,
                y: 530,
                font: '20px Quicksand',
                color: '#333',
                align: 'center'
              }, {
                type: 'btn',
                id: 'btn1',
                x: 521,
                y: 404,
                index: 'blueberry',
                target: 'lbl1',
                "eval": 'click_02',
                states: [
                  {
                    img: {
                      name: 'priceblueberryJam',
                      x: 0,
                      y: 0,
                      align: 'mc'
                    }
                  }, {
                    img: {
                      name: 'letraM',
                      x: 0,
                      y: 0,
                      align: 'mc'
                    },
                    removeListeners: true
                  }
                ]
              }, {
                type: 'btn',
                id: 'btn2',
                x: 350,
                y: 218,
                index: 'butter',
                target: 'lbl1',
                "eval": 'click_02',
                states: [
                  {
                    img: {
                      name: 'pricebutter',
                      x: 0,
                      y: 0,
                      align: 'mc'
                    }
                  }, {
                    img: {
                      name: 'letraR',
                      x: 0,
                      y: 0,
                      align: 'mc'
                    },
                    removeListeners: true
                  }
                ]
              }, {
                type: 'btn',
                id: 'btn3',
                x: 584,
                y: 314,
                index: 'carrots',
                target: 'lbl1',
                "eval": 'click_02',
                states: [
                  {
                    img: {
                      name: 'pricecarrots',
                      x: 0,
                      y: 0,
                      align: 'mc'
                    }
                  }, {
                    img: {
                      name: 'letraS',
                      x: 0,
                      y: 0,
                      align: 'mc'
                    },
                    removeListeners: true
                  }
                ]
              }, {
                type: 'btn',
                id: 'btn4',
                x: 580,
                y: 176,
                index: 'chilis',
                target: 'lbl1',
                "eval": 'click_02',
                states: [
                  {
                    img: {
                      name: 'pricechilis',
                      x: 0,
                      y: 0,
                      align: 'mc'
                    }
                  }, {
                    img: {
                      name: 'letraM',
                      x: 0,
                      y: 0,
                      align: 'mc'
                    },
                    removeListeners: true
                  }
                ]
              }, {
                type: 'btn',
                id: 'btn5',
                x: 416,
                y: 253,
                index: 'cream',
                target: 'lbl1',
                "eval": 'click_02',
                states: [
                  {
                    img: {
                      name: 'pricecream',
                      x: 0,
                      y: 0,
                      align: 'mc'
                    }
                  }, {
                    img: {
                      name: 'letraS',
                      x: 0,
                      y: 0,
                      align: 'mc'
                    },
                    removeListeners: true
                  }
                ]
              }, {
                type: 'btn',
                id: 'btn6',
                x: 322,
                y: 315,
                index: 'eggs',
                target: 'lbl1',
                "eval": 'click_02',
                states: [
                  {
                    img: {
                      name: 'priceeggs',
                      x: 0,
                      y: 0,
                      align: 'mc'
                    }
                  }, {
                    img: {
                      name: 'letraH',
                      x: 0,
                      y: 0,
                      align: 'mc'
                    },
                    removeListeners: true
                  }
                ]
              }, {
                type: 'btn',
                id: 'btn7',
                x: 397,
                y: 320,
                index: 'mushrooms',
                target: 'lbl1',
                "eval": 'click_02',
                states: [
                  {
                    img: {
                      name: 'pricemushrooms',
                      x: 0,
                      y: 0,
                      align: 'mc'
                    }
                  }, {
                    img: {
                      name: 'letraO',
                      x: 0,
                      y: 0,
                      align: 'mc'
                    },
                    removeListeners: true
                  }
                ]
              }, {
                type: 'btn',
                id: 'btn8',
                x: 347,
                y: 406,
                index: 'peach',
                target: 'lbl1',
                "eval": 'click_02',
                states: [
                  {
                    img: {
                      name: 'pricepeachJam',
                      x: 0,
                      y: 0,
                      align: 'mc'
                    }
                  }, {
                    img: {
                      name: 'letraU',
                      x: 0,
                      y: 0,
                      align: 'mc'
                    },
                    removeListeners: true
                  }
                ]
              }, {
                type: 'btn',
                id: 'btn9',
                x: 477,
                y: 313,
                index: 'peppers',
                target: 'lbl1',
                "eval": 'click_02',
                states: [
                  {
                    img: {
                      name: 'pricepeppers',
                      x: 0,
                      y: 0,
                      align: 'mc'
                    }
                  }, {
                    img: {
                      name: 'letraO',
                      x: 0,
                      y: 0,
                      align: 'mc'
                    },
                    removeListeners: true
                  }
                ]
              }, {
                type: 'img',
                id: 'propabuelita',
                name: 'abuelita',
                x: 554,
                y: 254,
                align: 'mc'
              }
            ],
            groups: []
          }, {
            answers: {
              collection: [
                [
                  {
                    name: 'iwcpt1',
                    opts: {
                      containers: [
                        {
                          type: 'img',
                          name: 'wcpt1_1',
                          success: 'M',
                          img: 'letraM'
                        }, {
                          type: 'img',
                          name: 'wcpt1_2',
                          success: 'U',
                          img: 'letraU'
                        }, {
                          type: 'img',
                          name: 'wcpt1_3',
                          success: 'S',
                          img: 'letraS'
                        }, {
                          type: 'img',
                          name: 'wcpt1_4',
                          success: 'H',
                          img: 'letraH'
                        }, {
                          type: 'img',
                          name: 'wcpt1_5',
                          success: 'R',
                          img: 'letraR'
                        }, {
                          type: 'img',
                          name: 'wcpt1_6',
                          success: 'O',
                          img: 'letraO'
                        }, {
                          type: 'img',
                          name: 'wcpt1_7',
                          success: 'O',
                          img: 'letraO'
                        }, {
                          type: 'img',
                          name: 'wcpt1_8',
                          success: 'M',
                          img: 'letraM'
                        }, {
                          type: 'img',
                          name: 'wcpt1_9',
                          success: 'S',
                          img: 'letraS'
                        }
                      ]
                    }
                  }
                ]
              ],
              type: 'steps'
            },
            containers: [
              {
                type: 'img',
                id: 'propbg',
                name: 'propbg',
                x: 426,
                y: 298,
                align: 'mc'
              }, {
                type: 'img',
                id: 'propabuelita',
                name: 'abuelita',
                x: 554,
                y: 244,
                align: 'mc'
              }, {
                type: 'img',
                id: 'clue',
                name: 'clue',
                x: 400,
                y: 580,
                align: 'bc'
              }, {
                type: 'iwcpt',
                id: 'iwcpt1',
                x: 400,
                y: 470,
                uwidth: 70,
                uheight: 60,
                margin: 5,
                bcolor: '#FFF',
                scolor: '#F00',
                stroke: '3',
                align: 'center'
              }, {
                type: 'drg',
                id: 'letraM',
                name: 'letraM',
                x: 521,
                y: 404,
                index: 'M',
                align: 'mc',
                target: 'iwcpt1',
                "eval": 'drop_02',
                afterSuccess: 'hide',
                afterFail: 'return'
              }, {
                type: 'drg',
                id: 'letraR',
                name: 'letraR',
                x: 350,
                y: 218,
                index: 'R',
                align: 'mc',
                target: 'iwcpt1',
                "eval": 'drop_02',
                afterSuccess: 'hide',
                afterFail: 'return'
              }, {
                type: 'drg',
                id: 'letraS',
                name: 'letraS',
                x: 584,
                y: 314,
                index: 'S',
                align: 'mc',
                target: 'iwcpt1',
                "eval": 'drop_02',
                afterSuccess: 'hide',
                afterFail: 'return'
              }, {
                type: 'drg',
                id: 'letraM',
                name: 'letraM2',
                x: 580,
                y: 176,
                index: 'M',
                align: 'mc',
                target: 'iwcpt1',
                "eval": 'drop_02',
                afterSuccess: 'hide',
                afterFail: 'return'
              }, {
                type: 'drg',
                id: 'letraS',
                name: 'letraS2',
                x: 416,
                y: 253,
                index: 'S',
                align: 'mc',
                target: 'iwcpt1',
                "eval": 'drop_02',
                afterSuccess: 'hide',
                afterFail: 'return'
              }, {
                type: 'drg',
                id: 'letraH',
                name: 'letraH',
                x: 322,
                y: 315,
                index: 'H',
                align: 'mc',
                target: 'iwcpt1',
                "eval": 'drop_02',
                afterSuccess: 'hide',
                afterFail: 'return'
              }, {
                type: 'drg',
                id: 'letraO',
                name: 'letraO',
                x: 397,
                y: 320,
                index: 'O',
                align: 'mc',
                target: 'iwcpt1',
                "eval": 'drop_02',
                afterSuccess: 'hide',
                afterFail: 'return'
              }, {
                type: 'drg',
                id: 'letraU',
                name: 'letraU',
                x: 347,
                y: 406,
                index: 'U',
                align: 'mc',
                target: 'iwcpt1',
                "eval": 'drop_02',
                afterSuccess: 'hide',
                afterFail: 'return'
              }, {
                type: 'drg',
                id: 'letraO',
                name: 'letraO2',
                x: 477,
                y: 313,
                index: 'O',
                align: 'mc',
                target: 'iwcpt1',
                "eval": 'drop_02',
                afterSuccess: 'hide',
                afterFail: 'return'
              }
            ],
            groups: []
          }
        ]
      };
      U2A3.__super__.constructor.call(this);
    }

    window.U2A3 = U2A3;

    return U2A3;

  })(Oda);

}).call(this);
