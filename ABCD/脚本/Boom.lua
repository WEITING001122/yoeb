package.path = GetPackagePath();
local loadArr={"自动任务"};
for i=1,#loadArr
do
	package.loaded[loadArr[i]]=nil;
	require(loadArr[i]);
end


--SetTaskShengJiData(taskClassName,taskIndex,shengjiMapClassName,needLv)--设置跑图时升级 taskClassName=任务类名 taskIndex=任务索引 nil为忽略，只匹配任务类名 shengjiMapClassName=要刷的地图类名 needLv=升级到多少级为止
SetTaskShengJiData("a5q7",nil,"1_5_5",43)--做 到奇塔弗的受难 的时候刷纯净圣地到50级再进行下一任务
SetTaskShengJiData("a9q3",nil,"2_9_1",60)--滲血水道


--指定职业  野蛮人、女巫、贵族、游侠、决斗者、暗影、圣堂武僧、
g_newRoleJob="游侠"
--升华职业 勇士、暴徒、酋长、侠客、锐眼、追猎者、秘术家、元素使、召唤师、处刑者、卫士、冠军、判官、圣宗、守护者、暗影大师、欺诈师、破坏者、升华使徒、
g_shengHuaJob="追猎者"
--SetUseWeapon(str)--设置使用的武器 支持(盾}箭袋}爪}匕首|法杖|单手剑|细剑|单手斧|单手锤|符文匕首|短杖|战杖|弓|长杖|双手剑|双手斧|双手锤) 如果需要用两样中间用|分开
SetUseWeapon("弓|箭袋")

--SetUseZhuangBeiTypeData(typeStr,pos)--设置自己用的装备类型 
--typeStr=类型("StrDex"为决斗者装+护甲闪避 "Str"为野蛮人装+护甲 "DexInt"为暗影装+闪避护盾 "Int"为女巫装+护盾 "Dex"为游侠装+闪避 "StrInt"为圣堂武僧装+力量护盾)
--pos=部位支持部位 支持(戒指|项链|腰带|鞋子|手套|衣服|头盔|盾|箭袋|爪}匕首|法杖|单手剑|细剑|单手斧|单手锤|符文匕首|短杖|战杖|弓|长杖|双手剑|双手斧|双手锤) 不填或nil为设置所有
SetUseZhuangBeiTypeData("Dex|StrDex","衣服")
SetUseZhuangBeiTypeData("Int|DexInt","头盔")
SetUseZhuangBeiTypeData("Int|StrInt","手套")
SetUseZhuangBeiTypeData("Dex|StrDex","鞋子")
SetUseZhuangBeiTypeData("Dex|StrDex","弓")
SetUseZhuangBeiTypeData("Dex|StrDex","箭袋")

--設定商店要買的技能
--SetShopNotBuyGoods("電流箭矢","Metadata/Items/Gems/SkillGemShrapnelShot")
SetShopNotBuyGoods("活力","Metadata/Items/Gems/SkillGemVitality")



--SetNeedSkillLineData(val,str,invalidLv)--设置换技能宝石数据 
--val=每块宝石的比重值
--str="宝石1,宝石1类名|宝石2,宝石2类名|宝石3,宝石3类名" 名与类名之间用,隔开 宝石之间用|隔开
--invalidLv=失效等级 超过这个等级就不会需要他了
--SetNeedSkillLineData(val,str,invalidLv,pos)--设置换技能宝石数据 
--val=每块宝石的比重值
--str="宝石1,宝石1类名|宝石2,宝石2类名|宝石3,宝石3类名" 名与类名之间用,隔开 宝石之间用|隔开
--invalidLv=失效等级 超过这个等级就不会需要他了
--pos=指定位置 nil为自动选择 2为衣服 3为主武器 4为副武器 5为头盔 6为项链 7为左戒指 8为右戒指 9为护手 10为鞋子 11为腰带
--nType 有效场景 nil为无论何时都有效 0为没在刷异界才有效 1为只在刷异界才有效

