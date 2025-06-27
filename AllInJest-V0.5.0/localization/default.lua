return {
    misc = {
        dictionary = {
            k_moon = "月亮",
            k_moon_q = "月亮？",
            k_star = "星星",
            k_star_q = "星星？",
            k_asteroid = "小行星",
            aij_requires_restart = "需要重启",
            aij_enable_moons = "启用月亮",
            k_aij_guess_the_jest = "猜谜小丑",
            k_aij_memory_card = "记忆卡",
        },
        labels = {
            aij_glimmer = "微光",
            aij_stellar = "星辰",
        }
    },
    descriptions = {
        Back = {
            b_aij_fabled = {
                name = '传说牌组',
                text = {
                    '{C:legendary,E:1}传说级{}小丑牌',
                    '可在{C:attention}商店{}中出现',
                    '{C:attention}-1{}个小丑槽位'
                },
                unlock = {
                    '解锁一个',
                    '{C:legendary,E:1}传说级{}小丑牌',
                }
            },
            b_aij_fabled_hidden = {
                name = '传说牌组',
                text = {},
                unlock = {
                    '?????',
                }
            }
        },
        Enhanced = {
            m_aij_fervent = {
                name = "狂热牌",
                text = {
                    "打出时获得{C:chips}+#2#{}筹码",
                }
            },
            m_aij_dyscalcular = {
                name = "计算障碍牌",
                text = {
                    "视为所有{C:attention}数字{}点数",
                    "{C:inactive}(不用于组成扑克牌型)"
                }
            },
            m_aij_charged = {
                name = "充能牌",
                text = {
                    "{C:attention}增强效果{}提升{C:attention}#1#X{}倍",
                    "若与此牌{C:attention}一同打出{}或",
                    "{C:attention}握在手中{}",
                }
            },
        },
        Edition = {
            e_aij_glimmer = {
                name = "微光",
                text = {
                    "{C:aij_plasma}平衡{} {C:attention}#1#%{}的",
                    "{C:mult}倍率{}和{C:chips}筹码{}"
                }
            },
            e_aij_stellar = {
                name = "星辰",
                text = {
                    "{C:chips}+#1#{}筹码和",
                    "{C:mult}+#2#{}倍率，每{C:attention}等级{}",
                    "的牌型"
                }
            },
        },
        Joker = {
            j_aij_flying_ace = {
                name = "飞行A",
                text = {
                    "每张打出过的独特{C:attention}花色{}的{C:attention}A{}",
                    "在回合结束时获得{C:money}$#1#{}",
                    "{C:inactive}(当前{C:money}$#2#{}{C:inactive})"
                },
            },
            j_aij_lucky_seven = {
                name = "幸运7",
                text = {
                    "将所有打出的",
                    "未增强{C:attention}7{}变为",
                    "{C:attention}幸运牌{}"
                },
            },
            j_aij_you_broke_it = {
                name = "你搞砸了！",
                text = {
                    "将每张打出的{C:attention}#1#{}",
                    "变为{C:attention}#2#{}",
                    "{s:0.8}点数和增强效果",
                    "{s:0.8}每回合结束时变化"
                },
            },
            j_aij_birthday_clown = {
                name = "生日小丑",
                text = {
                    "{X:mult,C:white}X#1#{}倍率",
                    "但仅在每个{C:attention}底注{}的第{C:attention}1{}个回合",
                    "{C:inactive}(#2#)"
                },
            },
            j_aij_memory_card = { 
                name = "记忆卡", 
                text = { 
                    "若回合第一次出牌",
                    "仅含{C:attention}一张{}牌，",
                    "该牌将{C:attention}始终{}作为",
                    "{C:attention}首张{}牌被抽到",
                    "{C:inactive}(仅能存储一张牌)",
                    "{C:inactive}(仅在最左侧位置触发)" 
                } 
            },
            j_aij_sleepy_joker = { 
                name = "瞌睡小丑", 
                text = { 
                    "{X:mult,C:white}X#1#{}倍率，若打出的牌", 
                    "仅含{C:spades}黑桃{}和{C:clubs}梅花{}"
            } 
            },
            j_aij_invisible_man = { 
                name = "隐形人", 
                text = { 
                    "所有{C:attention}人头牌{}视为",
                    "{C:attention}K{}、{C:attention}Q{}和{C:attention}J{}",
                    "{C:inactive}(不用于组成扑克牌型)"
                } 
            },
            j_aij_handsome_joker = { name = "英俊小丑", text = { "" } },
            j_aij_whiteface_grotesque = { name = "白面怪诞", text = { "" } },
            j_aij_the_clown_show = { name = "小丑秀", text = { "" } },
            j_aij_little_devil = {
                name = "小恶魔",
                text = {
                    "当{C:attention}跳过{}一个{C:attention}盲注{}时，",
                    "创建一个{C:attention}标准{}、{C:tarot}魅力{}、",
                    "{C:planet}流星{}或{C:red}愚者{} {C:attention}标签{}"
                },
            },
            j_aij_pierrot = { name = "皮埃罗", text = { "" } },
            j_aij_hat_trick = { name = "帽子戏法", text = { "" } },
            j_aij_squeezy_pete = {
                name = "挤压皮特",
                text = {
                    "每连续打出{C:attention}葫芦{}",
                    "获得{X:mult,C:white}X#1#{}倍率，打出其他牌型重置",
                    "{C:inactive}(当前{X:mult,C:white}X#2#{}{C:inactive}倍率)"
                },
            },
            j_aij_infinite_jest = { name = "无限玩笑", text = { "" } },
            j_aij_bloody_mary = { name = "血腥玛丽", text = { "" } },
            j_aij_trypophobia = {
                name = "密集恐惧",
                text = {
                    "{C:mult}+#1#{}倍率，若打出的牌",
                    "仅含{C:attention}8{}",
                },
            },
            j_aij_rummikub = { name = "拉米牌", text = { "" } },
            j_aij_imperial_bower = { 
                name = "皇家侍从", 
                text = { 
                    "{C:attention}首张{}抽出的牌",
                    "视为{C:attention}任意{}点数和花色",
                    "{C:inactive}(点数不用于组成扑克牌型)"
                } 
            },
            j_aij_ultrasound = {
                name = "超声波",
                text = {
                    "选择{C:attention}补充包{}时",
                    "显示其中一张内容"
                }
            },
            j_aij_negative_nancy = {
                name = "消极南希",
                text = {
                    "{C:dark_edition}负片{}小丑牌在{C:attention}商店{}中",
                    "出现概率{C:attention}提高3倍{}"
                },
            },
            j_aij_old_joker = { name = "老小丑", text = { "" } },
            j_aij_imageboard = { name = "图板", text = { "" } },
            j_aij_carousel = { name = "旋转木马", text = { "" } },
            j_aij_slippery_when_wet = { name = "湿滑路面", text = { "" } },
            j_aij_founding_father = { 
                name = "开国元勋", 
                text = { 
                    "{C:attention}充能牌{}现在{C:attention}翻倍{}",
                    "其他{C:attention}增强效果{}" 
                } 
            },
            j_aij_scary_story = {
                name = "恐怖故事",
                text = {
                    "{C:attention}标准包{}中的基础牌",
                    "有{C:green}#1#/#2#{}概率",
                    "变为{C:dark_edition}负片{}"
                },
            },
            j_aij_doodle = {
                name = "涂鸦",
                text = {
                    "{C:green}#1#/#2#{}概率复制",
                    "相邻{C:attention}小丑牌{}的",
                    "{C:attention}能力{}"
                },
            },
            j_aij_joqr = { name = "乔克牌", text = { "" } },
            j_aij_greasepaint = { name = "油彩", text = { "" } },
            j_aij_public_bathroom = {
                name = "公共浴室",
                text = {
                    "每张在{C:attention}同花{}中打出的{C:attention}2{}",
                    "使此小丑获得{C:mult}+#1#{}倍率",
                    "{C:inactive}(当前{C:mult}+#2#{C:inactive}倍率)"
                },
            },
            j_aij_diogenes = { name = "第欧根尼", text = { "" } },
            j_aij_blank_card = {
                name = "空白牌",
                text = {
                    "每次从{C:attention}标准包{}中",
                    "选择一张{C:attention}扑克牌{}时，",
                    "创建一张{C:attention}复制{}"
                },
            },
            j_aij_comedians_manifesto = { name = "喜剧演员宣言", text = { "" } },
            j_aij_circuit_board = { name = "电路板", text = { "" } },
            j_aij_platinum_chip = { name = "白金筹码", text = { "" } },
            j_aij_cctv = { name = "监控", text = { "" } },
            j_aij_pell_mel = { name = "混乱", text = { "" } },
            j_aij_pput_together = { name = "拼合", text = { "" } },
            j_aij_krampus = {
                name = "坎卜斯",
                text = {
                    "打出的{C:attention}黄金牌{}",
                    "变为{C:attention}石头牌{}。",
                    "{C:attention}石头牌{}打出时",
                    "获得{C:money}$#1#{}"
                },
            },
            j_aij_art_of_the_deal = { 
                name = "交易艺术", 
                text = { 
                    "获得{C:money}金钱{}时",
                    "增加{C:mult}+#2#{}倍率",
                    "若金钱为{C:money}$0{}或更少则重置",
                    "{C:inactive}(当前{C:mult}+#1#{C:inactive}倍率)"
                } 
            },
            j_aij_word_art = { 
                name = "文字艺术", 
                text = { 
                    "每张打出的{C:attention}A{}、{C:attention}K{}、",
                    "{C:attention}Q{}或{C:attention}J{}",
                    "增加{C:mult}+#1#{}倍率"
                } 
            },
            j_aij_atom = {
                name = "原子",
                text = {
                    "若打出的牌仅含一张{C:attention}A{}，",
                    "提升{C:attention}高牌{}等级"
                },
            },
            j_aij_plain_jane = {
                name = "简朴",
                text = {
                    "打出的{C:attention}未增强{}牌",
                    "给予{C:mult}+#1#{}倍率"
                },
            },
            j_aij_paper_bag = { name = "纸袋", text = { "" } },
            j_aij_fruity_joker = { name = "水果小丑", text = { "" } },
            j_aij_jokia = { name = "乔基亚", text = { "" } },
            j_aij_the_mycologists = {
                name = "真菌学家",
                text = {
                    "若打出的牌为{C:attention}#1#{}，",
                    "{C:red}销毁{}右侧牌并将",
                    "其{C:chips}筹码{}、{C:dark_edition}增强效果{}和",
                    "{C:dark_edition}版本{}赋予左侧牌"
                }
            },
            j_aij_cool_joker = { name = "酷小丑", text = { "" } },
            j_aij_square_eyes = { 
                name = "方眼", 
                text = {
                    "每张打出的{C:attention}4{}",
                    "给予{C:mult}+#1#{}倍率"
                } 
            },
            j_aij_punk_joker = {
                name = "朋克小丑",
                text = {
                    "若打出的牌含{C:attention}万能牌{}，",
                    "将一张随机未增强牌",
                    "变为{C:attention}万能牌{}"
                },
            },
            j_aij_slim_joker = { 
                name = "瘦小丑", 
                text = { 
                    "{C:mult}+#1#{}倍率",
                    "每张牌{C:mult}-#2#{}倍率",
                } 
            },
            j_aij_wireframe = { name = "线框", text = { "" } },
            j_aij_soviet = { 
                name = "苏维埃", 
                text = { 
                    "{C:mult}+#1#{}倍率，若{C:attention}打出的牌{}",
                    "不含{C:attention}K{}或{C:attention}Q{}"
                } 
            },
            j_aij_mustachio = { name = "八字胡", text = { "" } },
            j_aij_penny = {
                name = "便士",
                text = {
                    "{C:money}金色蜡封{}牌有",
                    "{C:green}#1#/#2#{}概率{C:attention}再次触发{}"
                },
            },
            j_aij_doctors_note = { 
                name = "医生证明", 
                text = { 
                    "所有{C:attention}数字{} {C:hearts}红心{}牌",
                    "视为{C:attention}相同点数{}",
                    "{C:inactive}(不用于组成扑克牌型)"
                } 
            },
            j_aij_silly_sausage = { 
                name = "傻香肠", 
                text = { 
                    "{C:green}重掷{}费用减少{C:money}$#1#{}",
                    "每回合结束减少{C:money}$1{}"
                } 
            },
            j_aij_joker_baby = { name = "小丑宝宝", text = { "" } },
            j_aij_anchor = { 
                name = "锚", 
                text = { 
                    "此小丑及",
                    "相邻小丑{C:attention}无法{}",
                    "{C:attention}被{C:red}销毁" 
                } 
            },
            j_aij_hei_tiki = { 
                name = "黑蒂基", 
                text = { 
                    "若打出的牌最终{C:chips}筹码{}",
                    "超过{C:mult}倍率{}，",
                    "此小丑获得{C:mult}+#2#{}倍率",
                    "{C:inactive}(当前{C:mult}+#1#{}{C:inactive}倍率)"
                } 
            },
            j_aij_polybius = { name = "波利比乌斯", text = { "" } },
            j_aij_joker_sighting = { name = "小丑目击", text = { "" } },
            j_aij_pencil_drawing = { name = "铅笔画", text = { "" } },
            j_aij_holy_bible = { name = "圣经", text = { "" } },
            j_aij_great_white_north = { name = "大白北", text = { "" } },
            j_aij_right_angle = { name = "直角", text = { "" } },
            j_aij_adoring_joker = {
                name = "崇拜小丑",
                text = {
                    "{C:attention}小丑牌{}触发后，",
                    "将{C:mult}倍率{}设为你在",
                    "当前{C:attention}底注{}中打出过的最高值",
                    "{C:inactive}(当前{C:mult}#1#{C:inactive}倍率)"
                } 
            },
            j_aij_lucignolo = {
                name = "卢奇尼奥洛",
                text = {
                    "每当一张牌被{C:attention}销毁{}，",
                    "获得{C:money}$#1#{}"
                },
            },
            j_aij_scorecard = { name = "记分卡", text = { "" } },
            j_aij_punch_and_judy = { name = "潘趣与朱迪", text = { "" } },
            j_aij_nature_tapes = { name = "自然录音", text = { "" } },
            j_aij_low_priest = { name = "低级祭司", text = { "" } },
            j_aij_oil_and_water = { name = "油与水", text = { "" } },
            j_aij_big_ears = { name = "大耳朵", text = { "" } },
            j_aij_causal_absent_paranoia = { name = "因果缺失偏执", text = { "" } },
            j_aij_hand_drawn = { name = "手绘", text = { "" } },
            j_aij_haruspex = { name = "肠卜师", text = { "" } },
            j_aij_bobblehead = { name = "摇头娃娃", text = { "" } },
            j_aij_topsy_the_clown = { name = "小丑托普西", text = { "" } },
            j_aij_cloudwatching = { name = "观云", text = { "" } },
            j_aij_line_in_the_sand = {
                name = "沙中线",
                text = {
                    "{C:attention}弃牌{}直到{C:attention}底注{}结束",
                    "才返回牌组"
                }
            },
            j_aij_hairy_joker = { name = "毛茸小丑", text = { "" } },
            j_aij_realty_sign = {
                name = "房产标志",
                text = {
                    "打出{C:attention}葫芦{}时，",
                    "此小丑的{C:money}出售价值{}",
                    "增加{C:money}$#1#{}"
                },
            },
            j_aij_bad_apple = { name = "坏苹果", text = { "" } },
            j_aij_dim_bulb = {
                name = "昏暗灯泡",
                text = {
                    "若仅拥有{C:common}普通{}",
                    "{C:attention}小丑牌{}，获得{X:mult,C:white}X#1#{}倍率"
                },
            },
            j_aij_blood_artist = { name = "血艺术家", text = { "" } },
            j_aij_null_joker = {
                name = "虚无小丑",
                text = {
                    "将所有{C:green}概率{}",
                    "设为{C:attention}零{}"
                },
            },
            j_aij_magick_joker = {
                name = "魔法小丑",
                text = {
                    "打出的{V:1}#1#{}牌将其",
                    "{C:chips}筹码{}转为{C:mult}倍率{}",
                    "{s:0.8}花色每回合变化{}"
                }
            },
            j_aij_jeff_the_joker = {
                name = "小丑杰夫",
                text = {
                    '选择{C:attention}小盲注{}时，',
                    '{C:red}销毁{}所有其他小丑，',
                    '此小丑获得{X:mult,C:white}X#2#{}倍率',
                    '{C:inactive}(当前{X:mult,C:white}X#1#{C:inactive})'
                },
            },
            j_aij_zanni = { name = "赞尼", text = { "" } },
            j_aij_furbo_e_stupido = { 
                name = "聪明与愚蠢", 
                text = { 
                    "{C:attention}计算障碍{}牌同时",
                    "视为{C:attention}A和{C:attention}J" 
                } 
            },
            j_aij_read_em_and_weep = { name = "读牌哭泣", text = { "" } },
            j_aij_goblin_joker = { name = "哥布林小丑", text = { "" } },
            j_aij_string_theory = { 
                name = "弦理论", 
                text = { 
                    "牌型始终视为",
                    "包含{C:attention}顺子" 
                } 
            },
            j_aij_jesters_privelege = {
                name = "小丑特权",
                text = {
                    "{C:legendary}传说级{}小丑牌",
                    "可在{C:attention}商店{}中出现",
                },
            },
            j_aij_quark = {
                name = "夸克",
                text = {
                    '若打出的牌为{C:attention}三张{}',
                    '同点数但{C:attention}不同花色{}，',
                    '提升{C:attention}三条{}等级'
                },
            },
            j_aij_lucky_carder = { name = "幸运牌手", text = { "" } },
            j_aij_silver_screen = { name = "银幕", text = { "" } },
            j_aij_pedrolino = { name = "佩德罗利诺", text = { "" } },
            j_aij_pierrette = { name = "皮埃雷特", text = { "" } },
            j_aij_scaramouche = { name = "斯卡拉穆恰", text = { "" } },
            j_aij_clay_joker = { name = "黏土小丑", text = { "" } },
            j_aij_sunny_joker = { name = "阳光小丑", text = { "" } },
            j_aij_red_wine = { name = "红酒", text = { "" } },
            j_aij_mute_joker = { name = "沉默小丑", text = { "" } },
            j_aij_scapino = { name = "斯卡皮诺", text = { "" } },
            j_aij_pinhead = {
                name = "针头",
                text = {
                    "若{C:attention}盲注{}被",
                    "{C:attention}一次出牌{}击败，获得{C:money}$#1#{}"
                },
            },
            j_aij_saltimbanco = { 
                name = "萨蒂姆班科", 
                text = { 
                    "当任何{C:green}概率{}",
                    "效果触发时，将",
                    "{C:mult}倍率{}乘以其未触发概率"
                } 
            },
            j_aij_pulcinella = { name = "普尔钦内拉", text = { "" } },
            j_aij_petrushka = {
                name = "彼得鲁什卡",
                text = {
                    "获得与所有{C:attention}打出的牌{}",
                    "总{C:attention}点数{}相等的{C:mult}倍率{}",
                    "{C:inactive}(A=14, K=13, Q=12, J=11)"
                },
            },
            j_aij_void = { name = "虚空", text = { "" } },
            j_aij_kasperle = { name = "卡斯佩尔", text = { "" } },
            j_aij_tumbler = { name = "不倒翁", text = { "" } },
            j_aij_plain_packaging = { name = "简装", text = { "" } },
            j_aij_mixel_perfect = {
                name = "混合完美",
                text = {
                    "{C:mult}+#1#{}倍率，若{C:attention}打出的牌{}",
                    "数量为{C:attention}奇数{}"
                },
            },
            j_aij_columbina = { name = "科伦比娜", text = { "" } },
            j_aij_j_file = { name = "J档案", text = { "" } },
            j_aij_bumper_sticker = { 
                name = "保险杠贴纸", 
                text = { 
                    "打出的{C:attention}牌{}",
                    "永久获得",
                    "{C:mult}+#1#{}倍率"
                } 
            },
            j_aij_vesti_la_guibba = { name = "吉布巴装", text = { "" } },
            j_aij_dead_president = {
                name = "死总统",
                text = {
                    "出售此{C:attention}小丑牌{}可",
                    "{C:attention}翻倍{}相邻{C:attention}小丑牌{}的",
                    "{C:money}出售价值{}"
                },
            },
            j_aij_second_tier_meme = { name = "二流梗", text = { "" } },
            j_aij_teeny_joker = {
                name = "小小丑",
                text = {
                    "{C:chips}+#1#{}筹码，若打出的牌",
                    "仅含{C:attention}2{}",
                },
            },
            j_aij_clowns_on_parade = {
                name = "小丑游行",
                text = {
                    "若打出的牌含至少三张{C:attention}2{}，",
                    "此小丑获得{C:chips}+#2#{}筹码",
                    "{C:inactive}(当前{C:chips}+#1#{}{C:inactive}筹码)"
                },
            },
            j_aij_rising_sun = { 
                name = "旭日", 
                text = { 
                    "在每回合{C:attention}首尾{}出牌次数中",
                    "重新触发{C:attention}首尾{}打出的牌"
                }
             },
            j_aij_red_sky = {
                name = "红天",
                text = {
                    "回合{C:attention}首尾{}出牌次数中",
                    "打出的牌将其{C:chips}筹码{}",
                    "转为{C:mult}倍率{}"
                }
            },
            j_aij_blind_drawn = {
                name = "盲抽",
                text = {
                    "{X:mult,C:white}X#1#{}倍率",
                    "无法查看{C:attention}首领盲注{}",
                    "及其效果"
                }
            },
            j_aij_heidelberg_tun = {
                name = "海德堡桶",
                text = {
                    "{C:green}#1#/#2#{}概率使购买的",
                    "{C:attention}消耗品{}变为{C:dark_edition}负片{}"
                },
            },
            j_aij_open_mind = {
                name = "开放思维",
                text = {
                    "{C:attention}+#1#{}个额外",
                    "{C:attention}补充包{}可在",
                    "{C:attention}商店{}购买"
                },
            },
            j_aij_little_boy_blue = { name = "小蓝孩", text = { "" } },
            j_aij_big_red = { name = "大红", text = { "" } },
            j_aij_party_streamers = {
                name = "派对彩带",
                text = {
                    "若每回合{C:attention}第一{}次出牌",
                    "仅含{C:attention}1{}张无{C:attention}蜡封{}牌，",
                    "随机获得{C:red}红{}、{C:blue}蓝{}或{C:money}金{}",
                    "{C:attention}蜡封{}"
                },
            },
            j_aij_kilroy = { name = "基尔罗伊", text = { "" } },
            j_aij_janus = { name = "雅努斯", text = { "" } },
            j_aij_honker = { name = "喇叭", text = { "" } },
            j_aij_mummy = { name = "木乃伊", text = { "" } },
            j_aij_sitcom = { name = "情景喜剧", text = { "" } },
            j_aij_in_vino_veritas = { name = "酒后真言", text = { "" } },
            j_aij_beefeater = { name = "卫兵", text = { "" } },
            j_aij_tetraphobia = {
                name = "四恐惧",
                text = {
                    "每弃{C:attention}4{}，此小丑获得{C:mult}+#2#{}倍率，",
                    "打出{C:attention}4{}时重置",
                    "{C:inactive}(当前{C:mult}+#1#{C:inactive}倍率)",
                },
            },
            j_aij_jack_of_all_trades = {
                name = "万能杰克",
                text = {
                    "{C:attention}J{}视为任意{C:attention}花色{}",
                },
            },
            j_aij_jumbo_joker = { name = "巨型小丑", text = { "" } },
            j_aij_pellucid_joker = { name = "透明小丑", text = { "" } },
            j_aij_cosmological_constant = {
                name = "宇宙常数",
                text = {
                    "{C:aij_plasma}平衡{} {C:attention}基础{} {C:chips}筹码{}和{C:mult}倍率{}",
                    "的{C:attention}扑克牌型{}"
                },
            },
            j_aij_monster = { name = "怪物", text = { "" } },
            j_aij_mistigri = {
                name = "米斯蒂格里",
                text = {
                    "每张{C:attention}2{}或{C:attention}J{}",
                    "增加{C:attention}+1{}手牌上限"
                },
            },
            j_aij_simple_simon = {
                name = "简单西蒙",
                text = {
                    "{C:chips}+#1#{}筹码",
                },
            },
            j_aij_giocoliere = {
                name = "杂耍者",
                text = {
                    "在{C:attention}首领盲注{}期间",
                    "增加{C:attention}+2{}手牌上限"
                },
            },
            j_aij_spectre = { name = "幽灵", text = { "" } },
            j_aij_dapper_dan = { 
                name = "潇洒丹", 
                text = { 
                    "小丑{C:dark_edition}版本{}效果",
                    "提升{C:attention}2倍{}",
                } 
            },
            j_aij_average_joe = {
                 name = "普通乔", 
                 text = { 
                    "{C:aij_plasma}平衡{} {C:attention}20%{}的",
                    "{C:chips}筹码{}和{C:mult}倍率{}"
                } 
            },
            j_aij_silent_sam = { name = "沉默山姆", text = { "" } },
            j_aij_pantomimus = { name = "哑剧", text = { "" } },
            j_aij_sneaky_pete = {
                name = "鬼祟皮特",
                text = {
                    '每回合结束时，每张{C:money}金色蜡封{}牌',
                    '获得{C:money}$#2#{}',
                    '{C:inactive}(当前{C:money}$#1#{C:inactive})'
                },
            },
            j_aij_peeping_tom = { name = "偷窥汤姆", text = { "" } },
            j_aij_la_commedia_e_finita = {
                name = "喜剧终场",
                text = {
                    "每当{C:attention}人头牌{}被{C:attention}销毁{}，",
                    "此小丑获得{C:mult}+#1#{}倍率",
                    "{C:inactive}(当前{C:mult}+#2#{C:inactive}倍率)"
                },
            },
            j_aij_straight_to_hell = {
                name = "直下地狱",
                text = {
                    "每当{C:attention}顺子{}被{C:attention}弃掉{}，",
                    "此小丑获得{X:mult,C:white}X#1#{}",
                    "倍率",
                    '{C:inactive}(当前{X:mult,C:white}X#2#{C:inactive}倍率)'
                },
            },
            j_aij_guiser = {
                name = "伪装者",
                text = {
                    "每当使用{C:tarot}塔罗牌{}，",
                    "此小丑{C:money}出售价值{}",
                    "增加{C:money}$#1#{}"
                },
            },
            j_aij_mummer = { 
                name = "哑剧演员", 
                text = { 
                    "当{C:attention}钢铁牌{}被打出时，",
                    "触发所有{C:attention}钢铁牌{}效果"
                } 
            },
            j_aij_tipteerer = {
                name = "踮脚者",
                text = {
                    "每回合结束时获得其他{C:attention}小丑牌{}",
                    "{C:money}出售价值{}的{C:attention}20%{}，向上取整",
                    "{C:inactive}(当前{C:money}$#1#{}{C:inactive})"
                },
            },
            j_aij_honest_john = { name = "诚实约翰", text = { "" } },
            j_aij_dizzard = { 
                name = "迪扎德", 
                text = { 
                    "跳过{C:attention}盲注{}后，",
                    "访问{C:money}商店{}" 
                } 
            },
            j_aij_arlecchino = { name = "阿莱基诺", text = { "" } },
            j_aij_arlecchina = { name = "阿莱基娜", text = { "" } },
            j_aij_taikomochi = { 
                name = "太鼓持", 
                text = 
                { 
                    "手牌中的{C:attention}J{}",
                    "给予{C:chips}+#1#{}筹码"
                } 
                },
            j_aij_sudoku = { 
                name = "数独", 
                text = { 
                    "每连续打出{C:attention}顺子{}，",
                    "此小丑获得{X:mult,C:white}X#1#{}倍率，打出其他牌型时重置",
                    "{C:inactive}(当前{X:mult,C:white}X#2#{C:inactive}倍率)"
            } 
            },
            j_aij_gnasher = { name = "咬牙者", text = { "" } },
            j_aij_executioner = {
                name = "刽子手",
                text = {
                    "每当{C:attention}人头牌{}被{C:attention}销毁{}，",
                    "此小丑获得{C:chips}+#1#{}筹码",
                    "{C:inactive}(当前{C:chips}+#2#{C:inactive}筹码)"
                },
            },
            j_aij_jongleur = {
                name = "杂耍艺人",
                text = {
                    "{C:green}重掷{}费用减少{C:money}$#1#{}",
                },
            },
            j_aij_event_horizon = { 
                name = "事件视界", 
                text = { 
                    "{C:dark_edition}黑洞{}与",
                    "其他{C:planet}行星{}牌",
                    "罕见度相同"
                } 
            },
            j_aij_the_jester = {
                name = "小丑",
                text = {
                    "出售{C:attention}小丑牌{}时",
                    "创建{C:tarot}愚者{}牌",
                    "{C:inactive}(每回合限一次)",
                    "{C:inactive}#1#{}"
                },
            },
            j_aij_joka_lisa = { name = "乔卡丽莎", text = { "" } },
            j_aij_tonpraten = { name = "通普拉滕", text = { "" } },
            j_aij_rodeo_clown = { name = "牛仔小丑", text = { "" } },
            j_aij_joculator = { name = "乔库拉特", text = { "" } },
            j_aij_scurra = {
                name = "斯库拉",
                text = {
                    '重新触发所有带{C:red}红蜡封{}的',
                    '打出的牌',
                    '{C:attention}#1#{}次'
                },
            },
            j_aij_pigpen = { name = "猪圈", text = { "" } },
            j_aij_cyclops = { name = "独眼巨人", text = { "" } },
            j_aij_blarney_stone = { name = "巧言石", text = { "" } },
            j_aij_sticker = { name = "贴纸", text = { "" } },
            j_aij_feedback_form = { name = "反馈表", text = { "" } },
            j_aij_stultor = { name = "斯图尔特", text = { "" } },
            j_aij_david = {
                name = "大卫",
                text = {
                    "若打出的牌仅含{C:spades}黑桃{} {C:attention}K{}，",
                    "此小丑获得{C:chips}+#1#{}筹码",
                    "{C:inactive}(当前{C:chips}+#2#{C:inactive}筹码)"
                },
            },
            j_aij_charles = {
                name = "查尔斯",
                text = {
                    "若打出的牌仅含{C:hearts}红心{} {C:attention}K{}，",
                    "此小丑获得{X:mult,C:white}X#1#{}倍率",
                    "{C:inactive}(当前{X:mult,C:white}X#2#{C:inactive}倍率)"
                },
            },
            j_aij_cesar = {
                name = "凯撒",
                text = {
                    '每回合获得{C:money}$#1#{}',
                    '若打出的牌仅含{C:diamonds}方块{} {C:attention}K{}，',
                    '增加{C:money}$#2#{}'
                },
            },
            j_aij_alexandre = {
                name = "亚历山大",
                text = {
                    "若打出的牌仅含{C:clubs}梅花{} {C:attention}K{}，",
                    "此小丑获得{C:mult}+#1#{}倍率",
                    "{C:inactive}(当前{C:mult}+#2#{C:inactive}倍率)"
                },
            },
            j_aij_sannio = { name = "桑尼奥", text = { "" } },
            j_aij_stock_photo = { name = "库存照片", text = { "" } },
            j_aij_fou_du_roi = {
                name = "宫廷小丑",
                text = {
                    '{C:green}#2#/#1#{}概率创建一张',
                    '{C:tarot}塔罗牌{}，若打出的牌',
                    '含{C:attention}K{}或{C:attention}Q',
                    '{C:inactive}(需有空位)'
                },
            },
            j_aij_fatuus = {
                name = "法图斯",
                text = {
                    '若回合第一次出牌仅含{C:attention}K{}',
                    '和{C:attention}Q{}，随机给一张牌',
                    '添加{C:blue}蓝蜡封{}'
                },
            },
            j_aij_enraging_photo = { name = "激怒照片", text = { "" } },
            j_aij_infuriating_note = { name = "激怒便条", text = { "" } },
            j_aij_magic_hat = { name = "魔术帽", text = { "" } },
            j_aij_anagraph = { 
                name = "字谜", 
                text = { 
                    "当任何{C:attention}小丑牌{}被{C:money}出售{}或",
                    "{C:red}销毁{}时，创建一张{C:attention}复制{}",
                    "并立即再次{C:red}销毁{}"
                } 
            },
            j_aij_beanstalk = { 
                name = "豆茎", 
                text = { 
                    "{C:attention}J{} {C:attention}不受{} {C:red}减益{}",
                    "且{C:attention}必定{}得分" 
                } 
            },
            j_aij_phoney_baloney = { name = "假大空", text = { "" } },
            j_aij_jerko = { name = "混蛋", text = { "" } },
            j_aij_design_document = { 
                name = "设计文档", 
                text = { 
                    "每当{C:green}概率{}效果",
                    "未触发，获得{C:money}$#1#{}"
                } 
            },
            j_aij_animatronic = { name = "机械玩偶", text = { "" } },
            j_aij_arecibo_message = { name = "阿雷西博信息", text = { "" } },
            j_aij_napkin = { name = "餐巾纸", text = { "" } },
            j_aij_lost_carcosa = { name = "失落卡寇萨", text = { "" } },
            j_aij_magic_mirror = { name = "魔镜", text = { "" } },
            j_aij_postcard_from_perdition_trail = { name = "毁灭之路明信片", text = { "" } },
            j_aij_mr_lonely = {
                name = "孤独先生",
                text = {
                    "回合结束时每有一个空{C:attention}小丑槽{}，",
                    "此小丑获得{C:chips}+#1#筹码",
                    "{C:inactive}(当前{C:chips}+#2#{C:inactive}筹码)"
                },
            },
            j_aij_spiders_georg = { name = "蜘蛛乔治", text = { "" } },
            j_aij_gille = { name = "吉勒", text = { "" } },
            j_aij_fulehung = { name = "富乐恒", text = { "" } },
            j_aij_bearded_joker = { 
                name = "胡子小丑", 
                text = { 
                    "每张{C:attention}增强{}牌",
                    "增加{C:mult}+#1#{}倍率",
                    "{C:inactive}(当前{C:mult}+#2#{}{C:inactive}倍率)"
                } 
            },
            j_aij_skomorokh = { name = "斯科莫罗赫", text = { "" } },
            j_aij_silly_billy = { name = "傻比利", text = { "" } },
            j_aij_ijoker_co = { name = "i小丑.co", text = { "" } },
            j_aij_corpse_paint = { 
                name = "尸妆", 
                text = { 
                    "移除打出的牌的{C:dark_edition}负片{}效果。",
                    "每移除一张，有{C:green}#2#/#1#{}概率",
                    "此小丑获得{C:attention}+#3#手牌上限",
                    "{C:inactive}(当前{C:attention}+#4#{C:inactive}手牌上限)"
                } 
            },
            j_aij_toothy_joker = { name = "牙齿小丑", text = { "" } },
            j_aij_mondrian_joker = {
                name = "蒙德里安小丑",
                text = {
                    "牌组中每张{C:attention}4{}",
                    "增加{C:mult}+#1#{}倍率",
                    "{C:inactive}(当前{C:mult}+#2#{}{C:inactive}倍率)"
                },
            },
            j_aij_orphic_joker = {
                name = "俄耳甫斯小丑",
                text = {
                    "跳过{C:attention}盲注{}时，",
                    "创建一张随机{C:uncommon}罕见{} {C:attention}小丑牌{}",
                    "{C:inactive}(需有空位)"
                },
            },
            j_aij_the_artist = { name = "艺术家", text = { "" } },
            j_aij_toynbee_joker = { name = "托因比小丑", text = { "" } },
            j_aij_aluzinnu = {
                name = "阿鲁津努",
                text = {
                    "{C:attention}象形文{}和{C:attention}岩刻{}",
                    "优惠卷有{C:red}负片{}效果，",
                    "且可{C:attention}多次{}出现"
                }
            },
            j_aij_great_kraken = { name = "大海妖", text = { "" } },
            j_aij_truhan = { 
                name = "特鲁汉", 
                text = { 
                    "每当{C:attention}小丑牌{}被{C:red}销毁{}，",
                    "此小丑获得{X:mult,C:white}X#2#{}倍率",
                    "{C:inactive}(当前{X:mult,C:white}X#1#{}{C:inactive}倍率)"
                } 
            },
            j_aij_chippy = { 
                name = "筹码", 
                text = { 
                    "此小丑获得与",
                    "花费过的{C:money}金钱{}总额相等的{C:chips}筹码{}",
                    "{C:inactive}(当前{C:chips}+#1#{C:inactive}筹码)",
                } 
            },
            j_aij_hofnarr_the_barbarian = {
                name = "野蛮人宫廷小丑",
                text = {
                    "{C:mult}+#1#{}倍率",
                    "在{C:attention}决战首领盲注{}时，{C:attention}禁用{}",
                    "其效果并获得{X:mult,C:white}X#2#{}倍率"
                },
            },
            j_aij_histrio = { name = "希斯特里奥", text = { "" } },
            j_aij_loregg = { name = "洛雷格", text = { "" } },
            j_aij_egg_cc = {
                name = "\"蛋\"",
                text = {
                    "每回合结束，此小丑获得{C:chips}+#2#{}筹码",
                    "和{C:money}$#3#{} {C:attention}出售价值{}",
                    "{C:inactive}(当前{C:chips}+#1#{C:inactive}筹码)",
                    "{C:inactive}嘿，这是\"蛋\""
                },
            },
            j_aij_sot = { name = "醉汉", text = { "" } },
            j_aij_fat_ed = { name = "胖艾德", text = { "" } },
            j_aij_stained_glass_joker = {
                name = "彩绘玻璃小丑",
                text = {
                    "{C:attention}玻璃牌{}视为任意{C:attention}花色{}",
                },
            },
            j_aij_mushroom_cloud = { name = "蘑菇云", text = { "" } },
            j_aij_overdesigned_joker = {
                name = "过度设计小丑",
                text = {
                    "打出的{V:1}#1#{}花色牌",
                    "计分时#3# {B:3,V:2}#4##2#{}#5#",
                    "每当一张牌被{C:attention}打出计分{}时",
                    "花色和效果{C:attention}立刻轮换{}",
                    "{C:inactive}(红心->梅花->方块->黑桃)"
                }
            },
            j_aij_morio = {
                name = "莫里奥",
                text = {
                    "击败{C:attention}首领盲注{}时，",
                    "选择{C:attention}任意{} {C:tarot}塔罗牌{}",
                    "{C:inactive}(需有空位)"
                }
            },
            j_aij_visage = { name = "面容", text = { "" } },
            j_aij_goofball = { 
                name = "呆球", 
                text = { 
                    "每当{C:attention}人头牌{}被打出，",
                    "{C:aij_plasma}平衡{} {C:attention}#1#%{}的{C:mult}倍率{}",
                    "和{C:chips}筹码{}"
                } 
            },
            j_aij_heyokha = { name = "海约卡", text = { "" } },
            j_aij_casual_absent_paranoia = { name = "随意缺失偏执", text = { "" } },
            j_aij_mandrake = { name = "曼德拉草", text = { "" } },
            j_aij_jester_zombie = { name = "小丑僵尸", text = { "" } },
            j_aij_richie_rich = { name = "富家子", text = { "" } },
            j_aij_devil_deal = { name = "恶魔交易", text = { "" } },
            j_aij_totally_nuts = { name = "完全疯狂", text = { "" } },
            j_aij_warhol = { name = "沃霍尔", text = { "" } },
            j_aij_mistake = {
                name = "错误",
                text = {
                    "{C:attention}永恒{}小丑牌可被{C:attention}出售",
                }
            },
            j_aij_depth_of_delusion = { name = "妄想深度", text = { "" } },
            j_aij_curse_of_scotland = { name = "苏格兰诅咒", text = { "" } },
            j_aij_banana_man = { name = "香蕉人", text = { "" } },
            j_aij_corny_joker = { name = "老套小丑", text = { "" } },
            j_aij_entropy = { 
                name = "熵", 
                text = { 
                    "跳过{C:attention}盲注{}时，",
                    "创建一个{C:attention}混沌标签{}"
                } 
            },
            j_aij_urchin = { 
                name = "顽童", 
                text = { 
                    "每回合获得{C:money}$#1#{}",
                    "跳过{C:attention}盲注{}时",
                    "增加{C:money}$#2#{}"
                } 
            },
            j_aij_machine_intelligence = { name = "机器智能", text = { "" } },
            j_aij_grandma = { name = "奶奶", text = { "" } },
            j_aij_funny_money = { name = "假钞", text = { "" } },
            j_aij_witchfinder = { name = "猎巫人", text = { "" } },
            j_aij_trophy_kill = { name = "战利品", text = { "" } },
            j_aij_tract = { name = "传单", text = { "" } },
            j_aij_stock_broker = { name = "股票经纪人", text = { "" } },
            j_aij_stave = { name = "五线谱", text = { "" } },
            j_aij_sunny_side = { name = "阳光面", text = { "" } },
            j_aij_omelette = { name = "煎蛋卷", text = { "" } },
            j_aij_theyre_looking_at_you = { name = "他们在看着你...", text = { "" } },
            j_aij_comedy_of_errors = { name = "错误喜剧", text = { "" } },
            j_aij_fuzzy_joker = { name = "模糊小丑", text = { "" } },
            j_aij_saucy_jacky = { name = "俏皮杰基", text = { "" } },
            j_aij_funny_phone = { name = "搞笑电话", text = { "" } },
            j_aij_taggart = { 
                name = "塔格特", 
                text = { 
                    "获得标签时创建",
                    "每个{C:attention}标签{}的",
                    "{C:attention}复制{}",
                    "{C:inactive}(除双标签外)"
            } 
            },
            j_aij_chitty = { 
                name = "奇蒂", 
                text = { 
                    "{C:attention}+#1#{}个{C:attention}优惠卷{}可在",
                    "{C:attention}商店{}购买" 
            } 
            },
            j_aij_whatsisname = { name = "某某人", text = { "" } },
            j_aij_downing_street = { name = "唐宁街", text = { "" } },
            j_aij_one_little_duck = { name = "小鸭子", text = { "" } },
            j_aij_four_leaf_clover = { name = "四叶草", text = { "" } },
            j_aij_aphantasia = { 
                name = "心盲症", 
                text = { 
                    "所有打出的{C:attention}增强{}牌",
                    "变为{C:red}混沌{}" 
                } 
            },
            j_aij_tabula_rasa = { 
                name = "白板", 
                text = { 
                    "选择{C:attention}盲注{}时，",
                    "移除此小丑的{C:dark_edition}版本{}",
                    "效果变为{C:jest_inherent}固有{}" 
                } 
            },
            j_aij_vitruvian_joker = {
                name = "维特鲁威小丑",
                text = {
                    "若拥有{C:attention}5{}张小丑牌，",
                    "获得{X:mult,C:white}X#1#{}倍率"
                }
            },
            j_aij_american_comic = { name = "美国漫画", text = { "" } },
            j_aij_from_the_top_rope = { name = "高绳坠落", text = { "" } },
            j_aij_fortune_cookie = { name = "幸运饼干", text = { "" } },
            j_aij_tilty_joker = { name = "倾斜小丑", text = { "" } },
            j_aij_opening_move = { name = "开局", text = { "" } },
            j_aij_bartender = { name = "酒保", text = { "" } },
            j_aij_mahoney = { name = "马奥尼", text = { "" } },
            j_aij_le_fils_de_banane = { name = "香蕉之子", text = { "" } },
            j_aij_pygmalion = { 
                name = "皮格马利翁", 
                text = { 
                    "所有{C:attention}石头牌{}视为",
                    "{C:attention}Q{}",
                } 
            },
            j_aij_grue = { name = "格鲁", text = { "" } },
            j_aij_heavy_sixer = { name = "重六", text = { "" } },
            j_aij_tetrominoker = { name = "四格小丑", text = { "" } },
            j_aij_mr_catfish = { name = "鲶鱼先生", text = { "" } },
            j_aij_angel_number = { name = "天使数字", text = { "" } },
            j_aij_doctors_orders = { name = "医嘱", text = { "" } },
            j_aij_blue_eyes_white_joker = { name = "蓝眼白小丑", text = { "" } },
            j_aij_lucina = { name = "露西娜", text = { "" } },
            j_aij_circuit_diagram = { name = "电路图", text = { "" } },
            j_aij_paracosm = { name = "幻想世界", text = { "" } },
            j_aij_mocap = { name = "动作捕捉", text = { "" } },
            j_aij_stagehand = { name = "舞台工作人员", text = { "" } },
            j_aij_the_mermaid = { name = "美人鱼", text = { "" } },
            j_aij_electric_snow = { name = "电雪", text = { "" } },
            j_aij_colour_test = { name = "色彩测试", text = { "" } },
            j_aij_test_card = { 
                name = "测试卡", 
                text = { 
                    "手牌中的{C:attention}版本{}",
                    "触发其效果"
                } 
            },
            j_aij_interstate = { name = "州际", text = { "" } },
            j_aij_bowls_of_joy = { name = "欢乐碗", text = { "" } },
            j_aij_chips_n_dip = {
                name = "筹码蘸酱",
                text = {
                    "{X:chips,C:white}X#1#{}筹码，每回合结束",
                    "减少{X:chips,C:white}X#2#{}筹码"
                }
            },
            j_aij_homemade_comic = { 
                name = "自制漫画", 
                text = { 
                    "打出的{C:attention}充能牌{}",
                    "给予{X:mult,C:white}X#1#{}倍率"
                } 
            },
            j_aij_gematria = { name = "数字命理", text = { "" } },
            j_aij_bingo_card = { name = "宾果卡", text = { "" } },
            j_aij_fish_fingers = { name = "鱼手指", text = { "" } },
            j_aij_joker_png = { name = "小丑.png", text = { "" } },
            j_aij_kuruko = { name = "库鲁科", text = { "" } },
            j_aij_candy_floss = { 
                name = "棉花糖", 
                text = { 
                    "{C:aij_plasma}平衡{} {C:attention}#1#%{}的{C:mult}倍率{}",
                    "和{C:chips}筹码{}，每回合结束",
                    "减少{C:attention}#2#%{}"
                } 
            },
            j_aij_stargazy_pie = { name = "观星派", text = { "" } },
            j_aij_gameshow = { name = "游戏节目", text = { "" } },
            j_aij_bonus_pay = { 
                name = "奖金", 
                text = { 
                    "打出{C:attention}奖励牌{}时",
                    "获得{C:money}$#1#{}"
                } 
            },
            j_aij_illuminated_joker = { name = "发光小丑", text = { "" } },
            j_aij_magazine_ad = { name = "杂志广告", text = { "" } },
            j_aij_bonus_bob = { 
                name = "奖金鲍勃", 
                text = { 
                    "{C:attention}奖励牌{}打出时",
                    "给予{X:chips,C:white}X#1#{}筹码"
                } 
            },
            j_aij_bonus_round = { 
                name = "奖励回合", 
                text = { 
                    "{C:attention}重新触发{}所有",
                    "打出的{C:attention}奖励牌{}",
            } 
            },
            j_aij_jack_o_lantern = { name = "杰克灯笼", text = { "" } },
            j_aij_astrologer = { name = "占星师", text = { "" } },
            j_aij_planetarium = { name = "天文馆", text = { "" } },
            j_aij_stargazer = { name = "观星者", text = { "" } },
            j_aij_skald = { name = "吟游诗人", text = { "" } },
            j_aij_sky_trees = { name = "天空树", text = { "" } },
            j_aij_the_freezer = { name = "冷冻柜", text = { "" } },
            j_aij_twisted_pair = { name = "双绞线", text = { "" } },
            j_aij_the_grim_joker = { name = "冷酷小丑", text = { "" } },
            j_aij_lexicon = { name = "词典", text = { "" } },
            j_aij_dendroglpyh = { name = "树文", text = { "" } },
            j_aij_prank_caller = { name = "恶作剧电话", text = { "" } },
            j_aij_arngren = { name = "阿伦格伦", text = { "" } },
            j_aij_blacklist = { name = "黑名单", text = { "" } },
            j_aij_croupier = { name = "荷官", text = { "" } },
            j_aij_the_lucovico_technique = { name = "路科维奇技术", text = { "" } },
            j_aij_headstone = { name = "墓碑", text = { "" } },
            j_aij_full_monty = { name = "全裸", text = { "" } },
            j_aij_chef = { name = "厨师", text = { "" } },
            j_aij_screamer = { name = "尖叫者", text = { "" } },
            j_aij_evil_twin = { name = "邪恶双胞胎", text = { "" } },
            j_aij_cubic_joker = { name = "立方小丑", text = { "" } },
            j_aij_remina = { name = "雷米娜", text = { "" } },
            j_aij_jpeg = { name = ".jpeg", text = { "" } },
            j_aij_sherrif = { name = "警长", text = { "" } },
            j_aij_alien_joker = { name = "外星小丑", text = { "" } },
            j_aij_nobody = { name = "无名氏", text = { "" } },
            j_aij_broken_dreams = { name = "破碎梦想", text = { "" } },
            j_aij_elf = { name = "精灵", text = { "" } },
            j_aij_fall_of_count_chaligny = { name = "沙利尼伯爵的陨落", text = { "" } },
            j_aij_coulrorachne = { name = "彩蛛", text = { "" } },
            j_aij_bad_sun = { name = "坏太阳", text = { "" } },
            j_aij_lemarchand_cube = { name = "勒马尚方块", text = { "" } },
            j_aij_duende = { name = "杜恩德", text = { "" } },
            j_aij_evil_joker = { name = "邪恶小丑", text = { "" } },
            j_aij_sanguine_joker = { name = "乐观小丑", text = { "" } },
            j_aij_choleric_joker = { name = "暴躁小丑", text = { "" } },
            j_aij_phlegmatic_joker = { name = "冷漠小丑", text = { "" } },
            j_aij_melancholic_joker = { name = "忧郁小丑", text = { "" } },
            j_aij_majordomo = { name = "管家", text = { "" } },
            j_aij_skinsuit = { name = "皮套", text = { "" } },
            j_aij_shock_humor = { name = " shock_humor", text = { "" } },
            j_aij_the_house_that_jack_built = { name = "杰克建造的房子", text = { "" } },
            j_aij_clownbug = { name = "小丑虫", text = { "" } },


            j_aij_prototype = { name = "原型", text = {
                "{C:inactive}\"哈哈，我不确定我", 
                "{C:inactive}还有什么名言可说\""} },
            j_aij_spoofy = { name = "斯普菲", text = {
                "{C:inactive}\"你应该试试《Braptro》\""} },
            j_aij_toyrapple = { name = "玩具苹果", text = {""} },
            j_aij_grass = { name = "草地", text = {
                "\"游戏\""} },
            j_aij_mythie = { name = "米西", text = {
                "{C:inactive}\"在床上吃吐司", 
                "{C:inactive}就是我的超能力\""} },
            j_aij_zan = { name = "赞", text = {""} },
            j_aij_metrollen = { name = "金属卷", text = {""} },
            j_aij_clay = { name = "黏土", text = {""} },
            j_aij_generic = { name = "通用埃里克", text = {
                "{C:inactive}\"其余部分被屏蔽", 
                "{C:inactive}以维持游戏平衡\"" 
            } },
            j_aij_cheddar = { name = "切达", text = {""} },

            j_aij_nybbas = { name = "尼巴斯", text = { "" }, unlock = { "?????" } },
            j_aij_doink = { name = "多因克", text = { "" }, unlock = { "?????" } },
            j_aij_monarcho = { name = "蒙纳科", text = { "" }, unlock = { "?????" } },
            j_aij_pompey = {
                name = "庞培",
                text = {
                    "每张位于其右侧的{C:attention}小丑牌{}{X:mult,C:white}X#1#{} 倍率",
                    "庞培自身也计算在内",
                    "{C:inactive}(当前{X:mult,C:white}X#2#{}{C:inactive}倍率){}"
                },
                unlock = { "?????" }
            },
            j_aij_touchstone = {
                name = "试金石",
                text = {
                    "{C:attention}+#1#{} 手牌上限",
                    "揭示牌堆中的{C:attention}#2#{}",
                    "张牌"
                },
                unlock = { "?????" }
            },
            j_aij_fortunato = {
                name = "福图纳托",
                text = {
                    "将所有{C:attention}已打出{}但{C:attention}未计分{}的牌",
                    "转化为{C:attention}石头牌{}。",
                    "每当一张{C:attention}石头牌{}计分时，",
                    "此{C:attention}小丑牌{}获得{X:mult,C:white}X#2#{}倍率",
                    "{C:inactive}(当前{X:mult,C:white}X#1#{}{C:inactive}倍率){}"
                },
                unlock = { "?????" }
            },
            j_aij_pellesini = { 
                name = "佩莱西尼", 
                text = { 
                    "当一张小丑牌被{C:red}销毁时，",
                    "生成一个{C:attention}完全相同{}的复制品" 
                },
                unlock = { "?????" } 
            },
            j_aij_nedda = {
                name = "内达",
                text = {
                    "手牌中的{C:attention}皇后{}",
                    "提供{X:mult,C:white}X#1#{}倍率"
                },
                unlock = { "?????" }
            },
            j_aij_silvio = {
                name = "西尔维奥",
                text = {
                    "每张手牌中的{C:attention}皇后{}",
                    "会使所有{C:attention}国王{}",
                    "额外触发一次"
                },
                unlock = { "?????" }
            },
            j_aij_biancolelli = { name = "比安科莱利", text = { "" }, unlock = { "?????" } },
            j_aij_toto = { 
                name = "托托", 
                text = { 
                    "每获得一个{C:attention}标签{}时，",
                    "生成{C:attention}2{}个复制",
                    "{C:inactive}(双标签除外)" 
                }, 
                unlock = { "?????" } 
            },
            j_aij_grock = { name = "格罗克", text = { "" }, unlock = { "?????" } },
            j_aij_eulenspiegel = { 
                name = "奥伊伦施皮格尔", 
                text = { 
                    "当{C:attention}Boss盲注{}被击败时，",
                    "{C:attention}-#1#{} 底注数且",
                    "此小丑牌失去{X:mult,C:white}X#2#{}倍率",
                    "{C:inactive}(当前{X:mult,C:white}X#3#{C:inactive}倍率)"
                }, 
                unlock = { "?????" } 
            },
            j_aij_deburau = { name = "德比罗", text = { "" }, unlock = { "?????" } },
            j_aij_dacosta = { name = "达科斯塔", text = { "" }, unlock = { "?????" } },
            j_aij_durie = { name = "杜里", text = { "" }, unlock = { "?????" } },
            j_aij_nichola = {
                name = "尼古拉",
                text = {
                    '回合开始时，将一张随机',
                    '{C:attention}皇后{}加入手牌，',
                    '附带随机{C:attention}增强{}、',
                    '{C:dark_edition}版本{}和{C:attention}蜡封{}'
                },
                unlock = { "?????" }
            },
            j_aij_fleeman = { name = "弗利曼", text = { "" }, unlock = { "?????" } },
            j_aij_calquhoun = { name = "卡尔洪", text = { "" }, unlock = { "?????" } },
            j_aij_dor = { 
                name = "多尔", 
                text = { 
                    "{X:dark_edition,C:white}#1#{} 倍率，作用于{C:attention}回合{}",
                    "的{C:attention}最后一次出牌" 
                },
                unlock = { "?????" } 
            },
            j_aij_archy = { 
                name = "阿奇", 
                text = { 
                    "{C:money}商店{}中的所有初始{C:attention}卡牌{}",
                    "和{C:attention}强化包{}免费" 
                }, 
                unlock = { "?????" } 
            },
            j_aij_sommers = { name = "萨默斯", text = { "" }, unlock = { "?????" } },
            j_aij_pace = {
                name = "佩斯",
                text = {
                    "所有{C:uncommon}罕见{}和",
                    "{C:rare}史诗{}小丑牌",
                    "视为{C:common}普通{}"
                },
                unlock = { "?????" }
            },
            j_aij_thomazina = {
                 name = "托马西娜",
                 text = {
                    "计分的{C:attention}数字牌{}",
                    "提供{C:chips}+#1#{}筹码。每当一张",
                    "{C:attention}数字牌{}计分时，",
                    "增加{C:chips}+#2#{}筹码"
                },
                unlock = { "?????" } },
            j_aij_mathurine = { name = "马图林", text = { "" }, unlock = { "?????" } },
            j_aij_guillaume = { 
                name = "纪尧姆", 
                text = { 
                    "若以少于{C:attention}5{}张小丑牌",
                    "击败{C:attention}Boss盲注{}，",
                    "此小丑牌获得{C:dark_edition}+#2#{}个小丑槽",
                    "{C:inactive}(当前{C:dark_edition}+#1#{C:inactive}个小丑槽){}"
                },
                unlock = { "?????" } 
            },
            j_aij_tarlton = { 
                name = "塔尔顿", 
                text = { 
                    "提供筹码其数值",
                    "等于你已打过的{C:attention}牌型{}的",
                    "{C:chips}总筹码{}，回合结束重置",
                    "{C:inactive}(当前{C:chips}+#1#{}{C:inactive}筹码){}"
                }, 
                unlock = { "?????" }
            },
            j_aij_roland = { name = "罗兰", text = { "" }, unlock = { "?????" } },
            j_aij_borra = { name = "博拉", text = { "" }, unlock = { "?????" } },
            j_aij_taillefer = { 
                name = "塔耶费尔", 
                text = { 
                    "每打出一次牌，此小丑牌",
                    "获得{X:mult,C:white}X#2#{}倍率，",
                    "在击败{C:attention}#3#{}个{C:attention}Boss盲注{}后",
                    "{C:red}自毁{}",
                    "{C:inactive}(当前{X:mult,C:white}X#1#{} {C:inactive}倍率, {C:attention}#4#{C:inactive}/{C:attention}#3#{C:inactive}){}"
                }, 
                unlock = { "?????" } 
            },
            j_aij_killigrew = {
                name = "基利格鲁",
                text = {
                    "每拥有一张{C:attention}优惠券{}，",
                    "获得{X:mult,C:white}X#1#{}倍率",
                    "{C:inactive}(当前{X:mult,C:white}X#2#{}{C:inactive}倍率){}"
                },
                unlock = { "?????" }
            },
            j_aij_dongfang = { name = "东方", text = { "" }, unlock = { "?????" } },
            j_aij_zerco = {
                name = "泽尔科",
                text = {
                    "为每回合{C:attention}第一张{}",
                    "计分的{C:attention}牌{}添加{C:dark_edition}负片{}效果",
                    "{C:inactive}(若其无现有版本)"
                },
                unlock = { "?????" } },
            j_aij_yu_sze = { 
                name = "余瑟", 
                text = { 
                    "无{C:dark_edition}版本{}的小丑牌",
                    "提供{X:mult,C:white}X#1#{}倍率" 
                },
                unlock = { "?????" } 
            },
            j_aij_brusquet = { name = "布鲁斯克", text = { "" }, unlock = { "?????" } },
            j_aij_rahere = { name = "拉赫尔", text = { "" }, unlock = { "?????" } },
            j_aij_gonnella = { name = "冈内拉", text = { "" }, unlock = { "?????" } },
            j_aij_gong_gil = { name = "贡吉尔", text = { "" }, unlock = { "?????" } },
            j_aij_angoulevent = { 
                name = "安古勒旺", 
                text = { 
                    "所有已打出的牌",
                    "额外触发{C:attention}#1#{}次" 
                }, 
                unlock = { "?????" } 
            },
            j_aij_coryat = { name = "科里亚特", text = { "" }, unlock = { "?????" } },
            j_aij_bluet = { 
                name = "布鲁特", 
                text = { 
                    "当选择{C:attention}盲注{}时，",
                    "生成一张{C:dark_edition}负片{}",
                    "{C:spectral}幻灵牌{}"
                }, 
                unlock = { "?????" } 
            },
            j_aij_bebe = {
                 name = "贝贝",
                 text = {
                    "{C:blue}+#1#{} 每回合出牌次数"
                },
                 unlock = { "?????" } },
            j_aij_pipine = { 
                name = "皮皮内", 
                text = { 
                    "{C:red}+#1#{} 每回合弃牌次数" 
                }, 
                unlock = { "?????" } 
            },
            j_aij_golitsyn = { name = "戈利岑", text = { "" }, unlock = { "?????" } },
            j_aij_buzheninova = { name = "布热尼诺娃", text = { "" }, unlock = { "?????" } },
            j_aij_yakov = { name = "雅科夫", text = { "" }, unlock = { "?????" } },
            j_aij_komar = { 
                name = "科马尔", 
                text = { 
                    "所有{C:attention}计分{}牌获得等同于",
                    "其他已打出的牌的{C:chips}筹码值{}" 
                }, 
                unlock = { "?????" } 
            },
            j_aij_lavatch = {
                 name = "拉瓦奇",
                 text = {
                    "每一张计分的{C:clubs}梅花{}牌提供{X:mult,C:white}X#1#{}倍率，",
                    "并且会将其数值",
                    "增加{X:mult,C:white}X#2#{}倍率"
                },
                 unlock = { "?????" } },
            j_aij_Ffwllier = { name = "弗维利尔", text = { "" }, unlock = { "?????" } },
            j_aij_martellino = {
                name = "马特利诺",
                text = {
                    "{C:attention}#2#{}回合后，{C:money}出售{}此",
                    "小丑牌以从{C:attention}收藏{}中",
                    "生成任意一张{C:attention}小丑牌{}",
                    "{C:inactive}(当前{C:attention}#1#{}{C:inactive}/#2#){}"
                },
                unlock = { "?????" }
            },
            j_aij_shir_ei = { name = "希尔埃", text = { "" }, unlock = { "?????" } },
            j_aij_xinmo = { name = "心魔", text = { "" }, unlock = { "?????" } },
            j_aij_chunyu = { name = "春雨", text = { "" }, unlock = { "?????" } },
            j_aij_fantasio = { 
                name = "幻想家", 
                text = { 
                    "所有牌视为",
                    "{C:attention}所有花色{}"
                }, 
                unlock = { "?????" } 
            },
            j_aij_sexton = { name = "塞克斯顿", text = { "" }, unlock = { "?????" } },
            j_aij_dongtong = {
                name = "东通",
                text = {
                    "{C:green}翻倍{}大多数{C:attention}小丑牌{}的效果"
                },
                unlock = { "?????" }
            },
            j_aij_naiteh = {
                name = "奈特",
                text = {
                    "击败{C:attention}Boss盲注{}时，",
                    "获得{C:attention}+#2#{}手牌上限",
                    "{C:inactive}(当前{C:attention}+#1#{C:inactive}手牌上限)"
                },
                unlock = { "?????" }
            },
            j_aij_talhak = {
                name = "塔尔哈克",
                text = {
                    "当{C:attention}Boss盲注{}被击败时，",
                    "选择任意一张{C:spectral}幻灵牌{}",
                    "生成",
                    "{C:inactive}(需有空位)"
                },
                unlock = { "?????" }
            },
        },
        Planet = {
            c_aij_vulcanoid = { name = "火神星", text = { "{S:0.8}({S:0.8,V:1}等级.#1#{S:0.8}){} 升级{C:attention}#2#{}，{C:mult}+#3#{}倍率" } },
            c_aij_zoozve = { name = "祖兹维", text = { "{S:0.8}({S:0.8,V:1}等级.#1#{S:0.8}){} 升级{C:attention}#2#{}，{C:mult}+#3#{}倍率" } },
            c_aij_luna = { name = "月神星", text = { "{S:0.8}({S:0.8,V:1}等级.#1#{S:0.8}){} 升级{C:attention}#2#{}，{C:mult}+#3#{}倍率" } },
            c_aij_phobos = { name = "火卫一", text = { "{S:0.8}({S:0.8,V:1}等级.#1#{S:0.8}){} 升级{C:attention}#2#{}，{C:mult}+#3#{}倍率" } },
            c_aij_europa = { name = "木卫二", text = { "{S:0.8}({S:0.8,V:1}等级.#1#{S:0.8}){} 升级{C:attention}#2#{}，{C:mult}+#3#{}倍率" } },
            c_aij_titan = { name = "土卫六", text = { "{S:0.8}({S:0.8,V:1}等级.#1#{S:0.8}){} 升级{C:attention}#2#{}，{C:mult}+#3#{}倍率" } },
            c_aij_umbriel = { name = "天卫二", text = { "{S:0.8}({S:0.8,V:1}等级.#1#{S:0.8}){} 升级{C:attention}#2#{}，{C:mult}+#3#{}倍率" } },
            c_aij_triton = { name = "海卫一", text = { "{S:0.8}({S:0.8,V:1}等级.#1#{S:0.8}){} 升级{C:attention}#2#{}，{C:mult}+#3#{}倍率" } },
            c_aij_nix = { name = "尼克斯", text = { "{S:0.8}({S:0.8,V:1}等级.#1#{S:0.8}){} 升级{C:attention}#2#{}，{C:mult}+#3#{}倍率" } },
            c_aij_planet_nine = { name = "第九行星", text = { "{S:0.8}({S:0.8,V:1}等级.#1#{S:0.8}){} 升级{C:attention}#2#{}，{C:mult}+#3#{}倍率" } },
            c_aij_pallas = { name = "智神星", text = { "{S:0.8}({S:0.8,V:1}等级.#1#{S:0.8}){} 升级{C:attention}#2#{}，{C:mult}+#3#{}倍率" } },
            c_aij_dysnomia = { name = "厄里斯卫星", text = { "{S:0.8}({S:0.8,V:1}等级.#1#{S:0.8}){} 升级{C:attention}#2#{}，{C:mult}+#3#{}倍率" } },
            c_aij_phaethon = { name = "法厄同", text = { "{S:0.8}({S:0.8,V:1}等级.#1#{S:0.8}){} 升级{C:attention}#2#{}，{C:chips}+#3#{}筹码" } },
            c_aij_2013_nd15 = { name = "2013 ND15", text = { "{S:0.8}({S:0.8,V:1}等级.#1#{S:0.8}){} 升级{C:attention}#2#{}，{C:chips}+#3#{}筹码" } },
            c_aij_kamooalewa = { name = "卡莫奥阿莱瓦", text = { "{S:0.8}({S:0.8,V:1}等级.#1#{S:0.8}){} 升级{C:attention}#2#{}，{C:chips}+#3#{}筹码" } },
            c_aij_deimos = { name = "火卫二", text = { "{S:0.8}({S:0.8,V:1}等级.#1#{S:0.8}){} 升级{C:attention}#2#{}，{C:chips}+#3#{}筹码" } },
            c_aij_callisto = { name = "木卫四", text = { "{S:0.8}({S:0.8,V:1}等级.#1#{S:0.8}){} 升级{C:attention}#2#{}，{C:chips}+#3#{}筹码" } },
            c_aij_iapetus = { name = "土卫八", text = { "{S:0.8}({S:0.8,V:1}等级.#1#{S:0.8}){} 升级{C:attention}#2#{}，{C:chips}+#3#{}筹码" } },
            c_aij_oberon = { name = "天卫四", text = { "{S:0.8}({S:0.8,V:1}等级.#1#{S:0.8}){} 升级{C:attention}#2#{}，{C:chips}+#3#{}筹码" } },
            c_aij_proteus = { name = "海卫八", text = { "{S:0.8}({S:0.8,V:1}等级.#1#{S:0.8}){} 升级{C:attention}#2#{}，{C:chips}+#3#{}筹码" } },
            c_aij_charon = { name = "冥卫一", text = { "{S:0.8}({S:0.8,V:1}等级.#1#{S:0.8}){} 升级{C:attention}#2#{}，{C:chips}+#3#{}筹码" } },
            c_aij_nibiru = { name = "尼比鲁", text = { "{S:0.8}({S:0.8,V:1}等级.#1#{S:0.8}){} 升级{C:attention}#2#{}，{C:chips}+#3#{}筹码" } },
            c_aij_2000_eu16 = { name = "2000 EU16", text = { "{S:0.8}({S:0.8,V:1}等级.#1#{S:0.8}){} 升级{C:attention}#2#{}，{C:chips}+#3#{}筹码" } },
            c_aij_kuiper = { name = "柯伊伯", text = { "{S:0.8}({S:0.8,V:1}等级.#1#{S:0.8}){} 升级{C:attention}#2#{}，{C:chips}+#3#{}筹码" } },
            c_aij_paper_weywot = { name = "维沃特", text = { "{S:0.8}({S:0.8,V:1}等级.#1#{S:0.8}){} 升级{C:attention}#2#{}，{C:mult}+#3#{}倍率" } },
            c_aij_paper_namaka = { name = "纳马卡", text = { "{S:0.8}({S:0.8,V:1}等级.#1#{S:0.8}){} 升级{C:attention}#2#{}，{C:mult}+#3#{}倍率" } },
            c_aij_paper_ilmare = { name = "伊尔玛", text = { "{S:0.8}({S:0.8,V:1}等级.#1#{S:0.8}){} 升级{C:attention}#2#{}，{C:mult}+#3#{}倍率" } },
            c_aij_paper_salacia = { name = "萨拉西亚", text = { "{S:0.8}({S:0.8,V:1}等级.#1#{S:0.8}){} 升级{C:attention}#2#{}，{C:mult}+#3#{}倍率" } },
            c_aij_paper_ixion = { name = "伊克西翁", text = { "{S:0.8}({S:0.8,V:1}等级.#1#{S:0.8}){} 升级{C:attention}#2#{}，{C:chips}+#3#{}筹码" } },
            c_aij_paper_hiiaka = { name = "希亚卡", text = { "{S:0.8}({S:0.8,V:1}等级.#1#{S:0.8}){} 升级{C:attention}#2#{}，{C:chips}+#3#{}筹码" } },
            c_aij_paper_varda = { name = "瓦尔达", text = { "{S:0.8}({S:0.8,V:1}等级.#1#{S:0.8}){} 升级{C:attention}#2#{}，{C:chips}+#3#{}筹码" } },
            c_aij_paper_mk2 = { name = "MK2", text = { "{S:0.8}({S:0.8,V:1}等级.#1#{S:0.8}){} 升级{C:attention}#2#{}，{C:chips}+#3#{}筹码" } }
        },
        Spectral = {
            c_aij_gravastar = { name = '引力星', text = { '{C:attention}升级{}所有{C:chips}筹码{}的{C:legendary,E:1}扑克牌型{}' } },
            c_aij_pulsar = { name = '脉冲星', text = { '{C:attention}升级{}所有{C:mult}倍率{}的{C:legendary,E:1}扑克牌型{}' } },
            c_aij_shade = { name = '暗影', text = { '为手牌中{C:attention}1{}张随机牌添加{C:dark_edition}负片{}版本' } },
            c_aij_trefle = { name = '三叶草', text = { '{C:attention}重掷{}一张选定的{C:attention}小丑牌{C:inactive}(不可永恒)' } }
        },
        Tag = {
            tag_aij_glimmer = { name = '微光标签', text = { '下一张基础版商店小丑牌免费并变为{C:aij_plasma}微光{}' } },
            tag_aij_stellar = { name = '恒星标签', text = { '下一张基础版商店小丑牌免费并变为{C:aij_stellar}恒星{}' } },
            tag_aij_soulbound = { name = '灵魂绑定标签', text = { '生成一张随机{C:attention}易腐{}的{C:legendary}传说{}小丑牌{C:inactive}(需有空位)' } },
            tag_aij_fortunate = { name = '幸运标签', text = { '选择任意一张{C:tarot}塔罗牌{}生成{C:inactive}(需有空位)' } },
            tag_aij_overstuffed = { name = '超载标签', text = { "下次开启的{C:attention}强化包{}包含翻倍选项和可选数量" } },
            tag_aij_chaos = { name = '混沌标签', text = { "具有{C:green}随机{}效果" } }
        },
        Tarot = {
            c_aij_magus = { name = '魔法师', text = { "将{C:attention}#1#{}张选定牌增强为{C:attention}#2#{}" } },
            c_aij_isis_urania = { name = '伊西斯-乌拉尼亚', text = { "将{C:attention}#1#{}张选定牌增强为{C:attention}#2#{}" } },
            c_aij_cubic_stone = { name = '立方石', text = { "将{C:attention}#1#{}张选定牌增强为{C:attention}#2#{}" } },
            c_aij_master_arcanes = { name = '奥秘大师', text = { "生成一张随机{C:spectral}幻灵牌{C:inactive}(需有空位)" } },
            c_aij_two_ways = { name = '双行道', text = { "将{C:attention}#1#{}张选定牌分裂为{C:attention}2{}张，牌值为原{C:attention}一半{C:inactive}(奇数牌尽可能均分){C:inactive}(A=14, K=13, Q=12, J=11)" } },
            c_aij_osiris = { name = '奥西里斯', text = { "{C:red}销毁{}一张选定的小丑牌并获得三倍{C:money}出售价值{C:inactive}(当前{C:money}$#1#{}{C:inactive})" } },
            c_aij_broken_fate = { name = '破碎命运', text = { "随机化{C:attention}最左侧消耗品{}的数值，范围在{C:attention}X0.75{}到{C:attention}X2.5{}之间" } }
        },
        Other = {
            showdown_blind = { name = "对决盲注", text = { "每{C:attention}8{}个底注出现的{C:attention}Boss盲注{}" } },
            reroll_joker = { name = "重掷", text = { '将小丑牌替换为同罕见度的随机小丑牌' } },
            overdesigned_club = { name = "梅花", text = { "计分的{C:clubs}梅花{}牌提供{C:mult}+14{}倍率" } },
            overdesigned_spade = { name = "黑桃", text = { "计分的{C:spades}黑桃{}牌提供{C:chips}+100{}筹码" } },
            overdesigned_diamond = { name = "方块", text = { "计分的{C:diamonds}方块{}牌获得{C:money}$2{}" } },
            overdesigned_heart = { name = "红心", text = { "计分的{C:hearts}红心{}牌提供{X:mult,C:white}X1.5{}倍率" } },
            p_aij_guess_the_jest = { name = "猜猜小丑包", text = { '从{C:attention}#2#{}张隐藏的{C:legendary,E:2}传说{}小丑牌中选择{C:attention}#1#{}张' } },
            m_aij_dyscalcular_numbered_rank = { name = "数字牌", text = { "{C:attention}2{}、{C:attention}3{}、{C:attention}4{}、{C:attention}5{}、{C:attention}6{}、{C:attention}7{}、{C:attention}8{}、{C:attention}9{}和{C:attention}10{}" } }
        }
    }
}