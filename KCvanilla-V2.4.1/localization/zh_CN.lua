return {
    descriptions = {
        Joker = {
            j_kcvanilla_5day = {
                name = "五日天气预报",
                text = {
                    "如果手牌中包含{C:attention}顺子{}，",
                        "提升手牌的等级{C:attention}1{}",
                        "{C:inactive}(不包括{C:attention}A{})"
                    }
            },
            j_kcvanilla_chan = {
                name = "婵小姐",
                text = {
                    "每有一个{C:blue}普通{}小丑",
                    "回合结束时，获得{C:mult}+#1#{}倍率", 
                    "{C:inactive}(当前{C:mult}+#2#{C:inactive}倍率){}"}
            },
            j_kcvanilla_collapse = {
                name = "宇宙坍缩",
                text = {
                    '回合结束时，持有的每张{C:planet}星球{}牌', 
                    '有{C:green}#1#/2{}的概率',
                    '变成{C:spectral}黑洞{}'
                    }
            },
            j_kcvanilla_composition = {
                name = "抽象画",
                text = {
                    "此牌左侧每有一张小丑牌，{C:mult}+#1#{}倍率",
                    "此牌左侧每有一张小丑牌，{C:chips}+#2#{}筹码",
                    "{C:inactive}(当前{C:mult}+#3#{C:inactive}倍率和{C:chips}+#4#{C:inactive}筹码){}"
                    }
            },
            j_kcvanilla_energy = {
                name = "魔爪小丑",
                text = {
                    '打出的{C:attention}万能{}牌在得分时',
                    '会给予以下中效果之一:',
                    '{C:mult}+#1#{}倍率, {C:chips}+#2#{}筹码, {X:mult,C:white} X#3# {}倍率, {C:money}$#4#{}'
                    }
            },
            j_kcvanilla_fortunecookie = {
                name = "幸运饼干",
                text = {
                    "{C:chips}+#1#{}筹码,",
                    "当使用{C:tarot}塔罗{}牌时{C:chips}-#2#{}筹码"
                    }
            },
            j_kcvanilla_guard = {
                name = "皇家卫队",
                text = {
                    "在{C:attention}#2#{}个 {C:attention}K{}或{C:attention}Q{}",
                    "记分后，出售此牌以获得",
                    "随机的{C:dark_edition}负片{}小丑牌",
                    "{C:inactive}(进度: #1#/#2#){}"
                    }
            },
            j_kcvanilla_handy = {
                name = "小手",
                text = {
                    '如果回合中第一次弃牌',
                    '是一张增强牌，',
                    '获得{X:mult,C:white} X1 {}倍率，当',
                    'Boss 盲注被击败时重置',
                    '{C:inactive}(当前{X:mult,C:white} X#1# {C:inactive}倍率)'
                    }            },
            j_kcvanilla_irish = {
                name = "爱尔兰佬的运气",
                text = {
                    "{C:clubs}梅花{}增强牌",
                    "成功触发增加{C:green}X4{}概率",
                }
            },
            j_kcvanilla_powergrid = {
                name = "电网",
                text = {
                    '得分的{C:attention}倍率{}牌',
                    '每张牌增加{X:mult,C:white} X#1# {}倍率',
                    "{C:inactive}(下一张: {X:mult,C:white} X#2# {C:inactive}倍率)"
                    }
            },
            j_kcvanilla_redenvelope = {
                name = "小丑红包",
                text = {
                    '当Boss盲注被击败时，',
                    '每有一个{C:blue}普通{}小丑',
                    '获得{C:money}$8{}'
                    }
            },
            j_kcvanilla_robo = {
                name = "机宝",
                text = {
                    '每回合第一次计分的{C:attention}2-10{}',
                    '增加筹码',
                    "{C:inactive}(当前 {C:chips}+#1#,{C:inactive} 筹码)"
                    }
            },
            j_kcvanilla_squid = {
                name = "乌贼小丑",
                text = {
                    "回合最后两次出牌",
                    "{C:attention}+#1#{}手牌数量"
                    }
            },
            j_kcvanilla_swiss = {
                name = "奶酪小丑",
                text = {
                    '上次出牌，每有一张不计分',
                    '增加{C:mult}+#1#{}倍率',
                    "{C:inactive}(当前{C:mult}+#2#{C:inactive}倍率)"
                    }
            },
            j_kcvanilla_tenpin = {
                name = "保龄球",
                text = {
                    '如果打出的手牌中包含一个记分的{C:attention}10{}，',
                    '下两次出牌的提升{C:mult} X2 {}倍率',
                    "{C:inactive}#1#{}"
                    }
            },
            j_kcvanilla_drummajor = {
                name = "鼓手小丑",
                text = {'?'}
            },
            j_kcvanilla_rakugo = {
                name = "落语小丑",
                text = {'如果打出的手牌中包含 {C:attention}顺子{},',
                        '其中 {C:attention}4 5 6 7{} 或 {C:attention}8{}可以重新在进行计分'}
            },
            j_kcvanilla_rats = {
                name = "耗子小丑",
                text = {'?'}
            }
        }
    },
    misc = {
        dictionary = {
            kcv_active = "激活",
            kcv_inactive = "未激活"
        },
        v_dictionary = {
            kcv_active_for_X_more_hands = "为 #1# 手激活"
        }
    }
}