--剧情连法
SetNeedSkillLineData(10,"燃燒箭矢,Metadata/Items/Gems/SkillGemBurningArrow|氣勢輔助,Metadata/Items/Gems/SupportGemOnslaught",2,nil,3,0)--絕望岩灘拾取
SetNeedSkillLineData(95,"電流箭矢,Metadata/Items/Gems/SkillGemShrapnelShot|氣勢輔助,Metadata/Items/Gems/SupportGemOnslaught|附加冰冷傷害輔助,Metadata/Items/Gems/SupportGemAddedColdDamage",28,nil,3,0)
SetNeedSkillLineData(100,"腐蝕毒雨,Metadata/Items/Gems/SkillGemToxicRain|效能輔助,Metadata/Items/Gems/SupportGemEfficacy|虛空操縱輔助,Metadata/Items/Gems/SupportGemVoidManipulation|猛毒投射物輔助,Metadata/Items/Gems/SupportGemPhysicalProjectileAttackDamage|極速苦痛輔助,Metadata/Items/Gems/SupportGemRapidDecay|幻影射手輔助,Metadata/Items/Gems/SupportGemMirageArcher",nil,2,0)
SetNeedSkillLineData(90,"惡意,Metadata/Items/Gems/SkillGemDamageOverTimeAura|召喚探測機獸,Metadata/Items/Gems/SkillGemSummonSkitterbots|寒霜爆,Metadata/Items/Gems/SkillGemFrostBomb",nil,nil,0)
SetNeedSkillLineData(65,"腐蝕箭矢,Metadata/Items/Gems/SkillGemPoisonArrow|狂怒,	Metadata/Items/Gems/SkillGemFrenzy|活栓輔助,Metadata/Items/Gems/SupportGemLifetap|撲殺輔助,Metadata/Items/Gems/SupportGemCullingStrike",nil,nil,0)
SetNeedSkillLineData(60,"霜漣之瞬,Metadata/Items/Gems/SkillGemFrostblink|絕望,Metadata/Items/Gems/SkillGemVulnerability|活栓輔助,Metadata/Items/Gems/SupportGemLifetap|石化之血,Metadata/Items/Gems/SkillGemPetrifiedBlood",nil,nil,0)
SetNeedSkillLineData(70,"狙擊者印記,Metadata/Items/Gems/SkillGemProjectileWeakness|熔岩護盾,Metadata/Items/Gems/SkillGemMoltenShell|受傷時施放輔助,Metadata/Items/Gems/SupportGemCastOnDamageTaken",nil,nil,0)

--主線孔色
--SetZhengTiColorVarData(2,0,3,0,0,50,false)
--SetZhengTiColorVarData(2,2,2,1,0,100,true)
--SetZhengTiColorVarData(2,2,3,1,0,200,true)

--SetZhengTiColorVarData(3,1,3,0,0,5,true)
--SetZhengTiColorVarData(3,1,4,0,0,100,true)
--SetZhengTiColorVarData(3,1,5,0,0,150,true)

--SetZhengTiColorVarData(4,1,0,0,0,50,false)
--SetZhengTiColorVarData(4,2,0,0,0,100,false)
--SetZhengTiColorVarData(4,2,0,1,0,150,false)

--SetZhengTiColorVarData(5,0,1,1,0,50,false)
--SetZhengTiColorVarData(5,0,1,1,0,100,false)
--SetZhengTiColorVarData(5,0,1,2,0,150,false)
--SetZhengTiColorVarData(5,0,1,3,0,200,false)

--SetZhengTiColorVarData(9,0,0,1,0,50,false)
--SetZhengTiColorVarData(9,1,0,1,0,100,true)
--SetZhengTiColorVarData(9,1,0,2,0,200,true)
--SetZhengTiColorVarData(9,1,0,3,0,250,false)

