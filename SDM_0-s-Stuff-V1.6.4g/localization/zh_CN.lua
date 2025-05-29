return {
    descriptions = {
        Joker = {
            j_sdm_trance_the_devil = {
                name = "恍惚的恶魔",
                text = {
                    "选择 {C:attention}盲注{}后",
                    "这张牌 {C:attention}摧毁{} 消耗牌",
                    "每张提供 {X:red,C:white}X#1#{} 倍率",
                    "{C:inactive}(当前 {X:red,C:white}X#2#{C:inactive} 倍率)" 
                }
            },
            j_sdm_burger = {
                name = "汉堡包",
                text = {
                    "{C:chips}+#3#{} 筹码, {C:mult}+#2#{} 倍率",
                    "下 {C:attention}#4#{} 个回合 {X:mult,C:white}X#1#{} 倍率 ",
                }
            },
            j_sdm_bounciest_ball = {
                name = "弹力球",
                text = {
                    "当出牌次数最多的{C:attention}牌型计分时{},",
                    "这张牌增加 {C:chips}+#2#{} 筹码 ",
                    "halved on {C:attention}different hand{}",
                    "{C:inactive}(当前 {C:attention}#3#{C:inactive}, {C:chips}+#1#{C:inactive} 筹码)"
                }
            },
            j_sdm_lucky_joker = {
                name = "幸运小丑",
                text = {
                    "重新触发",
                    "每张打出的{C:attention}7{}",
                    "额外{C:attention}#1#{}次"
                }
            },
            j_sdm_iconic_icon = {
                name = "标志性图标",
                text = {
                    "牌组中的每张 {C:attention}A{}提供{C:mult}+#2#{} 倍率",
                    " 如果 {C:attention}是增强类型{}{C:mult}+#3#{} 倍率",
                    "{C:inactive}(当前 {C:mult}+#1#{C:inactive} 倍率)"
                }
            },
            j_sdm_mult_n_chips = {
                name = "倍率与筹码",
                text = {
                    "计分的 {C:attention}奖励{} 牌",
                    "给予 {C:mult}+#1#{} 倍率 ",
                    "计分的 {C:attention}倍率{} 牌",
                    "给予 {C:chips}+#2#{} 筹码",
                }
            },
            j_sdm_moon_base = {
                name = "月球基地",
                text = {
                    "选择 {C:attention}盲注{} 后",
                    "创建一个随机的{C:attention}Space{}小丑",
                    "{s:0.8,C:inactive}(不能创建月球基地)",
                    "{C:inactive}(必须有空间)"
                }
            },
            j_sdm_shareholder_joker = {
                name = "股东小丑",
                text = {
                    "每回合结束",
                    "随机获得 {C:money}$#1#{} ~ {C:money}$#2#{}金币",
                }
            },
            j_sdm_magic_hands = {
                name = "法师之手",
                text = {
                    "{X:mult,C:white}X#1#{} 倍率 如果计分的{C:attention}牌型{} 有",
                    "至少 {C:blue}#2#{} {C:inactive,s:0.8}(= hands left before Play){}",
                    "of its most frequent rank",
                    "{C:inactive}(ex: {C:attention}K K K Q Q{C:inactive} with {C:blue}3{C:inactive} hands left)",
                }
            },
            j_sdm_tip_jar = {
                name = "Tip Jar",
                text = {
                    "回合结束后",
                    "获得你金币数量的",
                    "{C:attention}最大的数字",
                    "{C:inactive}(例如: {C:money}$24{C:inactive} 就赚 {C:money}$4{C:inactive})",
                }
            },
            j_sdm_wandering_star = {
                name = "漫游之星",
                text = {
                    "每{C:attention}回合{}",
                    "复制一张第一次使用的{C:planet}星球牌{}",
                    "{s:0.8,C:inactive}(必须有空间)",
                    "{C:inactive}(当前 {C:attention}#1#{C:inactive}#2#)"
                }
            },
            j_sdm_ouija_board = {
                name = "通灵板",
                text = {
                    "卖掉{C:red}稀有 {C:attention}小丑{}之后",
                    "当{C:attention}隐藏牌型(五条，同花葫芦){}计分",
                    "并且使用一张 {C:spectral}幻灵{}牌",
                    "卖掉这张小丑创建一张 {C:spectral}灵魂{}",
                    "{s:0.8,C:inactive}(必须有空间)",
                    "{C:inactive}(剩余 {C:attention}#3#{C:inactive}#4#/{C:attention}#5#{C:inactive}#6#/{C:attention}#7#{C:inactive}#8#)"
                }
            },
            j_sdm_la_revolution = {
                name = "大革命",
                text = {
                    "若出牌没有{C:attention}人头{} 牌",
                    "升级 {C:attention}获胜的牌型{}",
                }
            },
            j_sdm_clown_bank = {
                name = "小丑银行",
                text = {
                    "选择 {C:attention}盲注{} 后, 花费 {C:money}$#3#{}",
                    "给予这张牌{X:mult,C:white}X#2#{} 倍率",
                    "每次需求增强 {C:money}$#4#{}",
                    "{C:inactive}(当前 {X:mult,C:white}X#1#{C:inactive} 倍率)"
                }
            },
            j_sdm_furnace = {
                name = "炉",
                text = {
                    "回合开始时",
                    "增加一个随机的{C:attention}黄金{} 牌",
                    "{C:attention}钢铁{} 牌",
                }
            },
            j_sdm_warehouse = {
                name = "仓库",
                text = {
                    "{C:attention}+#1#{} 手牌数量",
                    "{C:red}-#2#{} 消耗槽位",
                    "如果卖掉失去 {C:money}$#3#{}"
                }
            },
            j_sdm_zombie_joker = {
                name = "僵尸小丑",
                text = {
                    "当{C:attention}卖掉{} 一张牌（除了{C:tarot}死亡{}",
                    "{C:green}#1# / #2#{} 几率创建一个",
                    "{C:tarot}死亡{}塔罗牌",
                    "{C:inactive}(必须有空间)"
                }
            },
            j_sdm_mystery_joker = {
                name = "神秘小丑",
                text = {
                    " 当{C:attention}Boss 盲注{} 被击败时",
                    "创建一个{C:red}稀有 {C:attention}标签{}",
                }
            },
            j_sdm_infinite_staircase = {
                name = "无限阶梯",
                text = {
                    "如果计分牌包含一个{C:attention}数字{}{X:mult,C:white}X#1#{} 倍率",
                    " 没有{C:attention}A{}的{C:attention}顺子{}",
                }
            },
            j_sdm_ninja_joker = {
                name = "忍者小丑",
                text = {
                    "如果打出的牌 {C:attention}被摧毁{},",
                    "创建一个 a {C:dark_edition}负片{C:attention} 标签{} ",
                    "添加一张牌后失效",
                    "{C:inactive}(当前 {C:attention}#1#{C:inactive}#2#{C:inactive})"
                }
            },
            j_sdm_reach_the_stars = {
                name = "抵达星空",
                text = {
                    " {C:attention}#1#{} 和 {C:attention}#2#{} 计分时",
                    "创建一张随机的 {C:planet}星球{} 牌",
                    "{s:0.8}回合结束后改变",
                    "{C:inactive}(必须有空间)",
                    "{C:inactive}(当前 {C:attention}#3#{C:inactive}#4# & {C:attention}#5#{C:inactive}#6#)"
                }
            },
            j_sdm_crooked_joker = {
                name = "弯曲小丑",
                text = {
                    "{C:attention}翻倍{} 或者 {C:red}摧毁{}",
                    "每张获得的 {C:attention}小丑{}",
                    "{C:inactive}(必须有空间)"
                }
            },
            j_sdm_property_damage = {
                name = "适量伤害",
                text = {
                    "当弃牌包括一个",
                    "{C:attention}葫芦{}",
                    "这站牌增加{X:mult,C:white}X#2#{} 倍率",
                    "{C:inactive}(当前 {X:mult,C:white}X#1#{} {C:inactive}倍率)",
                }
            },
            j_sdm_rock_n_roll = {
                name = "摇滚小丑",
                text = {
                    "重新出发所有打出的",
                    "{C:attention}增强{} 牌",
                }
            },
            j_sdm_contract = {
                name = "合同",
                text = {
                    "回合结束后赚 {C:money}$#1#{} ",
                    "盲注分数{C:red}#2#X{}",
                }
            },
            j_sdm_cupidon = {
                name = "丘比特",
                text = {
                    "{X:attention,C:white}X#1#{} 盲注分数",
                }
            },
            j_sdm_pizza = {
                name = "披萨",
                text = {
                    "选择盲注后",
                    "增加 {C:blue}+#1#{} #3#",
                    "{C:blue}-#2#{} 每回合出牌次数"
                }
            },
            j_sdm_treasure_chest = {
                name = "宝箱",
                text = {
                    "每卖一张 {C:attention}消耗牌{} ",
                    "增加 {C:money}$#1#{} {C:attention}售价{}",
                }
            },
            j_sdm_bullet_train = {
                name = "子弹头列车",
                text = {
                    "如果没有弃牌",
                    "第一次出牌{C:chips}+#1#{}筹码",
                }
            },
            j_sdm_chaos_theory = {
                name = "混沌理论",
                text = {
                    "增加{C:attention}屏幕上的数字{}  {C:attention}两倍{} 数值",
                    "到筹码",
                    "{C:inactive}(当前 {C:chips}+#2#{C:inactive} 筹码)"
                }
            },
            j_sdm_jambo = {
                name = "金宝",
                text = {
                    "增加 {C:attention}两倍{}",
                    "the rank of a",
                    "random {C:attention}discarded{}",
                    "card to Mult",
                }
            },
            j_sdm_water_slide = {
                name = "Water Slide",
                text = {
                    "这张牌增加 {C:chips}+#1#{}筹码",
                    "如果计分牌包含a {C:attention}9{}, {C:attention}7{} 或 {C:attention}6",
                    "{C:inactive}(当前 {C:chips}+#2#{C:inactive} 筹码)"
                }
            },
            j_sdm_joker_voucher = {
                name = "优惠券小丑",
                text = {
                    "每有一张{C:attention}优惠券{}",
                    "{X:mult,C:white}X#1#{} 倍率 ",
                    "{C:inactive}(当前 {X:mult,C:white}X#2#{C:inactive} 倍率)"
                }
            },
            j_sdm_free_pass = {
                name = "免费通行证",
                text = {
                    "如果 {C:attention}第一次出牌{} 只有一张牌，增加一出牌次数",
                    "如果 {C:attention}第一次弃牌{} 只有一张牌，增加一弃牌次数",
                }
            },
            j_sdm_legionary_joker = {
                name = "军团小丑",
                text = {
                    "每张 {C:spades}黑桃{} 和 {C:diamonds}方块{}",
                    "在手牌中",
                    "给予{C:mult}+#1#{} 倍率",
                },
            },
            j_sdm_archibald = {
                name = "Archibald",
                text = {
                    " {C:attention}Boss 盲注{}之后, 随机复制",
                    "一个小丑的 {C:dark_edition}负片{}版本 copy of a",
                    "结束商店之后",
                    "{C:inactive}(不会复制自身)",
                    "{C:inactive}(当前 {C:attention}#1#{C:inactive}#2#{C:inactive})"
                }
            },
            j_sdm_0 = { -- Steamodded thinks "sdm" overwrites the prefix
                name = "SDM_0",
                text = {
                    "每摧毁一张 {C:attention}2{}",
                    "这张牌 {C:dark_edition}+#1#{} 小丑槽",
                    "{C:inactive}(当前 {C:dark_edition}+#2# {C:inactive}Joker #3#)"
                }
            },
        },
        Back = {
            b_sdm_0_s = {
                name = "SDM_0's 牌组",
                text = {
                    "以{C:attention}#1#{} 张随机的 {C:eternal}永恒 非-{C:legendary}传奇",
                    "{C:attention}SDM_0's Stuff{} 小丑开始",
                },
            },
            b_sdm_bazaar = {
                name = "巴扎牌组",
                text = {
                    "以{C:attention}#1#{} 张随机的 {C:attention}SDM_0's Stuff{}",
                    "消耗牌开始",
                },
            },
            b_sdm_sandbox = {
                name = "沙箱牌组",
                text = {
                    "{C:attention}+#1#{}小丑槽",
                    "{C:red}+#2#{} 底注才能赢",
                }
            },
            b_sdm_lucky_7 = {
                name = "幸运 7 牌组",
                text = {
                    "以一张",
                    " {C:eternal}永恒{} {C:attention,T:j_sdm_lucky_joker}幸运小丑{}开始",
                    "每张 {C:attention}7{} 都是 {C:attention,T:m_lucky}幸运牌{} ",
                }
            },
            b_sdm_dna = {
                name = "DNA 牌组",
                text = {
                    "{C:attention}1{} playing card from",
                    "{C:attention}winning poker hand{}",
                    "is {C:blue}dupli{C:red}cated{}",
                }
            },
            b_sdm_hieroglyph = {
                name = "象形文字牌组",
                text = {
                    "{C:spectral}幻灵牌{} 可能",
                    "出现在商店中,",
                    "以一张 {C:spectral,T:c_ankh}生命十字章{} 开始",
                }
            },
            b_sdm_xxl = {
                name = "XXL 牌组",
                text = {
                    "{C:attention}两倍{}",
                    "牌组大小",
                }
            },
            b_sdm_hoarder = {
                name = "囤积者牌组",
                text = {
                    "每回合结束后:",
                    "每剩余一次弃牌获得{C:money}$#1#{}",
                    "剩余的 {C:blue}出牌{} 不在获得钱",
                    "回合结束后不在获得{C:attention}利息{} "
                }
            },
            b_sdm_deck_of_stuff = {
                name = "SDM_0牌组++",
                text = {
                    "获得每个",
                    "{C:attention}SDM_0's Stuff{}",
                    "的牌组效果"
                }
            },
        },
        Tarot = {
            c_sdm_sphinx = {
                name = "斯芬克斯",
                text = {
                    "添加 {C:dark_edition}闪箔{}, {C:dark_edition}多彩{},",
                    "或 {C:dark_edition}镭射{} 版本到",
                    "一张随机 {C:attention}手牌{}上"
                }
            }
        },
        Spectral = {
            c_sdm_sacrifice = {
                name = "祭祀",
                text = {
                    "{C:attention}+#1#{} 小丑槽,",
                    "{C:red}-#2#{} 出牌次数,",
                    "{C:red}-#3#{} 弃牌"
                }
            },
            c_sdm_morph = {
                name = "幻影",
                text = {
                    "和另外一个交换 {C:attention}#1#{} #2#",
                }
            }
        },
        Other = {
            space_jokers = {
                name = "Space Jokers",
                text = {
                    "Astronomer, Constellation,",
                    "Rocket, Satellite,",
                    "Space Joker, Supernova etc.",
                }
            },
            modified_card = {
                name = "改版",
                text = {
                    "增强, 封蜡,",
                    "版本"
                }
            },
            chaos_exceptions = {
                name = "异常",
                text = {
                    "回合分数, 目标分数,",
                    "手牌等级,  描述",
                }
            },
            perishable_no_debuff = {
                name = "易腐",
                text = {
                    "{C:attention}#1#{} 回合后",
                    "失效",
                }
            },
            resources = {
                name = "资源",
                text = {
                    "出牌, 弃牌, 金币, 手牌数量,",
                    "小丑槽位, 消耗槽位"
                }
            }
        },
        Sleeve = {
            sleeve_sdm_0_s = {
                name = "SDM_0's 牌套",
                text = {
                    "以{C:attention}#1#{} 张随机的 {C:eternal}永恒 非-{C:legendary}传奇",
                    "{C:attention}SDM_0's Stuff{} 小丑开始",
                },
            },
            sleeve_sdm_bazaar = {
                name = "巴扎牌套",
                text = {
                    "以{C:attention}#1#{} 张随机的 {C:attention}SDM_0's Stuff{}",
                    "消耗牌开始",
                },
            },
            sleeve_sdm_sandbox = {
                name = "沙箱牌套",
                text = {
                    "{C:attention}+#1#{}小丑槽",
                    "{C:red}+#2#{} 底注才能赢",
                }
            },
            sleeve_sdm_lucky_7 = {
                name = "幸运 7 牌套",
                text = {
                    "以一张",
                    " {C:eternal}永恒{} {C:attention,T:j_sdm_lucky_joker}幸运小丑{}开始",
                    "每张 {C:attention}7{} 都是 {C:attention,T:m_lucky}幸运牌{} ",
                }
            },
            sleeve_sdm_lucky_7_alt = {
                name = "幸运 7 牌套中套",
                text = {
                    "{C:attention,T:j_sdm_lucky_joker}Lucky Joker{} is {C:dark_edition}Negative{}",
                    "Doubles all {C:attention}listed",
                    "{C:green,E:1,S:1.1}probabilities",
                }
            },
            sleeve_sdm_dna = {
                name = "DNA 牌套",
                text = {
                    "{C:attention}1{} playing card from",
                    "{C:attention}winning poker hand{}",
                    "is {C:blue}dupli{C:red}cated{}",
                }
            },
            sleeve_sdm_hieroglyph = {
                name = "象形文字牌套",
                text = {
                    "{C:spectral}幻灵牌{} 可能",
                    "出现在商店中,",
                    "以一张 {C:spectral,T:c_ankh}生命十字章{} 开始",
                }
            },
            sleeve_sdm_hieroglyph_ghost = {
                name = "象形文字牌套",
                text = {
                    "{C:spectral}幻灵牌{} ",
                    "出现在商店中的概率双倍,",
                    "以一张 {C:spectral,T:c_ankh}生命十字章{} 开始",
                }
            },
            sleeve_sdm_hieroglyph_alt = {
                name = "象形文字牌套中套",
                text = {
                    "{C:spectral}幻灵牌{} ",
                    "出现在商店中的概率双倍,",
                    "{C:spectral}幻灵包{} 将有额外 {C:attention}#1#{}个选择",
                }
            },
            sleeve_sdm_xxl = {
                name = "XXL Sleeve",
                text = {
                    "{C:attention}两倍{}",
                    "牌组大小",
                }
            },
            sleeve_sdm_hoarder = {
                name = "囤积者牌套",
                text = {
                    "每回合结束后:",
                    "每剩余一次弃牌获得{C:money}$#1#{}",
                    "剩余的 {C:blue}出牌{} 不在获得钱",
                    "回合结束后不在获得{C:attention}利息{} "
                }
            },
            sleeve_sdm_hoarder_alt = {
                name = "囤积者牌套中套",
                text = {
                    "每回合结束后:",
                    "每剩余一次弃牌获得{C:money}$#1#{}",
                    "回合结束后不在获得{C:attention}利息{} "
                }
            }
        },
    },
    misc = {
        dictionary = {
            k_halved_ex = "减半!",
            k_shared_ex = "共享!",
        },
        v_dictionary = {
            a_hand = "+#1# 出牌次数",
            a_hand_minus = "-#1# 出牌次数",
            a_discard = "+#1# 弃牌次数",
            a_discard_minus = "-#1# 弃牌次数",
            a_joker_slot = "+#1# 小丑槽",
            a_joker_slot_minus = "-#1# 小丑槽",
            a_consumable_slot = "+#1# 消耗槽位",
            a_consumable_slot_minus = "-#1# 消耗槽位",
        },
        v_text = {
            ch_c_no_shop_planets = {
                "{C:planet}星球牌{} 不在出现在 {C:attention}商店中"
            }
        },
    },
}