--SetZhengTiColorVarData(10,1,0,0,0,50,false)
--SetZhengTiColorVarData(10,1,0,1,0,100,true)
--SetZhengTiColorVarData(10,1,0,2,0,200,true)
--SetZhengTiColorVarData(10,1,0,3,0,250,true)





AddShengJiZhuangBeiGoodsData("点金石","Metadata/Items/Currency/CurrencyUpgradeToRare",0,2,0)--主线生效 超过50级就用点金点白色装备
AddShengJiZhuangBeiGoodsData("束縛石","Metadata/Items/Currency/CurrencyUpgradeToRareAndSetSockets",0,28,0)--主线生效 超过50级就用点金点白色装备


--AddAttackSkillData(name,className,noLine)--添加攻击技能 name=技能名 className=技能类名 noLine=不在直线就能攻击 挑选攻击技能会从上到下寻找，要把厉害的技能加在前面


--AddAttackSkillData("腐蝕毒雨","Toxic_Rain",true)
--AddAttackSkillData("電流箭矢","Galvanic_Arrow",true,nil,"0")
--AddAttackSkillData("燃燒箭矢","Burning_Arrow",true)
--AddAttackSkillData("狂怒","Frenzy",true)
--AddAttackSkillData("普通攻击","melee")

--爆炸圖騰專用
AddAttackSkillData("nil","totem_consume_corpse",true,5,nil)
SetSkillLimitMaxLv("nil","Metadata/Items/Gems/SkillGemVitality",1)--活力光環不升級
SetSkillLimitMaxLv("nil","Metadata/Items/Gems/SupportGemLifetap",1)--活栓不升級


--SetUseTuTengMonsterShuXingCnt(monColor,nType)--设置对哪些怪物使用图腾 默认会对所有怪物使用图腾
--monColor 字符串型 对什么颜色的怪物使用 白怪为0 蓝怪为1 金怪为2 橙怪为3 (可支持多个，中间用|隔开) 填nil 或"0|1|2|3"为所有
--nType 有效场景 nil为无论何时都有效 0为没在刷异界才有效 1为只在刷异界才有效

--SetUseTuTengMonsterShuXingCnt(1,0)--剧情时对所有怪物用图腾











--g_notShuaBaiPao=true

--SetYiJieZhaoHuanLingTiData("1_5_2","驱刑者","Metadata/Monsters/TemplarSlaveDriver/TemplarSlaveDriver")

--SetNeedZhaoHuanMonster(name,className,val)--设置需要召唤的灵体会自动选择比重大的召唤 name=怪物名 className=怪物类名 val=比重
--SetNeedZhaoHuanMonster("驱刑者","Metadata/Monsters/TemplarSlaveDriver/TemplarSlaveDriver",20)
--SetNeedZhaoHuanMonster("太阳军卫","Metadata/Monsters/HolyFireElemental/HolyFireElementalSolarisBeam",5)
--SetNeedZhaoHuanMonster("冰哨带","Metadata/Monsters/Guardians/GuardianFire_Blue",4)--冰哨带
--SetNeedZhaoHuanMonster("火炎哨带","Metadata/Monsters/Guardians/GuardianFire",3)
--SetNeedZhaoHuanMonster("诡异行者","Metadata/Monsters/WickerMan/WickerMan",2)
--SetNeedZhaoHuanMonster("恶魔奴隶","Metadata/Monster/CageSpider/CageSpider2",1)


--SetSkillLimitMaxLv(name,className,maxLv)--设置技能宝石最大等级 name=技能宝石物品名 className=技能宝石物品类名 maxLv=限制的最大等级

SetSkillLimitMaxLv("暗影迷蹤","Metadata/Items/Gems/SkillGemPhaseRun",1)--暗影迷蹤不升級
--SetSkillLimitMaxLv("號召","nil",1)--暗影迷蹤不升級
SetSkillLimitMaxLv("褻瀆","Metadata/Items/Gems/SkillGemDesecrate",1)--褻瀆不升級
SetSkillLimitMaxLv("受傷時施放輔助","Metadata/Items/Gems/SupportGemCastOnDamageTaken",1)--暗影迷蹤不升級
SetSkillLimitMaxLv("虛無玉","Metadata/Items/Gems/SkillGemVoidSphere",1)--暗影迷蹤不升級
--SetSkillLimitMaxLv("脆弱","Metadata/Items/Gems/SkillGemNewVulnerability",1)--暗影迷蹤不升級



---------------------------------------换装设置
--SetAtuoChangeEquipData(job,pos,name,val,yijie) 计算方式如下 定义过的属性值乘以比重值  哪样装备高就会用哪样
--job 职业 支持(暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧) 可填多个，中间用|隔开
--pos 部位 支持(戒指|项链|腰带|鞋子|手套|衣服|头盔|盾|箭袋|爪}匕首|法杖|单手剑|细剑|单手斧|单手锤|符文匕首|短杖|战杖|弓|长杖|双手剑|双手斧|双手锤) 可填多个，中间用|隔开
--name 属性名 支持游戏内的装备属性名 还有其他的自定义名(物理伤害、护甲、护盾、闪避、连洞、总洞)
--val 比重值 支持小数
--nType 换装类型 0或nil或不填为一直有效 1为跑图时才有效 2为异界时才有效
--SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","鞋子","movement_velocity_+%",0.5)--移动速度 +%
--SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","鞋子","base_movement_velocity_+%",0.5)--基础移动速度 +%


SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","戒指|项链|腰带|鞋子|手套|衣服|头盔","base_resist_all_elements_%",0.3,1)--全元素抗性 %
SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","戒指|项链|腰带|鞋子|手套|衣服|头盔","fire_and_cold_damage_resistance_%",0.25,1)--火焰与冰霜伤害抗性 %
SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","戒指|项链|腰带|鞋子|手套|衣服|头盔","fire_and_lightning_damage_resistance_%",0.25,1)--火焰与闪电伤害抗性 %
SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","戒指|项链|腰带|鞋子|手套|衣服|头盔","cold_and_lightning_damage_resistance_%",0.15,1)--冰霜与闪电伤害抗性 %
SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","戒指|项链|腰带|鞋子|手套|衣服|头盔","base_fire_damage_resistance_%",0.2,1)--基础火焰伤害抗性 %
SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","戒指|项链|腰带|鞋子|手套|衣服|头盔","base_cold_damage_resistance_%",0.11,1)--基础冰霜伤害抗性 %
SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","戒指|项链|腰带|鞋子|手套|衣服|头盔","base_lightning_damage_resistance_%",0.1,1)--基础闪电伤害抗性 %
SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","戒指|项链|腰带|鞋子|手套|衣服|头盔","fire_damage_resistance_%",0.2,1)--火焰抗性 %
SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","戒指|项链|腰带|鞋子|手套|衣服|头盔","cold_damage_resistance_%",0.11,1)--冰霜抗性 %
SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","戒指|项链|腰带|鞋子|手套|衣服|头盔","lightning_damage_resistance_%",0.1,1)--闪电抗性 %

SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","腰带","base_maximum_life",0.1)--加基礎最大生命
SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","箭袋","攻击速度",0.1)--加攻擊速度
SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","弓","攻击速度",0.5)--加攻擊速度
--SetAtuoChangeEquipData("女巫|圣堂武僧","戒指|项链","base_item_found_rarity_+%",0.1,2)--異界基礎物品掉落品質 +%

SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","戒指|项链|腰带","fire_and_cold_damage_resistance_%",0.25,1)--火焰与冰霜伤害抗性 %
SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","戒指|项链|腰带","fire_and_lightning_damage_resistance_%",0.25,1)--火焰与闪电伤害抗性 %
SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","戒指|项链|腰带","cold_and_lightning_damage_resistance_%",0.25,1)--冰霜与闪电伤害抗性 %
SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","戒指|项链|腰带","fire_damage_resistance_%",0.2,1)--火焰抗性 %
SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","戒指|项链|腰带","cold_damage_resistance_%",0.2,1)--冰霜抗性 %
SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","戒指|项链|腰带","lightning_damage_resistance_%",0.2,1)--闪电抗性 %




--SetTaskMiGongData(taskClassName,taskIndex,migongIndex)--设置跑图时迷宫 taskClassName=任务类名 taskIndex=任务索引 nil为忽略，只匹配任务类名 migongIndex为迷宫索引填 1=第一次迷宫 2=第二次迷宫

--SetTaskMiGongData("a5q2",nil,1)--在复活的梦魇这个任务时 做迷宫1
--SetTaskMiGongData("a9q1",nil,2)--在复活的梦魇这个任务时 做迷宫2
--SetTaskMiGongDataByLv(90,3)

--設定藥水
--SetNeedFlaskData(1,"生命药剂","止血之,FlaskRemovesBleeding1",60,"永恆生命藥劑","Metadata/Items/Flasks/FlaskLife12")
--SetNeedFlaskData(2,"生命药剂","沸騰的,FlaskFullInstantRecovery1",60,"不朽生命藥劑","Metadata/Items/Flasks/FlaskLife11")
--SetNeedFlaskData(3,"水银药剂","腎上腺素之,FlaskBuffMovementSpeedWhileHealing",5)
--SetNeedFlaskData(4,"紫晶药剂","腎上腺素之,FlaskBuffMovementSpeedWhileHealing",5)
--SetNeedFlaskData(5,"魔力药剂","耐久的,FlaskEffectNotRemovedOnFullMana1",50,"永恆魔力藥劑","Metadata/Items/Flasks/FlaskMana12")

---------------------------------------高级换装
--SetGaoJiChangeEquipData(job,name,className,wordName,wordClassName,lineSocketCnt,goodsLv) 高级换装设置 设置换指定的装备
--job 职业 支持(暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧) 可填多个，中间用|隔开
--name 物品名
--className 物品类名
--wordName 指定词缀
--wordClassName 指定词缀类名
--lineSocketCnt 需要连的洞数量 比如设置4 他就会打到4连为止 nil为忽略
--goodsLv 某些要打洞需要物品等级够了才能打那么多洞，如果定义了打洞数量 需要填这里 2洞要大于等于1级 3洞要大于等于15级 4洞要大于等于28级 5洞要大于等于35级 6洞要大于等于50级
--flaskPos 药剂部位 装备的话可以忽略，药剂的时候才需要用 nil为忽略 1 2 3 4 5 对应5个药剂部位

--SetGaoJiHuanZhuangData("女巫","坚毅塔盾","Metadata/Items/Armours/Shields/ShieldStr17","狮眼的荣耀之盾","Lioneye's Remorse",3,15)
--SetGaoJiHuanZhuangData("女巫","大型复合药剂","Metadata/Items/Flasks/FlaskHybrid3","宝视精华","Divination Distillate",nil,nil,2)
--SetGaoJiHuanZhuangData("圣堂武僧","潛能之戒","Metadata/Items/Rings/Ring15","褻瀆之替","Profane Proxy",nil,nil,nil,7)
--SetGaoJiHuanZhuangData("圣堂武僧","堅岩藥劑","Metadata/Items/Flasks/FlaskUtility5","魯米的靈藥","Rumi's Concoction",nil,nil,5)
--SetGaoJiHuanZhuangData("圣堂武僧","海玉護身符","Metadata/Items/Amulets/Amulet5","拉茲瓦的靈石","Stone of Lazhwar")
--SetGaoJiHuanZhuangData("圣堂武僧","合板鳶盾","Metadata/Items/Armours/Shields/ShieldStrInt8","維多里奧的貢獻","Victario's Charity",3,15,nil,4)
--SetGaoJiHuanZhuangData("圣堂武僧","鍛鐵戒指","Metadata/Items/Rings/Ring1","英靈寶環","Le Heup of All",nil,nil,nil,7,3,1)
--SetGaoJiHuanZhuangData("圣堂武僧","大型複合藥劑","Metadata/Items/Flasks/FlaskHybrid3","寶視精華","Divination Distillate",nil,nil,5)
--SetGaoJiHuanZhuangData("圣堂武僧","裂臟鉤","Metadata/Items/Weapons/OneHandWeapons/Claws/Claw12",nil,nil,3,15,nil,3,0,1)
--SetGaoJiHuanZhuangData("决斗者","強化巨盔","Metadata/Items/Armours/Helmets/HelmetStrInt7","吉爾菲的榮光","Geofri's Crest",4,28)
--SetGaoJiHuanZhuangData("决斗者","钢影护手","Metadata/Items/Armours/Gloves/GlovesStrDex4","富贵之运","Aurseize",4,28)
--SetGaoJiHuanZhuangData("决斗者","銅鍛魔盾","Metadata/Items/Armours/Shields/ShieldInt6","山特立的回應","Sentari's Answer",3,15)
--SetGaoJiHuanZhuangData("决斗者","金光戒指","Metadata/Items/Rings/Ring4","貪慾之記","Andvarius",nil,nil,nil,8)
--SetGaoJiHuanZhuangData("决斗者","重革腰帶","Metadata/Items/Belts/Belt4","畢斯寇繫帶","Bisco's Leash",nil,nil,nil,nil,nil,1,nil,nil)
--SetGaoJiHuanZhuangData("决斗者","帝金護身符","Metadata/Items/Amulets/Amulet6","苦行","The Ascetic")
--SetGaoJiHuanZhuangData("决斗者","皇室堅盔","Metadata/Items/Armours/Helmets/HelmetStr10",nil,nil,4,28,nil,5,0,1,"帝金護身符","Metadata/Items/Amulets/Amulet6","苦行","The Ascetic")
--SetGaoJiHuanZhuangData("决斗者","砂影短靴","Metadata/Items/Armours/Boots/BootsDex4","龍炎足跡","Goldwyrm",4,28,nil,nil,nil,1,nil,nil)
--SetGaoJiHuanZhuangData("决斗者","水銀藥劑","Metadata/Items/Flasks/FlaskUtility6",nil,nil,nil,15,3,nil,1)
--SetGaoJiHuanZhuangData("决斗者","羊毛手套","Metadata/Items/Armours/Gloves/GlovesInt1","猎宝者的护手","Sadima's Touch",4,28)
--SetGaoJiHuanZhuangData("女巫","朽木圓盾","Metadata/Items/Armours/Shields/ShieldStrDex1","暴雨之舵","Wheel of the Stormsail",3,15)
--SetGaoJiHuanZhuangData("决斗者","強化巨盔","Metadata/Items/Armours/Helmets/HelmetStrInt7","吉爾菲的榮光","Geofri's Crest",4,28)
--SetGaoJiHuanZhuangData("女巫","金光戒指","Metadata/Items/Rings/Ring4","貪慾之記","Andvarius",nil,nil,nil,8)
--SetGaoJiHuanZhuangData("女巫","金光戒指","Metadata/Items/Rings/Ring4","貪慾之記","Andvarius",nil,nil,nil,7)
--SetGaoJiHuanZhuangData("女巫","喚骨頭盔","Metadata/Items/Armours/Helmets/HelmetAtlas1",nil,nil,4,28,nil,5,1,1)
--SetGaoJiHuanZhuangData("女巫","貴族戰爪","Metadata/Items/Weapons/OneHandWeapons/Claws/Claw14",nil,nil,4,28,nil,3,0,1)
--SetGaoJiHuanZhuangData("女巫","钢影护手","Metadata/Items/Armours/Gloves/GlovesStrDex4","富贵之运","Aurseize",4,28,nil,nil,nil,1)
--SetGaoJiHuanZhuangData("女巫","金光戒指","Metadata/Items/Rings/Ring4",nil,nil,nil,nil,nil,8,1,1)
--SetGaoJiHuanZhuangData("圣堂武僧","金光戒指","Metadata/Items/Rings/Ring4","貪慾之記","Andvarius",nil,nil,nil,7,nil,1)
--SetGaoJiHuanZhuangData("圣堂武僧","銅鍛魔盾","Metadata/Items/Armours/Shields/ShieldInt6","山特立的回應","Sentari's Answer",3,15,nil,nil,nil,1)
--SetGaoJiHuanZhuangData("圣堂武僧","堅岩藥劑","Metadata/Items/Flasks/FlaskUtility5","魯米的靈藥","Rumi's Concoction",nil,nil,5)
--SetGaoJiHuanZhuangData("圣堂武僧","魔性法杖","Metadata/Items/Weapons/OneHandWeapons/Wands/Wand13","泣月","Moonsorrow",3,15,nil,3)
--SetGaoJiHuanZhuangData("圣堂武僧","金光戒指","Metadata/Items/Rings/Ring4","貪慾之記","Andvarius",nil,nil,nil,7,nil,1)
--SetGaoJiHuanZhuangData("圣堂武僧","金光戒指","Metadata/Items/Rings/Ring4","高尚之人","The Highwayman",nil,nil,nil,8,nil,1)

SetGaoJiHuanZhuangData("游侠","简易之袍","Metadata/Items/Armours/BodyArmours/BodyInt1","无尽之衣","Tabula Rasa")--衣服
SetGaoJiHuanZhuangData("游侠","短弓","Metadata/Items/Weapons/TwoHandWeapons/Bows/Bow2","驟雨之弦","Quill Rain")--武器
--SetGaoJiHuanZhuangData("游侠","裂臟鉤","Metadata/Items/Weapons/OneHandWeapons/Claws/Claw12","超越壁壘","Advancing Fortress",3,15,nil,3)
--SetGaoJiHuanZhuangData("游侠","饰布腰带","Metadata/Items/Belts/Belt5","普兰德斯之印","Perandus Blazon",nil,nil,nil,nil,nil,1)
--SetGaoJiHuanZhuangData("游侠","強化巨盔","Metadata/Items/Armours/Helmets/HelmetStrInt7","吉爾菲的榮光","Geofri's Crest",4,28,nil,nil,nil,1)
--SetGaoJiHuanZhuangData("游侠","海玉護身符","Metadata/Items/Amulets/Amulet5","拉茲瓦的靈石","Stone of Lazhwar",nil,nil,nil,nil,nil,1)
--SetGaoJiHuanZhuangData("游侠","三相戒指","Metadata/Items/Rings/Ring8","竊罪","Thief's Torment",nil,nil,nil,7)
--SetGaoJiHuanZhuangData("游侠","鐵影長靴","Metadata/Items/Armours/Boots/BootsStrDex2","迎暮","Dusktoe",4,28,nil,10)--鞋子
--SetGaoJiHuanZhuangData("游侠","羊毛手套","Metadata/Items/Armours/Gloves/GlovesInt1","猎宝者的护手","Sadima's Touch",4,28,nil,nil,nil,1)
--SetGaoJiHuanZhuangData("游侠","堅岩藥劑","Metadata/Items/Flasks/FlaskUtility5","魯米的靈藥","Rumi's Concoction",nil,nil,4)

--SetNeedAddTianFu(tfStr)--设置天赋加点 tfStr=config.ini里设置好的天赋 如"女巫=name1-className1|name2-className2|

--SetNeedAddTianFu("游侠=attack_speed568-投射物傷害和命中|accuracy581-投射物傷害與攻擊速度|projectile_damage592-投射物傷害|projectile_damage593-投射物傷害|projectile_damage1485-投射物傷害|perfect_aim591-彈道學|mana1479-魔力和藥劑效果|mana1478-原始精神|reduced_mana1480-魔力和藥劑效果|finesse993-嫻熟|dual_wield_damage2125-移動速度和法術壓抑|attack_move_speed_notable1792-疾步|stun_recovery544-生命和避免暈眩|avoid_stun553-橡木之心|bow_damage_and_speed498-弓的傷害|greater_impact638-鷹靈祝福|dexterity984-敏捷|strength821-力量|dexterity853-敏捷|dexterity850-敏捷|dexterity1988-敏捷|dexterity849-敏捷|life_flasks_1745-生命與藥劑|life_flasks1744-生命與藥劑|life_flasks_notable1747-生物學|dexterity847-敏捷|skill_duration437-技能持續時間|skill_duration1036-技能持續時間|skill_duration_notable1738-卓越的表現|mastery_duration91-持續時間專精-17852|mastery_life145-藥劑專精-29214|deaden_keystone2849-咒術災厄|dexterity995-敏捷|intelligence957-智慧|dexterity848-敏捷|strength815-力量|chaos_damage1578-混沌持續傷害加成|chaos_damage1579-混沌持續傷害加成|dagger_leech_notable2537-浪費|mastery_chaos47-混沌專精-28678|dexterity855-敏捷|life1116-閃避和生命|life1115-閃避和生命|life1117-死亡通緝|dexterity856-敏捷|savant903-盜賊工藝|might770-無畏|bow_chaos2508-弓的傷害|bow_chaos2509-弓的傷害|master_fletcher515-獵人之局|mastery_bow32-弓專精-45512|dexterity981-敏捷|agility965-和諧之體|degeneration_damage1569-持續傷害|degeneration_damage_notable1575-亂世|life703-生命|fitness617-血液抽取|dexterity851-敏捷|dexterity1989-敏捷|dexterity841-敏捷|evasion538-閃避和法術壓抑|reflexes1091-反射|reflexes706-閃避和法術壓抑|mana_mana_flask2643-生命藥劑和藥劑持續時間|mana_mana_flask_notable2644-野戰醫學|dual_wield_damage726-移動速度和法術壓抑|claws_of_the_pride489-直覺|dexterity870-敏捷|life1412-生命|life1216-生命|alchemist532-藥草學|mastery_life146-生命專精-34242|dexterity862-敏捷|totem_ranged_damage2669-圖騰傷害和放置速度|totem_ranged_damage2667-圖騰攻擊和放置速度|totem_ranged_damage2668-圖騰攻擊和放置速度|totem_ranged_notable2670-看守塔|dexterity861-敏捷|dexterity873-敏捷|dexterity858-敏捷|dexterity968-敏捷|dexterity835-敏捷|dexterity844-敏捷|dexterity840-敏捷|dexterity838-敏捷|strength1005-力量|totem_attack_damage2677-圖騰傷害和攻擊速度|totem_attack_damage2676-圖騰傷害和攻擊速度|totem_attack_notable2679-監視|totem_attack_damage2678-圖騰傷害和放置速度|totem_attack_notable2680-圓牢|totem_attack_cast_and_placement_speed1506-圖騰生命和放置速度|totem_resists_damage_physical_reduction_notable1501-鐵木|mastery_totem231-圖騰專精-27718|life1213-生命|golem's_blood1088-魔像血統 |mana_on_kill1476-魔力和光環範圍效果|mana_on_kill_notable1704-狂歡|mastery_mana171-魔力專精-64875|sword_damage_accuracy2497-法術壓抑和生命藥劑恢復|sword_damage_accuracy_notable2500_-壕溝戰|mastery_sword228-法術壓抑專精-45317|")
--SetNeedAddTianFu("圣堂武僧升华=AscendancyGuardian15-護甲和能量護盾、召喚物傷害|AscendancyGuardian14-光明聖戰|AscendancyGuardian1-護甲和能量護盾、格擋率|AscendancyGuardian4-希望壁壘|AscendancyGuardian13-護甲和能量護盾、召喚物傷害|AscendancyGuardian16-堅定聖戰")