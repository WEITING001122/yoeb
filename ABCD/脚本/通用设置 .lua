--所有通用设置 都在这里
--[[
---------------------------------------------不懂的一定要好好看这里的说明
--两个减号 -- 为注释符号 注释掉后相关的设置将不再起作用 
所用到的数据类型有以下几种 
1、逻辑型 有两种状态 true为真 false为假  大家看到带有false与true的数据 就知道他是逻辑型了
2、数值型 支持小数 负数 直接填写数字就是了 如：-1 100 0.123 这种都是数值型 不需要带引号 
3、字符串型 填写的时候前后都需要用半角引号包含起来 如："我是仓库号" 注意只有字符串型的才需要两边带引号
然后这三种类型的数据都能使用nil  nil是空值 表示忽略 ，表示什么都没有 两边不需要引号

设置中需要用到的数据 各种数据名字与类名都需要打开目录下的调试信息查看器，然后再游戏中按HOME键呼出调试窗口 
点击你要查看的数据的按钮，里面都能找到名字=name 类名=className 这里推荐大家要填写className 这样设置好的配置能够台 国 国际 三服通用
所有设置又分为两种 
1、变量型：设置项=数据 这种简单粗暴的都是变量型设置 直接改那个等于号后面的数据就是了
2、函数型：函数名(参数1,参数2) 这样的就是函数型 由函数名与若干个参数组成 参数被半角括号()套起来
]]
------------------基本设置
g_needMinimizeGame=nil	--最小化遊戲窗口 true为最小化 false或nil为不最小化
g_imBoss=false					--如果是仓库号要为true 挂机号为false
g_attackDis=150					--攻击距离
g_yiJieTimeOut=15*60			--异界地图内的超时时间 单位为秒 如果未设置就会用g_timeOut *是乘号 这里为15乘以60=15分钟
g_timeOut=25*60					--在一个地图呆的时间超过设置的 就重新开图重新 单位为秒
g_addTianFu=true				--自动按设定好的配置加天赋 true为加 nil或false为不加
g_shengJiBaoShi=true			--自动升级宝石 true为升级 nil或false为不升级
g_sellSkillGem=true				--自动卖超过40品质的技能宝石
g_notHuanYaoLv=82				--大于等于多少级只捡蓝色以上药
g_needAutoChangeEquip=true		--开启自动换装 true为换 nil或false为不换
g_needAutoSetBaoShi=true		--开启自动换宝石 true为换 nil或false为不换
g_bossGiveZhuangBei=true		--交易时仓库号给予缺少的高级换装中的装备
g_xiaoHaoGetZhuangBei=true  	--挂机号向仓库号申请领高级换装中的装备
g_notShuaBaiPao=true        --關閉刷白袍true


AddJiaoYiTime(0,8)--晚上11点到8点前会检测交易

------------------設定多少血量、魔力喝水恢復
g_addHpVal=0.7--HP
g_addMpVal=0.4--MP
------------------劇情任務偵測身上技能
AddNeedBuySkillTime(1,"a1q1")
AddNeedBuySkillTime(1,"a1q2")
AddNeedBuySkillTime(1,"a1q3")
AddNeedBuySkillTime(1,"a1q4")
AddNeedBuySkillTime(1,"a1q5")
AddNeedBuySkillTime(1,"a1q6")
AddNeedBuySkillTime(1,"a1q7")
AddNeedBuySkillTime(1,"a1q8")
AddNeedBuySkillTime(1,"a1q9")
AddNeedBuySkillTime(2,"a2q1")
AddNeedBuySkillTime(2,"a2q2")
AddNeedBuySkillTime(2,"a2q4")
AddNeedBuySkillTime(2,"a2q6")
AddNeedBuySkillTime(2,"a2q8a3")
AddNeedBuySkillTime(3,"a3q1")
AddNeedBuySkillTime(3,"a3q5")
AddNeedBuySkillTime(3,"a3q8")
AddNeedBuySkillTime(3,"a3q9")
AddNeedBuySkillTime(3,"a3q10")
AddNeedBuySkillTime(3,"a3q12")
AddNeedBuySkillTime(4,"a4q1")
AddNeedBuySkillTime(4,"a4q2")
AddNeedBuySkillTime(4,"a4q3")
AddNeedBuySkillTime(4,"a4q4")
AddNeedBuySkillTime(6,"a6q1")	
AddNeedBuySkillTime(10,"a10q2")	
AddNeedBuySkillTime(11,"a11q1")	
SetGameMode(2)

--------------------藥水位置
--SetNeedFlaskData(pos,flask)--设置药  pos=位置 1-5  flask=药 字符串型，支持以下 (生命药剂,魔力药剂,复合药剂,宝钻药剂,红玉药剂,蓝玉药剂,黄玉药剂,坚岩药剂,水银药剂,紫晶药剂,石英药剂,翠玉药剂,石化药剂,海蓝药剂,迷雾药剂,硫磺药剂,真银药剂,灰岩药剂)
--SetNeedFlaskData(1,"生命药剂","沸騰的,FlaskFullInstantRecovery1")
--SetNeedFlaskData(2,"生命药剂","沸騰的,FlaskFullInstantRecovery1")
--SetNeedFlaskData(3,"生命药剂","沸騰的,FlaskFullInstantRecovery1")
--SetNeedFlaskData(4,"水银药剂")
--SetNeedFlaskData(5,"魔力药剂")

---------------------添加不解任務
AddNotMakeTaskData("a2q5")--梦中圣地
AddNotMakeTaskData("a2q10")--白色巨兽
AddNotMakeTaskData("a3q13")--重生的渴望
AddNotMakeTaskData("a3q12")--命运之语
AddNotMakeTaskData("a6q5")--毕斯特传奇
AddNotMakeTaskData("a7q8")--古斯特的墓碑
AddNotMakeTaskData("a7q5")--银色吊坠
AddNotMakeTaskData("a8q5")--瓦斯提里之翼
AddNotMakeTaskData("a9q4")--命运之历
AddNotMakeTaskData("a10q4")--无爱旧魂
AddNotMakeTaskData("a10q5")--深海之路

--------------------昇華設定
SetTaskMiGongData("a10q1",nil,1)--在复活的梦魇这个任务时 做迷宫1
SetTaskMiGongData("a10q1",nil,2)--在复活的梦魇这个任务时 做迷宫2
SetTaskMiGongDataByLv(85,3)
----------------------SetZhongShenData(className1,className2)--眾神殿 className1=高阶数据类名 字符串型 className2=低阶数据类名 字符串型 
SetZhongShenData("Lunaris","Gruthkul")--设置月影女神之魂与绝望之母 格鲁丝克之魂

--換C設定
SetSaveIndex("项链|戒指|爪|匕首|法杖|单手剑|单手斧|单手锤|符文匕首|短杖|腰带|手套|鞋子|头盔|珠宝","3")--搬磚換C

--換C裝備組數 (按照你倉庫大小作調整)
SetChangeLimitCnt("武器|衣服|头盔|手套|鞋子",2)
SetChangeLimitCnt("腰带",4)
SetChangeLimitCnt("项链|戒指",20)

--------------------交易速度
g_jiaoYiAddSellGoodsTime=1--数字型 交易时把东西放到交易栏的等待时间 单位为毫秒 默认为250

------------------存倉分類，只影響頁名部分，在這裡不管你設定甚麼都不影響丟存
--SetSaveIndex(saveType,pageName,goodsName,goodsClassName,wordName,wordClassName,pageType)--设置存仓页面 
--saveType 物品类型 字符串型 支持以下种类 忽略填nil 多种类型以|分开 --saveType 类型 支持以下种类 多种类型以|分开 生命药剂|魔力药剂|复合药剂|通货|项链|戒指|爪|匕首|法杖|单手剑|细剑|单手斧|单手锤|符文匕首|短杖|战杖|弓|长杖|双手剑|双手斧|双手锤|主动技能宝石|辅助技能宝石|箭袋|腰带|手套|鞋子|衣服|头盔|盾|小型圣物|中型圣物|大型圣物|可堆叠通货|任务物品|短杖|功能药剂|暴击药剂|异界地图||鱼竿|地图碎片|藏身处装饰|商城物品|珠宝|命运卡|迷宫物品|迷宫饰品|异界迷宫物品|裂隙之石|赛季石|神灵之魂|传奇装备碎片|深渊珠宝|穿越通货|地心探索：可镶嵌的通货|孕育石|碎片|破碎之心|符文匕首|战杖|地心探索可堆叠可插入通货|
--pageName 仓库页面名 字符串型 可填多个，中间用|隔开
--goodsName 物品名 字符串型 忽略填nil
--goodsClassName 物品类名 字符串型 忽略填nil
--wordName 词缀名 字符串型 忽略填nil
--wordClassName 词缀类名 字符串型 忽略填nil
--pageType 仓库页类型 数值型 不填或nil或0 为普通仓库 1为通货页 2为命运卡页  3为碎片页



--存倉邏輯
--三無帳號設定5(通貨)2(地圖)3(搬磚)4(雜物、劫盜、星團)

--存倉大項
SetSaveIndex("主动技能宝石|辅助技能宝石","4")
SetSaveIndex("通货|可堆叠通货","1")
SetSaveIndex("异界地图","2")
SetSaveIndex("命运卡","4")
SetSaveIndex("碎片|地图碎片","4")
SetSaveIndex("项链|戒指|匕首|法杖|单手剑|细剑|单手斧|单手锤|符文匕首|短杖|战杖|弓|长杖|双手剑|双手斧|双手锤|腰带|手套|鞋子|头盔|衣服|盾|箭袋|爪","3|4")
SetSaveIndex("主动技能宝石|辅助技能宝石|珠宝","4")
SetSaveIndex("生命药剂|魔力药剂|复合药剂|功能药剂","4")
SetSaveIndex("蓝图","4")
SetSaveIndex("契約","4")





--存倉細項

--通貨區
--通貨存取頁名為「1」
--SetSaveIndex(nil,"1","混沌石","Metadata/Items/Currency/CurrencyRerollRare")
--SetSaveIndex(nil,"1","隱匿混沌石","Metadata/Items/Currency/CurrencyRerollRareVeiled")
--SetSaveIndex(nil,"1","卡蘭德的魔鏡","Metadata/Items/Currency/CurrencyDuplicate")
--SetSaveIndex(nil,"1","點金石","Metadata/Items/Currency/CurrencyUpgradeToRare")
--SetSaveIndex(nil,"1","機會石","Metadata/Items/Currency/CurrencyUpgradeRandomly")
--SetSaveIndex(nil,"1","後悔石","Metadata/Items/Currency/CurrencyPassiveRefund")
--SetSaveIndex(nil,"1","撤銷石","Metadata/Items/Currency/CurrencyAtlasPassiveRefund")
--SetSaveIndex(nil,"1","蛻變石","Metadata/Items/Currency/CurrencyUpgradeToMagic")
--SetSaveIndex(nil,"1","改造石","Metadata/Items/Currency/CurrencyRerollMagic")
--SetSaveIndex(nil,"1","重鑄石","Metadata/Items/Currency/CurrencyConvertToNormal")
--SetSaveIndex(nil,"1","崇高石","Metadata/Items/Currency/CurrencyAddModToRare")
--SetSaveIndex(nil,"1","富豪石","Metadata/Items/Currency/CurrencyUpgradeMagicToRare")
--SetSaveIndex(nil,"1","增幅石","Metadata/Items/Currency/CurrencyAddModToMagic")
--SetSaveIndex(nil,"1","玻璃彈珠","Metadata/Items/Currency/CurrencyFlaskQuality")
--SetSaveIndex(nil,"1","寶石匠的稜鏡","Metadata/Items/Currency/CurrencyGemQuality")
--SetSaveIndex(nil,"1","幻色石","Metadata/Items/Currency/CurrencyRerollSocketColours")
--SetSaveIndex(nil,"1","鏈結石","Metadata/Items/Currency/CurrencyRerollSocketLinks")
--SetSaveIndex(nil,"1","工匠石","Metadata/Items/Currency/CurrencyRerollSocketNumbers")
--SetSaveIndex(nil,"1","瓦爾寶珠","Metadata/Items/Currency/CurrencyCorrupt")
--SetSaveIndex(nil,"1","神聖石","Metadata/Items/Currency/CurrencyModValues")
--SetSaveIndex(nil,"1","聖玉","Metadata/Items/Currency/CurrencyRerollDefences")
--SetSaveIndex(nil,"1","製圖釘","Metadata/Items/Currency/CurrencyMapQuality")
--SetSaveIndex(nil,"1","蛻變石碎片","Metadata/Items/Currency/CurrencyUpgradeToMagicShard")
--SetSaveIndex(nil,"1","改造石碎片","Metadata/Items/Currency/CurrencyRerollMagicShard")
--SetSaveIndex(nil,"1","點金石碎片","Metadata/Items/Currency/CurrencyUpgradeToRareShard")
--SetSaveIndex(nil,"1","改造石碎片","Metadata/Items/Currency/CurrencyRerollMagicShard")
--SetSaveIndex(nil,"1","無效石","Metadata/Items/Currency/CurrencyRemoveMod")
--SetSaveIndex(nil,"1","改造石碎片","Metadata/Items/Currency/CurrencyRerollMagicShard")
--SetSaveIndex(nil,"1","束縛石","Metadata/Items/Currency/CurrencyUpgradeToRareAndSetSockets")
--SetSaveIndex(nil,"1","地平石","Metadata/Items/Currency/CurrencyRerollMapType")
--SetSaveIndex(nil,"1","神諭石","	Metadata/Items/Currency/CurrencyUpgradeMapTier")
--SetSaveIndex(nil,"1","工程石","Metadata/Items/Currency/CurrencyStrongboxQuality")
--SetSaveIndex(nil,"1","充能的工程石","	Metadata/Items/Currency/CurrencyStrongboxQualityInfused")
--SetSaveIndex(nil,"1","無效石碎片","Metadata/Items/Currency/CurrencyRemoveModShard")
--SetSaveIndex(nil,"1","束縛石碎片","Metadata/Items/Currency/CurrencyUpgradeToRareAndSetSocketsShard")
--SetSaveIndex(nil,"1","地平石碎片","Metadata/Items/Currency/CurrencyRerollMapTypeShard")
--SetSaveIndex(nil,"1","神諭石碎片","Metadata/Items/Currency/CurrencyUpgradeMapTierShard")
--SetSaveIndex(nil,"1","工程石碎片","Metadata/Items/Currency/CurrencyStrongboxQualityShard")
--SetSaveIndex(nil,"1","古變石碎片","Metadata/Items/Currency/CurrencyRerollUniqueShard")
--SetSaveIndex(nil,"1","混沌石碎片","Metadata/Items/Currency/CurrencyRerollRareShard")
--SetSaveIndex(nil,"1","魔鏡碎片","Metadata/Items/Currency/CurrencyDuplicateShard")
--SetSaveIndex(nil,"1","崇高石碎片","Metadata/Items/Currency/CurrencyAddModToRareShard")
--SetSaveIndex(nil,"1","富豪石碎片","Metadata/Items/Currency/CurrencyUpgradeMagicToRareShard")
--SetSaveIndex(nil,"1","費斯特之鏡","Metadata/Items/Currency/CurrencyAddGemExperience")
--SetSaveIndex(nil,"1","點燃石","Metadata/Items/Currency/CurrencyEnkindlingOrb")
--SetSaveIndex(nil,"1","滴注石","Metadata/Items/Currency/CurrencyInstillingOrb")
--SetSaveIndex(nil,"1","護甲片","Metadata/Items/Currency/CurrencyArmourQuality")
--SetSaveIndex(nil,"1","磨刀石","Metadata/Items/Currency/CurrencyWeaponQuality")
--通貨拾取區
SetGoodsCaoZuo(nil,"0|2","混沌石","Metadata/Items/Currency/CurrencyRerollRare")
SetGoodsCaoZuo(nil,"0|2","隱匿混沌石","Metadata/Items/Currency/CurrencyRerollRareVeiled")
SetGoodsCaoZuo(nil,"0|2","卡蘭德的魔鏡","Metadata/Items/Currency/CurrencyDuplicate")
SetGoodsCaoZuo(nil,"0|2","點金石","Metadata/Items/Currency/CurrencyUpgradeToRare")
SetGoodsCaoZuo(nil,"0|2","機會石","Metadata/Items/Currency/CurrencyUpgradeRandomly")
SetGoodsCaoZuo(nil,"0|2","後悔石","Metadata/Items/Currency/CurrencyPassiveRefund")
SetGoodsCaoZuo(nil,"0|2","撤銷石","Metadata/Items/Currency/CurrencyAtlasPassiveRefund")
SetGoodsCaoZuo(nil,"0|2","蛻變石","Metadata/Items/Currency/CurrencyUpgradeToMagic")
SetGoodsCaoZuo(nil,"0|2","改造石","Metadata/Items/Currency/CurrencyRerollMagic")
SetGoodsCaoZuo(nil,"0|2","重鑄石","Metadata/Items/Currency/CurrencyConvertToNormal")
SetGoodsCaoZuo(nil,"0|2","崇高石","Metadata/Items/Currency/CurrencyAddModToRare")
SetGoodsCaoZuo(nil,"0|2","富豪石","Metadata/Items/Currency/CurrencyUpgradeMagicToRare")
SetGoodsCaoZuo(nil,"0|2","增幅石","Metadata/Items/Currency/CurrencyAddModToMagic")
SetGoodsCaoZuo(nil,"0|2","玻璃彈珠","Metadata/Items/Currency/CurrencyFlaskQuality")
SetGoodsCaoZuo(nil,"0|2","寶石匠的稜鏡","Metadata/Items/Currency/CurrencyGemQuality")
SetGoodsCaoZuo(nil,"0|2","幻色石","Metadata/Items/Currency/CurrencyRerollSocketColours")
SetGoodsCaoZuo(nil,"0|2","鏈結石","Metadata/Items/Currency/CurrencyRerollSocketLinks")
SetGoodsCaoZuo(nil,"0|2","工匠石","Metadata/Items/Currency/CurrencyRerollSocketNumbers")
SetGoodsCaoZuo(nil,"0|2","瓦爾寶珠","Metadata/Items/Currency/CurrencyCorrupt")
SetGoodsCaoZuo(nil,"0|2","神聖石","Metadata/Items/Currency/CurrencyModValues")
SetGoodsCaoZuo(nil,"0|2","聖玉","Metadata/Items/Currency/CurrencyRerollDefences")
SetGoodsCaoZuo(nil,"0|2","製圖釘","Metadata/Items/Currency/CurrencyMapQuality")
SetGoodsCaoZuo(nil,"0|2","蛻變石碎片","Metadata/Items/Currency/CurrencyUpgradeToMagicShard")
SetGoodsCaoZuo(nil,"0|2","改造石碎片","Metadata/Items/Currency/CurrencyRerollMagicShard")
SetGoodsCaoZuo(nil,"0|2","點金石碎片","Metadata/Items/Currency/CurrencyUpgradeToRareShard")
SetGoodsCaoZuo(nil,"0|2","改造石碎片","Metadata/Items/Currency/CurrencyRerollMagicShard")
SetGoodsCaoZuo(nil,"0|2","無效石","Metadata/Items/Currency/CurrencyRemoveMod")
SetGoodsCaoZuo(nil,"0|2","改造石碎片","Metadata/Items/Currency/CurrencyRerollMagicShard")
SetGoodsCaoZuo(nil,"0|2","束縛石","Metadata/Items/Currency/CurrencyUpgradeToRareAndSetSockets")
SetGoodsCaoZuo(nil,"0|2","地平石","Metadata/Items/Currency/CurrencyRerollMapType")
SetGoodsCaoZuo(nil,"0|2","神諭石","	Metadata/Items/Currency/CurrencyUpgradeMapTier")
SetGoodsCaoZuo(nil,"0|2","工程石","Metadata/Items/Currency/CurrencyStrongboxQuality")
SetGoodsCaoZuo(nil,"0|2","充能的工程石","	Metadata/Items/Currency/CurrencyStrongboxQualityInfused")
SetGoodsCaoZuo(nil,"0|2","無效石碎片","Metadata/Items/Currency/CurrencyRemoveModShard")
SetGoodsCaoZuo(nil,"0|2","束縛石碎片","Metadata/Items/Currency/CurrencyUpgradeToRareAndSetSocketsShard")
SetGoodsCaoZuo(nil,"0|2","地平石碎片","Metadata/Items/Currency/CurrencyRerollMapTypeShard")
SetGoodsCaoZuo(nil,"0|2","神諭石碎片","Metadata/Items/Currency/CurrencyUpgradeMapTierShard")
SetGoodsCaoZuo(nil,"0|2","工程石碎片","Metadata/Items/Currency/CurrencyStrongboxQualityShard")
SetGoodsCaoZuo(nil,"0|2","古變石碎片","Metadata/Items/Currency/CurrencyRerollUniqueShard")
SetGoodsCaoZuo(nil,"0|2","混沌石碎片","Metadata/Items/Currency/CurrencyRerollRareShard")
SetGoodsCaoZuo(nil,"0|2","魔鏡碎片","Metadata/Items/Currency/CurrencyDuplicateShard")
SetGoodsCaoZuo(nil,"0|2","崇高石碎片","Metadata/Items/Currency/CurrencyAddModToRareShard")
SetGoodsCaoZuo(nil,"0|2","富豪石碎片","Metadata/Items/Currency/CurrencyUpgradeMagicToRareShard")
SetGoodsCaoZuo(nil,"0|2","費斯特之鏡","Metadata/Items/Currency/CurrencyAddGemExperience")
SetGoodsCaoZuo(nil,"0|2","護甲片","Metadata/Items/Currency/CurrencyArmourQuality")
SetGoodsCaoZuo(nil,"0|2","磨刀石","Metadata/Items/Currency/CurrencyWeaponQuality")






--占位置的雜物，要留著的那一條自己刪掉
SetGoodsCaoZuo(nil,"0|1|4",nil,nil,nil,nil,nil,nil,"3")--拾取 鉴定 出售橙色物品
SetGoodsCaoZuo(nil,nil,"知识卷轴","Metadata/Items/Currency/CurrencyIdentification",nil,nil,nil,40)--够了就不捡了
SetGoodsCaoZuo(nil,nil,"传送卷轴","Metadata/Items/Currency/CurrencyPortal",nil,nil,nil,40)--够了就不捡了
SetGoodsCaoZuo(nil,"0|1",nil,nil,nil,nil,nil,nil,"0|1|2",6)--6洞装设置捡卖
SetGoodsCaoZuo(nil,"0|1",nil,nil,nil,nil,nil,nil,"0|1|2",nil,6)--6连洞装设置捡卖
SetGoodsCaoZuo("珠宝|深渊珠宝","0|1|4",nil,nil,nil,nil,nil,nil,"2")--拾取 鉴定 出售黄色物品珠宝
SetGoodsCaoZuo(nil,"0|2","玻璃弹珠","Metadata/Items/Currency/CurrencyFlaskQuality")--
SetGoodsCaoZuo(nil,"3","卷轴碎片","Metadata/Items/Currency/CurrencyIdentificationShard")--卷轴碎片丢
SetGoodsCaoZuo(nil,"1|3",nil,"Metadata/Items/Metamorphosis/MetamorphosisBrain")--鍊魔腦髓不捡
SetGoodsCaoZuo(nil,"1|3",nil,"Metadata/Items/Metamorphosis/MetamorphosisEye")--鍊魔眼睛不捡
SetGoodsCaoZuo(nil,"1|3",nil,"Metadata/Items/Metamorphosis/MetamorphosisLiver")--鍊魔肝臟不捡
SetGoodsCaoZuo(nil,"1|3",nil,"Metadata/Items/Metamorphosis/MetamorphosisLung")--鍊魔肺臟不捡
SetGoodsCaoZuo(nil,"1|3",nil,"Metadata/Items/Metamorphosis/MetamorphosisHeart")--鍊魔心臟不捡



--拾取設定區
--SetGoodsCaoZuo(goodsType,czType,name,className,wordName,wordClassName,pingzhi,cnt,color,socketCnt,lineCnt,checkCangKu,sanSeLian,nType,funcCheck)-- 设置要操作的物品
--goodsType 字符串型 操作的物品类型忽略类型请填 nil 支持以下种类 多种类型以|分开
--saveType 类型  多种类型以|分开 
--czType:字符串型 0为拾 1卖 2存 3丢 4鉴定 可多个中间用|隔开
--name 字符串型 物品的名字 忽略则填 nil
--className 字符串型 物品的类名 忽略则填 nil
--wordName 字符串型 物品的词缀名 忽略则填 nil
--wordClassName 字符串型 物品的词缀类名 忽略则填 nil
--pingzhi 数字型 物品的品质 忽略则填 nil
--cnt 数字型 保留数量 忽略则填 nil
--color 字符串型 颜色 0白 1蓝 2黄 3橙 多个用|隔开 nil为所有
--socketCnt 数字型 总洞数量 忽略则填 nil
--lineCnt 数字型 连洞数量 忽略则填 nil
--checkCangKu 计算保留数量时是否连仓库内的数量也计算进去 nil或false为不计算仓库 true 为需要计算
--sanSeLian 是否三色相连 nil为忽略 false为非三色相连 true为三色相连
--nType=有效场景 数字型 0或nil或不填为一直有效 1为跑图时才有效 2为异界时才有效
--funcCheck 过滤函数，给作者预留的接口，不懂不要乱填，忽略请填nil
--支援類型
----生命药剂|魔力药剂|复合药剂|通货|项链|戒指|爪|匕首|法杖|单手剑|细剑|单手斧|单手锤|符文匕首|短杖|战杖|弓|长杖|双手剑|双手斧|双手锤|主动技能宝石|辅助技能宝石|箭袋|腰带
--|手套|鞋子|衣服|头盔|盾|小型圣物|中型圣物|大型圣物|可堆叠通货|任务物品|短杖|功能药剂|暴击药剂|异界地图||鱼竿|地图碎片|藏身处装饰|商城物品|珠宝|命运卡|迷宫物品|迷宫饰品|
--异界迷宫物品|裂隙之石|赛季石|神灵之魂|传奇装备碎片|深渊珠宝|穿越通货|地心探索：可镶嵌的通货|孕育石|碎片|破碎之心|符文匕首|战杖|地心探索可堆叠可插入通货| 




--拾取設定區
SetGoodsCaoZuo("通货|可堆叠通货|异界地图|命运卡|碎片","0|2")--多个大类设置捡存
--SetGoodsCaoZuo("主动技能宝石|辅助技能宝石","0|2",nil,nil,nil,nil,5)--拾取品质超过5的技能宝石
--SetGoodsCaoZuo("裂隙之石","0|2")

--異界門票
--SetGoodsCaoZuo(nil,"0|2","低階異能灰燼","Metadata/Items/Currency/CurrencyEldritchEmber1")
--SetGoodsCaoZuo(nil,"0|2","高階異能灰燼","Metadata/Items/Currency/CurrencyEldritchEmber2")
--SetGoodsCaoZuo(nil,"0|2","宏偉異能灰燼","Metadata/Items/Currency/CurrencyEldritchEmber3")
--SetGoodsCaoZuo(nil,"0|2","卓越異能灰燼","Metadata/Items/Currency/CurrencyEldritchEmber4")
--SetGoodsCaoZuo(nil,"0|2","低階異能靈液","Metadata/Items/Currency/CurrencyEldritchIchor1")
--SetGoodsCaoZuo(nil,"0|2","高階異能灰燼","Metadata/Items/Currency/CurrencyEldritchIchor2")
--SetGoodsCaoZuo(nil,"0|2","宏偉異能灰燼","Metadata/Items/Currency/CurrencyEldritchIchor3")
--SetGoodsCaoZuo(nil,"0|2","卓越異能灰燼","Metadata/Items/Currency/CurrencyEldritchIchor4")

--勢力崇高
SetGoodsCaoZuo(nil,"0|2","聖戰士的崇高石","Metadata/Items/AtlasExiles/AddModToRareCrusader")
SetGoodsCaoZuo(nil,"0|2","救贖者的崇高石","Metadata/Items/AtlasExiles/AddModToRareRedeemer")
SetGoodsCaoZuo(nil,"0|2","狩獵者的崇高石","Metadata/Items/AtlasExiles/AddModToRareHunter")
SetGoodsCaoZuo(nil,"0|2","總督軍的崇高石","Metadata/Items/AtlasExiles/AddModToRareWarlord")

--喚醒者之玉
SetGoodsCaoZuo(nil,"0|2","喚醒者之玉","Metadata/Items/AtlasExiles/ApplyInfluence")

--釋界之邀存 3
SetSaveIndex(nil,"3","釋界之邀：塑型","Metadata/Items/MapFragments/Maven/MavenMapVoid1")
SetSaveIndex(nil,"3","釋界之邀：扭曲","Metadata/Items/MapFragments/Maven/MavenMapVoid2")
SetSaveIndex(nil,"3","釋界之邀：遺忘","Metadata/Items/MapFragments/Maven/MavenMapVoid3")
SetSaveIndex(nil,"3","釋界之邀：隱匿","Metadata/Items/MapFragments/Maven/MavenMapVoid4")
SetSaveIndex(nil,"3","釋界之邀：恐懼","Metadata/Items/MapFragments/Maven/MavenMapVoid5")
SetSaveIndex(nil,"3","釋界之邀：尊師殺手","Metadata/Items/MapFragments/Maven/MavenMapVoid6")
SetSaveIndex(nil,"3","釋界之邀：輿圖","Metadata/Items/MapFragments/Maven/MavenMapAtlas1")

--換工匠、神聖
SetGoodsCaoZuo(nil,"0|1",nil,nil,nil,nil,nil,nil,"0|1|2",6)--六洞工匠賣出
SetGoodsCaoZuo(nil,"0|1",nil,nil,nil,nil,nil,nil,"0|1|2",nil,6)--六連神聖賣出


--細項不想撿的東西，文法通用操作物品
SetGoodsCaoZuo(nil,"0|1|4",nil,nil,nil,nil,nil,nil,"3")--拾取 鉴定 出售橙色物品
SetGoodsCaoZuo(nil,nil,"知识卷轴","Metadata/Items/Currency/CurrencyIdentification",nil,nil,nil,40)--够了就不捡了
SetGoodsCaoZuo(nil,nil,"传送卷轴","Metadata/Items/Currency/CurrencyPortal",nil,nil,nil,40)--够了就不捡了
--SetGoodsCaoZuo(nil,nil,"知识卷轴","Metadata/Items/Currency/CurrencyIdentification")
--SetGoodsCaoZuo(nil,nil,"传送卷轴","Metadata/Items/Currency/CurrencyPortal")

--拾取星團珠寶、存倉頁面「4」
--SetGoodsCaoZuo(nil,"0|2","巨型星團珠寶","Metadata/Items/Jewels/JewelPassiveTreeExpansionLarge")
--SetGoodsCaoZuo(nil,"0|2","中型星團珠寶","Metadata/Items/Jewels/JewelPassiveTreeExpansionMedium")
--SetGoodsCaoZuo(nil,"0|2","小型星團珠寶","Metadata/Items/Jewels/JewelPassiveTreeExpansionSmall")
--SetSaveIndex(nil,"4","巨型星團珠寶","Metadata/Items/Jewels/JewelPassiveTreeExpansionLarge")
--SetSaveIndex(nil,"4","中型星團珠寶","Metadata/Items/Jewels/JewelPassiveTreeExpansionMedium")
--SetSaveIndex(nil,"4","小型星團珠寶","Metadata/Items/Jewels/JewelPassiveTreeExpansionSmall")

--值錢的技能(啟蒙、賦予、增幅)、存取頁名為「4」
SetSaveIndex(nil,"4",nil,nil,nil,"Enlighten Support",nil,nil)
SetSaveIndex(nil,"4",nil,nil,nil,"Empower Support",nil,nil)
SetSaveIndex(nil,"4",nil,nil,nil,"Enhance Support",nil,nil)
SetGoodsCaoZuo(nil,"0|2",nil,nil,nil,"Enlighten Support",nil,nil)
SetGoodsCaoZuo(nil,"0|2",nil,nil,nil,"Empower Support",nil,nil)
SetGoodsCaoZuo(nil,"0|2",nil,nil,nil,"Enhance Support",nil,nil)

--拾取賣出都在這
SetGoodsCaoZuo(nil,"0|1",nil,nil,nil,nil,nil,nil,"0|1|2",6)--6洞装设置捡卖
SetGoodsCaoZuo(nil,"0|1",nil,nil,nil,nil,nil,nil,"0|1|2",nil,6)--6连洞装设置捡卖
SetGoodsCaoZuo("爪","0|1|4",nil,nil,nil,nil,5,nil,"2")--捡卖精良的黄爪子
SetGoodsCaoZuo("法杖","0|1|4",nil,nil,nil,nil,5,nil,"2")--捡卖精良的黄爪子
SetGoodsCaoZuo("单手剑","0|1|4",nil,nil,nil,nil,5,nil,"2")--捡卖精良的黄爪子
SetGoodsCaoZuo("匕首","0|1|4",nil,nil,nil,nil,5,nil,"2")--捡卖精良的黄爪子
SetGoodsCaoZuo("单手斧","0|1|4",nil,nil,nil,nil,5,nil,"2")--捡卖精良的黄爪子
SetGoodsCaoZuo("单手锤","0|1|4",nil,nil,nil,nil,5,nil,"2")--捡卖精良的黄爪子
SetGoodsCaoZuo("短杖","0|1|4",nil,nil,nil,nil,5,nil,"2")--捡卖精良的黄爪子
SetGoodsCaoZuo("盾","0|1|4",nil,nil,nil,nil,5,nil,"2")--捡卖精良的黄爪子
SetGoodsCaoZuo("细剑","0|1|4",nil,nil,nil,nil,5,nil,"2")--捡卖精良的黄爪子


--拾取、存取裂片祝福，存去名為「1」倉庫頁
--SetGoodsCaoZuo(nil,"0|2","夏烏拉的祝福","Metadata/Items/Currency/CurrencyBreachUpgradeUniqueChaos")
--SetGoodsCaoZuo(nil,"0|2","艾許的祝福","Metadata/Items/Currency/CurrencyBreachUpgradeUniqueLightning")
--SetGoodsCaoZuo(nil,"0|2","托沃的祝福","Metadata/Items/AtlasExiles/ApplyInfluence")
--SetGoodsCaoZuo(nil,"0|2","烏爾尼多的祝福","Metadata/Items/Currency/CurrencyBreachUpgradeUniqueCold")
--SetGoodsCaoZuo(nil,"0|2","鎖伏的祝福","Metadata/Items/Currency/CurrencyBreachUpgradeUniqueFire")
--SetSaveIndex(nil,"1","夏烏拉的祝福","Metadata/Items/Currency/CurrencyBreachUpgradeUniqueChaos")
--SetSaveIndex(nil,"1","艾許的祝福","Metadata/Items/Currency/CurrencyBreachUpgradeUniqueLightning")
--SetSaveIndex(nil,"1","托沃的祝福","Metadata/Items/AtlasExiles/ApplyInfluence")
--SetSaveIndex(nil,"1","烏爾尼多的祝福","Metadata/Items/Currency/CurrencyBreachUpgradeUniqueCold")
--SetSaveIndex(nil,"1","索伏的祝福","Metadata/Items/Currency/CurrencyBreachUpgradeUniqueFire")

--SetSaveIndex(nil,"1","夏烏拉裂片","Metadata/Items/Currency/CurrencyBreachChaosShard")
--SetSaveIndex(nil,"1","艾許裂片","Metadata/Items/Currency/CurrencyBreachLightningShard")
--SetSaveIndex(nil,"1","托沃裂片","Metadata/Items/Currency/CurrencyBreachColdShard")
--SetSaveIndex(nil,"1","烏爾尼多裂片","Metadata/Items/Currency/CurrencyBreachPhysicalShard")
--SetSaveIndex(nil,"1","索伏裂片","Metadata/Items/Currency/CurrencyBreachFireShard")

--SetSaveIndex(nil,"1","永恆卡魯裂片","Metadata/Items/Currency/CurrencyLegionKaruiShard")
--SetSaveIndex(nil,"1","永恆馬拉克斯裂片","Metadata/Items/Currency/CurrencyLegionMarakethShard")
--SetSaveIndex(nil,"1","永恆不朽帝國裂片","Metadata/Items/Currency/CurrencyLegionEternalEmpireShard")
--SetSaveIndex(nil,"1","永恆聖宗裂片","Metadata/Items/Currency/CurrencyLegionTemplarShard")
--SetSaveIndex(nil,"1","永恆瓦爾裂片","Metadata/Items/Currency/CurrencyLegionVaalShard")

--SetSaveIndex(nil,"1","幻像斷片","Metadata/Items/Currency/CurrencyAfflictionShard")

--SetSaveIndex(nil,"1","卓越偵查報告","Metadata/Items/Currency/ScoutingReports/AtlasScoutingReportUnique")
--SetSaveIndex(nil,"1","超凡偵查報告","Metadata/Items/Currency/ScoutingReports/AtlasScoutingReportBreachstone")
--SetSaveIndex(nil,"1","瓦爾偵查報告","Metadata/Items/Currency/ScoutingReports/AtlasScoutingReportCorrupted")
--SetSaveIndex(nil,"1","探險家偵查報告","Metadata/Items/Currency/ScoutingReports/AtlasScoutingReportExplorers")



--豐裕牌組拾取、存取至名為「1」頁面
SetSaveIndex(nil,"1","豐裕牌組","Metadata/Items/DivinationCards/DivinationCardDeck")
SetGoodsCaoZuo(nil,"0|2","豐裕牌組","Metadata/Items/DivinationCards/DivinationCardDeck")

--拾取存取文物，將倉庫存入名為「1」頁面
--SetSaveIndex(nil,"1","骰子","Metadata/Items/Currency/CurrencyRefreshGambler")
--SetGoodsCaoZuo(nil,"0|2","骰子","Metadata/Items/Currency/CurrencyRefreshGambler")
--SetSaveIndex(nil,"1","埋葬獎章","Metadata/Items/Currency/CurrencyRefreshSaga")
--SetGoodsCaoZuo(nil,"0|2","埋葬獎章","Metadata/Items/Currency/CurrencyRefreshSaga")
--SetSaveIndex(nil,"1","異域幣鑄","Metadata/Items/Currency/CurrencyRefreshBarter")
--SetGoodsCaoZuo(nil,"0|2","異域幣鑄","Metadata/Items/Currency/CurrencyRefreshBarter")
--SetSaveIndex(nil,"1","廢金屬","Metadata/Items/Currency/CurrencyRefreshDealer")
--SetGoodsCaoZuo(nil,"0|2","廢金屬","Metadata/Items/Currency/CurrencyRefreshDealer")




--將精髓存入名為「4」倉庫頁面
SetSaveIndex(nil,"4","憎恨之低语精华","Metadata/Items/Currency/CurrencyEssenceHatred1")
SetSaveIndex(nil,"4","憎恨之呢喃精华","Metadata/Items/Currency/CurrencyEssenceHatred2")
SetSaveIndex(nil,"4","憎恨之啼泣精华","Metadata/Items/Currency/CurrencyEssenceHatred3")
SetSaveIndex(nil,"4","憎恨之哀嚎精华","Metadata/Items/Currency/CurrencyEssenceHatred4")
SetSaveIndex(nil,"4","憎恨之咆哮精华","Metadata/Items/Currency/CurrencyEssenceHatred5")
SetSaveIndex(nil,"4","憎恨之尖啸精华","Metadata/Items/Currency/CurrencyEssenceHatred6")
SetSaveIndex(nil,"4","憎恨之破空精华","Metadata/Items/Currency/CurrencyEssenceHatred7")
SetSaveIndex(nil,"4","悲痛之低语精华","Metadata/Items/Currency/CurrencyEssenceWoe1")
SetSaveIndex(nil,"4","悲痛之呢喃精华","Metadata/Items/Currency/CurrencyEssenceWoe2")
SetSaveIndex(nil,"4","悲痛之啼泣精华","Metadata/Items/Currency/CurrencyEssenceWoe3")
SetSaveIndex(nil,"4","悲痛之哀嚎精华","Metadata/Items/Currency/CurrencyEssenceWoe4")
SetSaveIndex(nil,"4","悲痛之咆哮精华","Metadata/Items/Currency/CurrencyEssenceWoe5")
SetSaveIndex(nil,"4","悲痛之尖啸精华","Metadata/Items/Currency/CurrencyEssenceWoe6")
SetSaveIndex(nil,"4","悲痛之破空精华","Metadata/Items/Currency/CurrencyEssenceWoe7")
SetSaveIndex(nil,"4","贪婪之低语精华","Metadata/Items/Currency/CurrencyEssenceGreed1")
SetSaveIndex(nil,"4","贪婪之呢喃精华","Metadata/Items/Currency/CurrencyEssenceGreed2")
SetSaveIndex(nil,"4","贪婪之啼泣精华","Metadata/Items/Currency/CurrencyEssenceGreed3")
SetSaveIndex(nil,"4","贪婪之哀嚎精华","Metadata/Items/Currency/CurrencyEssenceGreed4")
SetSaveIndex(nil,"4","贪婪之咆哮精华","Metadata/Items/Currency/CurrencyEssenceGreed5")
SetSaveIndex(nil,"4","贪婪之尖啸精华","Metadata/Items/Currency/CurrencyEssenceGreed6")
SetSaveIndex(nil,"4","贪婪之破空精华","Metadata/Items/Currency/CurrencyEssenceGreed7")
SetSaveIndex(nil,"4","轻视之低语精华","Metadata/Items/Currency/CurrencyEssenceContempt1")
SetSaveIndex(nil,"4","轻视之呢喃精华","Metadata/Items/Currency/CurrencyEssenceContempt2")
SetSaveIndex(nil,"4","轻视之啼泣精华","Metadata/Items/Currency/CurrencyEssenceContempt3")
SetSaveIndex(nil,"4","轻视之哀嚎精华","Metadata/Items/Currency/CurrencyEssenceContempt4")
SetSaveIndex(nil,"4","轻视之咆哮精华","Metadata/Items/Currency/CurrencyEssenceContempt5")
SetSaveIndex(nil,"4","轻视之尖啸精华","Metadata/Items/Currency/CurrencyEssenceContempt6")
SetSaveIndex(nil,"4","轻视之破空精华","Metadata/Items/Currency/CurrencyEssenceContempt7")
SetSaveIndex(nil,"4","哀惜之呢喃精华","Metadata/Items/Currency/CurrencyEssenceSorrow1")
SetSaveIndex(nil,"4","哀惜之啼泣精华","Metadata/Items/Currency/CurrencyEssenceSorrow2")
SetSaveIndex(nil,"4","哀惜之哀嚎精华","Metadata/Items/Currency/CurrencyEssenceSorrow3")
SetSaveIndex(nil,"4","哀惜之咆哮精华","Metadata/Items/Currency/CurrencyEssenceSorrow4")
SetSaveIndex(nil,"4","哀惜之尖啸精华","Metadata/Items/Currency/CurrencyEssenceSorrow5")
SetSaveIndex(nil,"4","哀惜之破空精华","Metadata/Items/Currency/CurrencyEssenceSorrow6")
SetSaveIndex(nil,"4","愤怒之呢喃精华","Metadata/Items/Currency/CurrencyEssenceAnger1")
SetSaveIndex(nil,"4","愤怒之啼泣精华","Metadata/Items/Currency/CurrencyEssenceAnger2")
SetSaveIndex(nil,"4","愤怒之哀嚎精华","Metadata/Items/Currency/CurrencyEssenceAnger3")
SetSaveIndex(nil,"4","愤怒之咆哮精华","Metadata/Items/Currency/CurrencyEssenceAnger4")
SetSaveIndex(nil,"4","愤怒之尖啸精华","Metadata/Items/Currency/CurrencyEssenceAnger5")
SetSaveIndex(nil,"4","愤怒之破空精华","Metadata/Items/Currency/CurrencyEssenceAnger6")
SetSaveIndex(nil,"4","折磨之呢喃精华","Metadata/Items/Currency/CurrencyEssenceTorment1")
SetSaveIndex(nil,"4","折磨之啼泣精华","Metadata/Items/Currency/CurrencyEssenceTorment2")
SetSaveIndex(nil,"4","折磨之哀嚎精华","Metadata/Items/Currency/CurrencyEssenceTorment3")
SetSaveIndex(nil,"4","折磨之咆哮精华","Metadata/Items/Currency/CurrencyEssenceTorment4")
SetSaveIndex(nil,"4","折磨之尖啸精华","Metadata/Items/Currency/CurrencyEssenceTorment5")
SetSaveIndex(nil,"4","折磨之破空精华","Metadata/Items/Currency/CurrencyEssenceTorment6")
SetSaveIndex(nil,"4","恐惧之呢喃精华","Metadata/Items/Currency/CurrencyEssenceFear1")
SetSaveIndex(nil,"4","恐惧之啼泣精华","Metadata/Items/Currency/CurrencyEssenceFear2")
SetSaveIndex(nil,"4","恐惧之哀嚎精华","Metadata/Items/Currency/CurrencyEssenceFear3")
SetSaveIndex(nil,"4","恐惧之咆哮精华","Metadata/Items/Currency/CurrencyEssenceFear4")
SetSaveIndex(nil,"4","恐惧之尖啸精华","Metadata/Items/Currency/CurrencyEssenceFear5")
SetSaveIndex(nil,"4","恐惧之破空精华","Metadata/Items/Currency/CurrencyEssenceFear6")
SetSaveIndex(nil,"4","苦难之啼泣精华","Metadata/Items/Currency/CurrencyEssenceSuffering1")
SetSaveIndex(nil,"4","苦难之哀嚎精华","Metadata/Items/Currency/CurrencyEssenceSuffering2")
SetSaveIndex(nil,"4","苦难之咆哮精华","Metadata/Items/Currency/CurrencyEssenceSuffering3")
SetSaveIndex(nil,"4","苦难之尖啸精华","Metadata/Items/Currency/CurrencyEssenceSuffering4")
SetSaveIndex(nil,"4","苦难之破空精华","Metadata/Items/Currency/CurrencyEssenceSuffering5")
SetSaveIndex(nil,"4","肆虐之啼泣精华","Metadata/Items/Currency/CurrencyEssenceRage1")
SetSaveIndex(nil,"4","肆虐之哀嚎精华","Metadata/Items/Currency/CurrencyEssenceRage2")
SetSaveIndex(nil,"4","肆虐之咆哮精华","Metadata/Items/Currency/CurrencyEssenceRage3")
SetSaveIndex(nil,"4","肆虐之尖啸精华","Metadata/Items/Currency/CurrencyEssenceRage4")
SetSaveIndex(nil,"4","肆虐之破空精华","Metadata/Items/Currency/CurrencyEssenceRage5")
SetSaveIndex(nil,"4","雷霆之啼泣精华","Metadata/Items/Currency/CurrencyEssenceWrath1")
SetSaveIndex(nil,"4","雷霆之哀嚎精华","Metadata/Items/Currency/CurrencyEssenceWrath2")
SetSaveIndex(nil,"4","雷霆之咆哮精华","Metadata/Items/Currency/CurrencyEssenceWrath3")
SetSaveIndex(nil,"4","雷霆之尖啸精华","Metadata/Items/Currency/CurrencyEssenceWrath4")
SetSaveIndex(nil,"4","雷霆之破空精华","Metadata/Items/Currency/CurrencyEssenceWrath5")
SetSaveIndex(nil,"4","疑惑之啼泣精华","Metadata/Items/Currency/CurrencyEssenceDoubt1")
SetSaveIndex(nil,"4","疑惑之哀嚎精华","Metadata/Items/Currency/CurrencyEssenceDoubt2")
SetSaveIndex(nil,"4","疑惑之咆哮精华","Metadata/Items/Currency/CurrencyEssenceDoubt3")
SetSaveIndex(nil,"4","疑惑之尖啸精华","Metadata/Items/Currency/CurrencyEssenceDoubt4")
SetSaveIndex(nil,"4","疑惑之破空精华","Metadata/Items/Currency/CurrencyEssenceDoubt5")
SetSaveIndex(nil,"4","煎熬之哀嚎精华","Metadata/Items/Currency/CurrencyEssenceAnguish1")
SetSaveIndex(nil,"4","煎熬之咆哮精华","Metadata/Items/Currency/CurrencyEssenceAnguish2")
SetSaveIndex(nil,"4","煎熬之尖啸精华","Metadata/Items/Currency/CurrencyEssenceAnguish3")
SetSaveIndex(nil,"4","煎熬之破空精华","Metadata/Items/Currency/CurrencyEssenceAnguish4")
SetSaveIndex(nil,"4","厌恶之哀嚎精华","Metadata/Items/Currency/CurrencyEssenceLoathing1")
SetSaveIndex(nil,"4","厌恶之咆哮精华","Metadata/Items/Currency/CurrencyEssenceLoathing2")
SetSaveIndex(nil,"4","厌恶之尖啸精华","Metadata/Items/Currency/CurrencyEssenceLoathing3")
SetSaveIndex(nil,"4","厌恶之破空精华","Metadata/Items/Currency/CurrencyEssenceLoathing4")
SetSaveIndex(nil,"4","刻毒之哀嚎精华","Metadata/Items/Currency/CurrencyEssenceSpite1")
SetSaveIndex(nil,"4","刻毒之巨吼精华","Metadata/Items/Currency/CurrencyEssenceSpite2")
SetSaveIndex(nil,"4","刻毒之尖啸精华","Metadata/Items/Currency/CurrencyEssenceSpite3")
SetSaveIndex(nil,"4","刻毒之破空精华","Metadata/Items/Currency/CurrencyEssenceSpite4")
SetSaveIndex(nil,"4","热情之哀嚎精华","Metadata/Items/Currency/CurrencyEssenceZeal1")
SetSaveIndex(nil,"4","热情之巨吼精华","Metadata/Items/Currency/CurrencyEssenceZeal2")
SetSaveIndex(nil,"4","热情之尖啸精华","Metadata/Items/Currency/CurrencyEssenceZeal3")
SetSaveIndex(nil,"4","热情之破空精华","Metadata/Items/Currency/CurrencyEssenceZeal4")
SetSaveIndex(nil,"4","凄惨之咆哮精华","Metadata/Items/Currency/CurrencyEssenceMisery1")
SetSaveIndex(nil,"4","凄惨之尖啸精华","Metadata/Items/Currency/CurrencyEssenceMisery2")
SetSaveIndex(nil,"4","凄惨之破空精华","Metadata/Items/Currency/CurrencyEssenceMisery3")
SetSaveIndex(nil,"4","忌惮之咆哮精华","Metadata/Items/Currency/CurrencyEssenceDread1")
SetSaveIndex(nil,"4","忌惮之尖啸精华","Metadata/Items/Currency/CurrencyEssenceDread2")
SetSaveIndex(nil,"4","忌惮之破空精华","Metadata/Items/Currency/CurrencyEssenceDread3")
SetSaveIndex(nil,"4","傲视之咆哮精华","Metadata/Items/Currency/CurrencyEssenceScorn1")
SetSaveIndex(nil,"4","傲视之尖啸精华","Metadata/Items/Currency/CurrencyEssenceScorn2")
SetSaveIndex(nil,"4","傲视之破空精华","Metadata/Items/Currency/CurrencyEssenceScorn3")
SetSaveIndex(nil,"4","忌妒之咆哮精华","Metadata/Items/Currency/CurrencyEssenceEnvy1")
SetSaveIndex(nil,"4","忌妒之尖啸精华","Metadata/Items/Currency/CurrencyEssenceEnvy2")
SetSaveIndex(nil,"4","忌妒之破空精华","Metadata/Items/Currency/CurrencyEssenceEnvy3")
SetSaveIndex(nil,"4","浮夸精华","Metadata/Items/Currency/CurrencyEssenceHysteria1")
SetSaveIndex(nil,"4","错乱精华","Metadata/Items/Currency/CurrencyEssenceInsanity1")
SetSaveIndex(nil,"4","极恐精华","Metadata/Items/Currency/CurrencyEssenceHorror1")
SetSaveIndex(nil,"4","谵妄精华","Metadata/Items/Currency/CurrencyEssenceDelirium1")





--油瓶區
--拾取油瓶
--不撿
--SetGoodsCaoZuo(nil,"0|2","清透油瓶","Metadata/Items/Currency/Mushrune1")
--SetGoodsCaoZuo(nil,"0|2","深褐油瓶","Metadata/Items/Currency/Mushrune0|2")
--SetGoodsCaoZuo(nil,"0|2","琥珀油瓶","Metadata/Items/Currency/Mushrune3")
--SetGoodsCaoZuo(nil,"0|2","翠綠油瓶","Metadata/Items/Currency/Mushrune4")
--SetGoodsCaoZuo(nil,"0|2","清綠油瓶","Metadata/Items/Currency/Mushrune5")
--SetGoodsCaoZuo(nil,"0|2","碧藍油瓶","Metadata/Items/Currency/Mushrune6")
--SetGoodsCaoZuo(nil,"0|2","靛青油瓶","Metadata/Items/Currency/Mushrune6b")
--SetGoodsCaoZuo(nil,"0|2","奼紫油瓶","Metadata/Items/Currency/Mushrune7")
--SetGoodsCaoZuo(nil,"0|2","緋紅油瓶","Metadata/Items/Currency/Mushrune8")
--SetGoodsCaoZuo(nil,"0|2","漆黑油瓶","Metadata/Items/Currency/Mushrune9")
SetGoodsCaoZuo(nil,"0|2","乳白油瓶","Metadata/Items/Currency/Mushrune10")
SetGoodsCaoZuo(nil,"0|2","純銀油瓶","Metadata/Items/Currency/Mushrune11")
SetGoodsCaoZuo(nil,"0|2","金黃油瓶","Metadata/Items/Currency/Mushrune10|2")
SetGoodsCaoZuo(nil,"0|2","汙染油瓶","Metadata/Items/Currency/MushruneCorrupt")
--油瓶存取在名為「3」的頁面
--不存
--SetSaveIndex(nil,"3","清透油瓶","Metadata/Items/Currency/Mushrune1")
--SetSaveIndex(nil,"3","深褐油瓶","Metadata/Items/Currency/Mushrune2")
--SetSaveIndex(nil,"3","琥珀油瓶","Metadata/Items/Currency/Mushrune3")
--SetSaveIndex(nil,"3","翠綠油瓶","Metadata/Items/Currency/Mushrune4")
--SetSaveIndex(nil,"3","清綠油瓶","Metadata/Items/Currency/Mushrune5")
--SetSaveIndex(nil,"3","碧藍油瓶","Metadata/Items/Currency/Mushrune6")
--SetSaveIndex(nil,"3","靛青油瓶","Metadata/Items/Currency/Mushrune6b")
--SetSaveIndex(nil,"3","奼紫油瓶","Metadata/Items/Currency/Mushrune7")
--SetSaveIndex(nil,"3","緋紅油瓶","Metadata/Items/Currency/Mushrune8")
--SetSaveIndex(nil,"3","漆黑油瓶","Metadata/Items/Currency/Mushrune9")
SetSaveIndex(nil,"3","乳白油瓶","Metadata/Items/Currency/Mushrune10")
SetSaveIndex(nil,"3","純銀油瓶","Metadata/Items/Currency/Mushrune11")
SetSaveIndex(nil,"3","金黃油瓶","Metadata/Items/Currency/Mushrune12")
SetSaveIndex(nil,"3","汙染油瓶","Metadata/Items/Currency/MushruneCorrupt")


--聖甲蟲區
--撿取聖甲蟲
--不撿
--SetGoodsCaoZuo(nil,"0|2","Metadata/Items/Scarabs/ScarabLegion1")--聖甲蟲：鏽蝕戰亂
--SetGoodsCaoZuo(nil,"0|2","Metadata/Items/Scarabs/ScarabLegion2")--聖甲蟲：圓滑戰亂
--SetGoodsCaoZuo(nil,"0|2","Metadata/Items/Scarabs/ScarabLegion3")--聖甲蟲：鍍金戰亂
--SetGoodsCaoZuo(nil,"0|2","Metadata/Items/Scarabs/ScarabLegion4")--聖甲蟲：展翅戰亂
--SetGoodsCaoZuo(nil,"0|2","Metadata/Items/Scarabs/ScarabHarbinger1")--聖甲蟲：鏽蝕神諭
--SetGoodsCaoZuo(nil,"0|2","Metadata/Items/Scarabs/ScarabHarbinger2")--聖甲蟲：圓滑神諭
--SetGoodsCaoZuo(nil,"0|2","Metadata/Items/Scarabs/ScarabHarbinger3")--聖甲蟲：鍍金神諭
--SetGoodsCaoZuo(nil,"0|2","Metadata/Items/Scarabs/ScarabHarbinger4")--聖甲蟲：展翅神諭
--SetGoodsCaoZuo(nil,"0|2","Metadata/Items/Scarabs/ScarabBlight1")--聖甲蟲：鏽蝕凋落
--SetGoodsCaoZuo(nil,"0|2","Metadata/Items/Scarabs/ScarabBlight2")--聖甲蟲：圓滑凋落
--SetGoodsCaoZuo(nil,"0|2","Metadata/Items/Scarabs/ScarabBlight3")--聖甲蟲：鍍金凋落
--SetGoodsCaoZuo(nil,"0|2","Metadata/Items/Scarabs/ScarabBlight4")--聖甲蟲：展翅凋落
--SetGoodsCaoZuo(nil,"0|2","Metadata/Items/Scarabs/ScarabSulphite1")--聖甲蟲：鏽蝕硫酸
--SetGoodsCaoZuo(nil,"0|2","Metadata/Items/Scarabs/ScarabSulphite2")--聖甲蟲：圓滑硫酸
--SetGoodsCaoZuo(nil,"0|2","Metadata/Items/Scarabs/ScarabSulphite3")--聖甲蟲：鍍金硫酸
--SetGoodsCaoZuo(nil,"0|2","Metadata/Items/Scarabs/ScarabSulphite4")--聖甲蟲：展翅硫酸
--SetGoodsCaoZuo(nil,"0|2","Metadata/Items/Scarabs/ScarabBreach1")--聖甲蟲：鏽蝕裂痕
--SetGoodsCaoZuo(nil,"0|2","Metadata/Items/Scarabs/ScarabBreach2")--聖甲蟲：圓滑裂痕
--SetGoodsCaoZuo(nil,"0|2","Metadata/Items/Scarabs/ScarabBreach3")--聖甲蟲：鍍金裂痕
--SetGoodsCaoZuo(nil,"0|2","Metadata/Items/Scarabs/ScarabBreach4")--聖甲蟲：展翅裂痕
--SetGoodsCaoZuo(nil,"0|2","Metadata/Items/Scarabs/ScarabMaps1")--聖甲蟲：鏽蝕製圖
--SetGoodsCaoZuo(nil,"0|2","Metadata/Items/Scarabs/ScarabMaps2")--聖甲蟲：圓滑製圖
--SetGoodsCaoZuo(nil,"0|2","Metadata/Items/Scarabs/ScarabMaps3")--聖甲蟲：鍍金製圖
--SetGoodsCaoZuo(nil,"0|2","Metadata/Items/Scarabs/ScarabMaps4")--聖甲蟲：展翅製圖
--SetGoodsCaoZuo(nil,"0|2","Metadata/Items/Scarabs/ScarabUniques1")--聖甲蟲：鏽蝕聖物
--SetGoodsCaoZuo(nil,"0|2","Metadata/Items/Scarabs/ScarabUniques2")--聖甲蟲：圓滑聖物
--SetGoodsCaoZuo(nil,"0|2","Metadata/Items/Scarabs/ScarabUniques3")--聖甲蟲：鍍金聖物
--SetGoodsCaoZuo(nil,"0|2","Metadata/Items/Scarabs/ScarabUniques4")--聖甲蟲：展翅聖物
--SetGoodsCaoZuo(nil,"0|2","Metadata/Items/Scarabs/ScarabBeasts1")--聖甲蟲：鏽蝕獸獵
--SetGoodsCaoZuo(nil,"0|2","Metadata/Items/Scarabs/ScarabBeasts2")--聖甲蟲：圓滑獸獵
--SetGoodsCaoZuo(nil,"0|2","Metadata/Items/Scarabs/ScarabBeasts3")--聖甲蟲：鍍金獸獵
--SetGoodsCaoZuo(nil,"0|2","Metadata/Items/Scarabs/ScarabBeasts4")--聖甲蟲：展翅獸獵
--SetGoodsCaoZuo(nil,"0|2","Metadata/Items/Scarabs/ScarabShaperRares1")--聖甲蟲：鏽蝕塑者
--SetGoodsCaoZuo(nil,"0|2","Metadata/Items/Scarabs/ScarabShaperRares2")--聖甲蟲：圓滑塑者
--SetGoodsCaoZuo(nil,"0|2","Metadata/Items/Scarabs/ScarabShaperRares3")--聖甲蟲：鍍金塑者
--SetGoodsCaoZuo(nil,"0|2","Metadata/Items/Scarabs/ScarabShaperRares4")--聖甲蟲：展翅塑者
--SetGoodsCaoZuo(nil,"0|2","Metadata/Items/Scarabs/ScarabElderRares1")--聖甲蟲：鏽蝕尊師
--SetGoodsCaoZuo(nil,"0|2","Metadata/Items/Scarabs/ScarabElderRares2")--聖甲蟲：圓滑尊師
--SetGoodsCaoZuo(nil,"0|2","Metadata/Items/Scarabs/ScarabElderRares3")--聖甲蟲：鍍金尊師
--SetGoodsCaoZuo(nil,"0|2","Metadata/Items/Scarabs/ScarabElderRares4")--聖甲蟲：展翅尊師
--SetGoodsCaoZuo(nil,"0|2","Metadata/Items/Scarabs/ScarabDivinationCards1")--聖甲蟲：鏽蝕命運
--SetGoodsCaoZuo(nil,"0|2","Metadata/Items/Scarabs/ScarabDivinationCards2")--聖甲蟲：圓滑命運
--SetGoodsCaoZuo(nil,"0|2","Metadata/Items/Scarabs/ScarabDivinationCards3")--聖甲蟲：鍍金命運
--SetGoodsCaoZuo(nil,"0|2","Metadata/Items/Scarabs/ScarabDivinationCards4") --聖甲蟲：展翅命運
--SetGoodsCaoZuo(nil,"0|2","Metadata/Items/Scarabs/ScarabTorment1")--聖甲蟲：鏽蝕苦痛
--SetGoodsCaoZuo(nil,"0|2","Metadata/Items/Scarabs/ScarabTorment2")--聖甲蟲：圓滑苦痛
--SetGoodsCaoZuo(nil,"0|2","Metadata/Items/Scarabs/ScarabTorment3")--聖甲蟲：鍍金苦痛
--SetGoodsCaoZuo(nil,"0|2","Metadata/Items/Scarabs/ScarabTorment4")--聖甲蟲：展翅苦痛
--SetGoodsCaoZuo(nil,"0|2","Metadata/Items/Scarabs/ScarabStrongbox1")--聖甲蟲：鏽蝕伏擊
--SetGoodsCaoZuo(nil,"0|2","Metadata/Items/Scarabs/ScarabStrongbox2")--聖甲蟲：圓滑伏擊
--SetGoodsCaoZuo(nil,"0|2","Metadata/Items/Scarabs/ScarabStrongbox3")--聖甲蟲：鍍金伏擊
--SetGoodsCaoZuo(nil,"0|2","Metadata/Items/Scarabs/ScarabStrongbox4")--聖甲蟲：展翅伏擊
--SetGoodsCaoZuo(nil,"0|2","Metadata/Items/Scarabs/ScarabPerandus1")--聖甲蟲：鏽蝕普蘭德斯
--SetGoodsCaoZuo(nil,"0|2","Metadata/Items/Scarabs/ScarabPerandus2")--聖甲蟲：圓滑普蘭德斯
--SetGoodsCaoZuo(nil,"0|2","Metadata/Items/Scarabs/ScarabPerandus3")--聖甲蟲：鍍金普蘭德斯
--SetGoodsCaoZuo(nil,"0|2","Metadata/Items/Scarabs/ScarabPerandus4")--聖甲蟲：展翅普蘭德斯
--SetGoodsCaoZuo(nil,"0|2","Metadata/Items/Scarabs/ScarabMetamorph1")--聖甲蟲：鏽蝕鍊魔
--SetGoodsCaoZuo(nil,"0|2","Metadata/Items/Scarabs/ScarabMetamorph2")--聖甲蟲：圓滑鍊魔
--SetGoodsCaoZuo(nil,"0|2","Metadata/Items/Scarabs/ScarabMetamorph3")--聖甲蟲：鍍金鍊魔
--SetGoodsCaoZuo(nil,"0|2","Metadata/Items/Scarabs/ScarabMetamorph4")--聖甲蟲：展翅鍊魔
--SetGoodsCaoZuo(nil,"0|2","Metadata/Items/Scarabs/ScarabAbyss1")--聖甲蟲：鏽蝕深淵
--SetGoodsCaoZuo(nil,"0|2","Metadata/Items/Scarabs/ScarabAbyss2")--聖甲蟲：圓滑深淵
--SetGoodsCaoZuo(nil,"0|2","Metadata/Items/Scarabs/ScarabAbyss3")--聖甲蟲：鍍金深淵
--SetGoodsCaoZuo(nil,"0|2","Metadata/Items/Scarabs/ScarabAbyss4")--聖甲蟲：展翅深淵
--將聖甲蟲存入名為「1」頁面
--不存
--SetSaveIndex(nil,"1","Metadata/Items/Scarabs/ScarabLegion1")--聖甲蟲：鏽蝕戰亂
--SetSaveIndex(nil,"1","Metadata/Items/Scarabs/ScarabLegion2")--聖甲蟲：圓滑戰亂
--SetSaveIndex(nil,"1","Metadata/Items/Scarabs/ScarabLegion3")--聖甲蟲：鍍金戰亂
--SetSaveIndex(nil,"1","Metadata/Items/Scarabs/ScarabLegion4")--聖甲蟲：展翅戰亂
--SetSaveIndex(nil,"1","Metadata/Items/Scarabs/ScarabHarbinger1")--聖甲蟲：鏽蝕神諭
--SetSaveIndex(nil,"1","Metadata/Items/Scarabs/ScarabHarbinger2")--聖甲蟲：圓滑神諭
--SetSaveIndex(nil,"1","Metadata/Items/Scarabs/ScarabHarbinger3")--聖甲蟲：鍍金神諭
--SetSaveIndex(nil,"1","Metadata/Items/Scarabs/ScarabHarbinger4")--聖甲蟲：展翅神諭
--SetSaveIndex(nil,"1","Metadata/Items/Scarabs/ScarabBlight1")--聖甲蟲：鏽蝕凋落
--SetSaveIndex(nil,"1","Metadata/Items/Scarabs/ScarabBlight2")--聖甲蟲：圓滑凋落
--SetSaveIndex(nil,"1","Metadata/Items/Scarabs/ScarabBlight3")--聖甲蟲：鍍金凋落
--SetSaveIndex(nil,"1","Metadata/Items/Scarabs/ScarabBlight4")--聖甲蟲：展翅凋落
--SetSaveIndex(nil,"1","Metadata/Items/Scarabs/ScarabSulphite1")--聖甲蟲：鏽蝕硫酸
--SetSaveIndex(nil,"1","Metadata/Items/Scarabs/ScarabSulphite2")--聖甲蟲：圓滑硫酸
--SetSaveIndex(nil,"1","Metadata/Items/Scarabs/ScarabSulphite3")--聖甲蟲：鍍金硫酸
--SetSaveIndex(nil,"1","Metadata/Items/Scarabs/ScarabSulphite4")--聖甲蟲：展翅硫酸
--SetSaveIndex(nil,"1","Metadata/Items/Scarabs/ScarabBreach1")--聖甲蟲：鏽蝕裂痕
--SetSaveIndex(nil,"1","Metadata/Items/Scarabs/ScarabBreach2")--聖甲蟲：圓滑裂痕
--SetSaveIndex(nil,"1","Metadata/Items/Scarabs/ScarabBreach3")--聖甲蟲：鍍金裂痕
--SetSaveIndex(nil,"1","Metadata/Items/Scarabs/ScarabBreach4")--聖甲蟲：展翅裂痕
--SetSaveIndex(nil,"1","Metadata/Items/Scarabs/ScarabMaps1")--聖甲蟲：鏽蝕製圖
--SetSaveIndex(nil,"1","Metadata/Items/Scarabs/ScarabMaps2")--聖甲蟲：圓滑製圖
--SetSaveIndex(nil,"1","Metadata/Items/Scarabs/ScarabMaps3")--聖甲蟲：鍍金製圖
--SetSaveIndex(nil,"1","Metadata/Items/Scarabs/ScarabMaps4")--聖甲蟲：展翅製圖
--SetSaveIndex(nil,"1","Metadata/Items/Scarabs/ScarabUniques1")--聖甲蟲：鏽蝕聖物
--SetSaveIndex(nil,"1","Metadata/Items/Scarabs/ScarabUniques2")--聖甲蟲：圓滑聖物
--SetSaveIndex(nil,"1","Metadata/Items/Scarabs/ScarabUniques3")--聖甲蟲：鍍金聖物
--SetSaveIndex(nil,"1","Metadata/Items/Scarabs/ScarabUniques4")--聖甲蟲：展翅聖物
--SetSaveIndex(nil,"1","Metadata/Items/Scarabs/ScarabBeasts1")--聖甲蟲：鏽蝕獸獵
--SetSaveIndex(nil,"1","Metadata/Items/Scarabs/ScarabBeasts2")--聖甲蟲：圓滑獸獵
--SetSaveIndex(nil,"1","Metadata/Items/Scarabs/ScarabBeasts3")--聖甲蟲：鍍金獸獵
--SetSaveIndex(nil,"1","Metadata/Items/Scarabs/ScarabBeasts4")--聖甲蟲：展翅獸獵
--SetSaveIndex(nil,"1","Metadata/Items/Scarabs/ScarabShaperRares1")--聖甲蟲：鏽蝕塑者
--SetSaveIndex(nil,"1","Metadata/Items/Scarabs/ScarabShaperRares2")--聖甲蟲：圓滑塑者
--SetSaveIndex(nil,"1","Metadata/Items/Scarabs/ScarabShaperRares3")--聖甲蟲：鍍金塑者
--SetSaveIndex(nil,"1","Metadata/Items/Scarabs/ScarabShaperRares4")--聖甲蟲：展翅塑者
--SetSaveIndex(nil,"1","Metadata/Items/Scarabs/ScarabElderRares1")--聖甲蟲：鏽蝕尊師
--SetSaveIndex(nil,"1","Metadata/Items/Scarabs/ScarabElderRares2")--聖甲蟲：圓滑尊師
--SetSaveIndex(nil,"1","Metadata/Items/Scarabs/ScarabElderRares3")--聖甲蟲：鍍金尊師
--SetSaveIndex(nil,"1","Metadata/Items/Scarabs/ScarabElderRares4")--聖甲蟲：展翅尊師
--SetSaveIndex(nil,"1","Metadata/Items/Scarabs/ScarabDivinationCards1")--聖甲蟲：鏽蝕命運
--SetSaveIndex(nil,"1","Metadata/Items/Scarabs/ScarabDivinationCards2")--聖甲蟲：圓滑命運
--SetSaveIndex(nil,"1","Metadata/Items/Scarabs/ScarabDivinationCards3")--聖甲蟲：鍍金命運
--SetSaveIndex(nil,"1","Metadata/Items/Scarabs/ScarabDivinationCards4") --聖甲蟲：展翅命運
--SetSaveIndex(nil,"1","Metadata/Items/Scarabs/ScarabTorment1")--聖甲蟲：鏽蝕苦痛
--SetSaveIndex(nil,"1","Metadata/Items/Scarabs/ScarabTorment2")--聖甲蟲：圓滑苦痛
--SetSaveIndex(nil,"1","Metadata/Items/Scarabs/ScarabTorment3")--聖甲蟲：鍍金苦痛
--SetSaveIndex(nil,"1","Metadata/Items/Scarabs/ScarabTorment4")--聖甲蟲：展翅苦痛
--SetSaveIndex(nil,"1","Metadata/Items/Scarabs/ScarabStrongbox1")--聖甲蟲：鏽蝕伏擊
--SetSaveIndex(nil,"1","Metadata/Items/Scarabs/ScarabStrongbox2")--聖甲蟲：圓滑伏擊
--SetSaveIndex(nil,"1","Metadata/Items/Scarabs/ScarabStrongbox3")--聖甲蟲：鍍金伏擊
--SetSaveIndex(nil,"1","Metadata/Items/Scarabs/ScarabStrongbox4")--聖甲蟲：展翅伏擊
--SetSaveIndex(nil,"1","Metadata/Items/Scarabs/ScarabPerandus1")--聖甲蟲：鏽蝕普蘭德斯
--SetSaveIndex(nil,"1","Metadata/Items/Scarabs/ScarabPerandus2")--聖甲蟲：圓滑普蘭德斯
--SetSaveIndex(nil,"1","Metadata/Items/Scarabs/ScarabPerandus3")--聖甲蟲：鍍金普蘭德斯
--SetSaveIndex(nil,"1","Metadata/Items/Scarabs/ScarabPerandus4")--聖甲蟲：展翅普蘭德斯
--SetSaveIndex(nil,"1","Metadata/Items/Scarabs/ScarabMetamorph1")--聖甲蟲：鏽蝕鍊魔
--SetSaveIndex(nil,"1","Metadata/Items/Scarabs/ScarabMetamorph2")--聖甲蟲：圓滑鍊魔
--SetSaveIndex(nil,"1","Metadata/Items/Scarabs/ScarabMetamorph3")--聖甲蟲：鍍金鍊魔
--SetSaveIndex(nil,"1","Metadata/Items/Scarabs/ScarabMetamorph4")--聖甲蟲：展翅鍊魔
--SetSaveIndex(nil,"1","Metadata/Items/Scarabs/ScarabAbyss1")--聖甲蟲：鏽蝕深淵
--SetSaveIndex(nil,"1","Metadata/Items/Scarabs/ScarabAbyss2")--聖甲蟲：圓滑深淵
--SetSaveIndex(nil,"1","Metadata/Items/Scarabs/ScarabAbyss3")--聖甲蟲：鍍金深淵
--SetSaveIndex(nil,"1","Metadata/Items/Scarabs/ScarabAbyss4")--聖甲蟲：展翅深淵


--瞻妄玉區
--撿取譫妄玉
--不存
--SetGoodsCaoZuo(nil,"0|2","精良之譫妄玉","Metadata/Items/Currency/CurrencyAfflictionOrbCurrency")
--SetGoodsCaoZuo(nil,"0|2","卓越之譫妄玉","Metadata/Items/Currency/CurrencyAfflictionOrbUniques")
--SetGoodsCaoZuo(nil,"0|2","奇術之譫妄玉","Metadata/Items/Currency/CurrencyAfflictionOrbGems")
--SetGoodsCaoZuo(nil,"0|2","鐵匠之譫妄玉","Metadata/Items/Currency/CurrencyAfflictionOrbWeapons")
--SetGoodsCaoZuo(nil,"0|2","護甲之譫妄玉","Metadata/Items/Currency/CurrencyAfflictionOrbArmour")
--SetGoodsCaoZuo(nil,"0|2","製圖之譫妄玉","Metadata/Items/Currency/CurrencyAfflictionOrbMaps")
--SetGoodsCaoZuo(nil,"0|2","飾品之譫妄玉","Metadata/Items/Currency/CurrencyAfflictionOrbTrinkets")
--SetGoodsCaoZuo(nil,"0|2","深淵之譫妄玉","Metadata/Items/Currency/CurrencyAfflictionOrbAbyss")
--SetGoodsCaoZuo(nil,"0|2","卡爾葛之譫妄玉","Metadata/Items/Currency/CurrencyAfflictionOrbPerandus")
--SetGoodsCaoZuo(nil,"0|2","預感之譫妄玉","Metadata/Items/Currency/CurrencyAfflictionOrbHarbinger")
--SetGoodsCaoZuo(nil,"0|2","晦澀之譫妄玉","Metadata/Items/Currency/CurrencyAfflictionOrbBreach")
--SetGoodsCaoZuo(nil,"0|2","低語之譫妄玉","Metadata/Items/Currency/CurrencyAfflictionOrbEssences")
--SetGoodsCaoZuo(nil,"0|2","碎片之譫妄玉","Metadata/Items/Currency/CurrencyAfflictionOrbFragments")
--SetGoodsCaoZuo(nil,"0|2","飛掠之譫妄玉","Metadata/Items/Currency/CurrencyAfflictionOrbCurrency")
--SetGoodsCaoZuo(nil,"0|2","石化之譫妄玉","Metadata/Items/Currency/CurrencyAfflictionOrbFossils")
--SetGoodsCaoZuo(nil,"0|2","聖人之譫妄玉","Metadata/Items/Currency/CurrencyAfflictionOrbDivinationCards")
--SetGoodsCaoZuo(nil,"0|2","譫妄玉","Metadata/Items/Currency/CurrencyAfflictionOrbGeneric")
--SetGoodsCaoZuo(nil,"0|2","初始之譫妄玉","Metadata/Items/Currency/CurrencyAfflictionOrbTalismans")
--SetGoodsCaoZuo(nil,"0|2","帝王之譫妄玉","Metadata/Items/Currency/CurrencyAfflictionOrbLabyrinth")
--SetGoodsCaoZuo(nil,"0|2","永恆之譫妄玉","Metadata/Items/Currency/CurrencyAfflictionOrbIncubators")
--SetGoodsCaoZuo(nil,"0|2","凋落之譫妄玉","Metadata/Items/Currency/CurrencyAfflictionOrbBlight")
--SetGoodsCaoZuo(nil,"0|2","變態之譫妄玉","Metadata/Items/Currency/CurrencyAfflictionOrbMetamorphosis")
--將譫妄玉存入名為「4」頁面
--SetGoodsCaoZuo(nil,"4","精良之譫妄玉","Metadata/Items/Currency/CurrencyAfflictionOrbCurrency")
--SetGoodsCaoZuo(nil,"4","卓越之譫妄玉","Metadata/Items/Currency/CurrencyAfflictionOrbUniques")
--SetGoodsCaoZuo(nil,"4","奇術之譫妄玉","Metadata/Items/Currency/CurrencyAfflictionOrbGems")
--SetGoodsCaoZuo(nil,"4","鐵匠之譫妄玉","Metadata/Items/Currency/CurrencyAfflictionOrbWeapons")
--SetGoodsCaoZuo(nil,"4","護甲之譫妄玉","Metadata/Items/Currency/CurrencyAfflictionOrbArmour")
--SetGoodsCaoZuo(nil,"4","製圖之譫妄玉","Metadata/Items/Currency/CurrencyAfflictionOrbMaps")
--SetGoodsCaoZuo(nil,"4","飾品之譫妄玉","Metadata/Items/Currency/CurrencyAfflictionOrbTrinkets")
--SetGoodsCaoZuo(nil,"4","深淵之譫妄玉","Metadata/Items/Currency/CurrencyAfflictionOrbAbyss")
--SetGoodsCaoZuo(nil,"4","卡爾葛之譫妄玉","Metadata/Items/Currency/CurrencyAfflictionOrbPerandus")
--SetGoodsCaoZuo(nil,"4","預感之譫妄玉","Metadata/Items/Currency/CurrencyAfflictionOrbHarbinger")
--SetGoodsCaoZuo(nil,"4","晦澀之譫妄玉","Metadata/Items/Currency/CurrencyAfflictionOrbBreach")
--SetGoodsCaoZuo(nil,"4","低語之譫妄玉","Metadata/Items/Currency/CurrencyAfflictionOrbEssences")
--SetGoodsCaoZuo(nil,"4","碎片之譫妄玉","Metadata/Items/Currency/CurrencyAfflictionOrbFragments")
--SetGoodsCaoZuo(nil,"4","飛掠之譫妄玉","Metadata/Items/Currency/CurrencyAfflictionOrbCurrency")
--SetGoodsCaoZuo(nil,"4","石化之譫妄玉","Metadata/Items/Currency/CurrencyAfflictionOrbFossils")
--SetGoodsCaoZuo(nil,"4","聖人之譫妄玉","Metadata/Items/Currency/CurrencyAfflictionOrbDivinationCards")
--SetGoodsCaoZuo(nil,"4","譫妄玉","Metadata/Items/Currency/CurrencyAfflictionOrbGeneric")
--SetGoodsCaoZuo(nil,"4","初始之譫妄玉","Metadata/Items/Currency/CurrencyAfflictionOrbTalismans")
--SetGoodsCaoZuo(nil,"4","帝王之譫妄玉","Metadata/Items/Currency/CurrencyAfflictionOrbLabyrinth")
--SetGoodsCaoZuo(nil,"4","永恆之譫妄玉","Metadata/Items/Currency/CurrencyAfflictionOrbIncubators")
--SetGoodsCaoZuo(nil,"4","凋落之譫妄玉","Metadata/Items/Currency/CurrencyAfflictionOrbBlight")
--SetGoodsCaoZuo(nil,"4","變態之譫妄玉","Metadata/Items/Currency/CurrencyAfflictionOrbMetamorphosis")



--催化劑區
--撿取催化劑
--不撿
--SetGoodsCaoZuo(nil,"0|2","充能的催化劑","Metadata/Items/Currency/CurrencyJewelleryQualityCaster")
--SetGoodsCaoZuo(nil,"0|2","洶湧的催化劑","Metadata/Items/Currency/CurrencyJewelleryQualityElemental")
--SetGoodsCaoZuo(nil,"0|2","冶鍊的催化劑","Metadata/Items/Currency/CurrencyJewelleryQualityDefense")
--SetGoodsCaoZuo(nil,"0|2","本質的催化劑","Metadata/Items/Currency/CurrencyJewelleryQualityAttribute")
--SetGoodsCaoZuo(nil,"0|2","研磨的催化劑","Metadata/Items/Currency/CurrencyJewelleryQualityAttack")
--SetGoodsCaoZuo(nil,"0|2","富饒的催化劑","Metadata/Items/Currency/CurrencyJewelleryQualityResource")
--SetGoodsCaoZuo(nil,"0|2","多稜的催化劑","Metadata/Items/Currency/CurrencyJewelleryQualityResistance")
--SetGoodsCaoZuo(nil,"0|2","易變的催化劑","Metadata/Items/Currency/CurrencyJewelleryQualityCritical")
--SetGoodsCaoZuo(nil,"0|2","毒性的催化劑","Metadata/Items/Currency/CurrencyJewelleryQualityPhysicalChaos")
--SetGoodsCaoZuo(nil,"0|2","加速的催化劑","Metadata/Items/Currency/CurrencyJewelleryQualitySpeed")
--將催化劑存入名為「雜物」的頁面 
--不存
--SetSaveIndex(nil,"雜物","充能的催化劑","Metadata/Items/Currency/CurrencyJewelleryQualityCaster",nil,nil,nil,nil)
--SetSaveIndex(nil,"雜物","洶湧的催化劑","Metadata/Items/Currency/CurrencyJewelleryQualityElemental",nil,nil,nil,nil)
--SetSaveIndex(nil,"雜物","冶鍊的催化劑","Metadata/Items/Currency/CurrencyJewelleryQualityDefense",nil,nil,nil,nil)
--SetSaveIndex(nil,"雜物","本質的催化劑","Metadata/Items/Currency/CurrencyJewelleryQualityAttribute",nil,nil,nil,nil)
--SetSaveIndex(nil,"雜物","研磨的催化劑","Metadata/Items/Currency/CurrencyJewelleryQualityAttack",nil,nil,nil,nil)
--SetSaveIndex(nil,"雜物","富饒的催化劑","Metadata/Items/Currency/CurrencyJewelleryQualityResource",nil,nil,nil,nil)
--SetSaveIndex(nil,"雜物","多稜的催化劑","Metadata/Items/Currency/CurrencyJewelleryQualityResistance",nil,nil,nil,nil)
--SetSaveIndex(nil,"雜物","易變的催化劑","Metadata/Items/Currency/CurrencyJewelleryQualityCritical",nil,nil,nil,nil)
--SetSaveIndex(nil,"雜物","毒性的催化劑","Metadata/Items/Currency/CurrencyJewelleryQualityPhysicalChaos",nil,nil,nil,nil)
--SetSaveIndex(nil,"雜物","加速的催化劑","Metadata/Items/Currency/CurrencyJewelleryQualitySpeed",nil,nil,nil,nil)















--大多傳奇垃圾賣出
SetGoodsCaoZuo(nil,"0|1|4",nil,nil,nil,nil,nil,nil,"3")
--傳奇道具拾取、存取頁名為「4」
SetSaveIndex(nil,"4",nil,nil,nil,"Arakaali's Fang")
SetSaveIndex(nil,"4",nil,nil,nil,"Tremor Rod")
SetSaveIndex(nil,"4",nil,nil,nil,"Cold Iron Point")
SetSaveIndex(nil,"4",nil,nil,nil,"Void Battery")
SetSaveIndex(nil,"4",nil,nil,nil,"Soulwrest")
SetSaveIndex(nil,"4",nil,nil,nil,"Asenath's Chant")
SetSaveIndex(nil,"4",nil,nil,nil,"Alpha's Howl")
SetSaveIndex(nil,"4",nil,nil,nil,"Devoto's Devotion")
SetSaveIndex(nil,"4",nil,nil,nil,"Frostferno")
SetSaveIndex(nil,"4",nil,nil,nil,"The Gull")
SetSaveIndex(nil,"4",nil,nil,nil,"Maw of Conquest")
SetSaveIndex(nil,"4",nil,nil,nil,"Asenath's Gentle Touch")
SetSaveIndex(nil,"4",nil,nil,nil,"Shadows and Dust")
SetSaveIndex(nil,"4",nil,nil,nil,"Garukhan's Flight")
SetSaveIndex(nil,"4",nil,nil,nil,"Seven-League Step")
SetSaveIndex(nil,"4",nil,nil,nil,"Skyforth")
SetSaveIndex(nil,"4",nil,nil,nil,"Corpsewalker")
SetSaveIndex(nil,"4",nil,nil,nil,"Doryani's Prototype")
SetSaveIndex(nil,"4",nil,nil,nil,"The Brass Dome")
SetSaveIndex(nil,"4",nil,nil,nil,"Hyrri's Ire")
SetSaveIndex(nil,"4",nil,nil,nil,"Fleshcrafter")
SetSaveIndex(nil,"4",nil,nil,nil,"Cloak of Defiance")
SetSaveIndex(nil,"4",nil,nil,nil,"Shavronne's Wrappings")
SetSaveIndex(nil,"4",nil,nil,nil,"Inpulsa's Broken Heart")
SetSaveIndex(nil,"4",nil,nil,nil,"Carcass Jack")
SetSaveIndex(nil,"4",nil,nil,nil,"Tabula Rasa")
SetSaveIndex(nil,"4",nil,nil,nil,"Maloney's Mechanism")
SetSaveIndex(nil,"4",nil,nil,nil,"Hyrri's Demise")
SetSaveIndex(nil,"4",nil,nil,nil,"The Squire")
SetSaveIndex(nil,"4",nil,nil,nil,"Atziri's Reflection")
SetSaveIndex(nil,"4",nil,nil,nil,"Aegis Aurora")
SetSaveIndex(nil,"4",nil,nil,nil,"The Anticipation")
SetSaveIndex(nil,"4",nil,nil,nil,"The Surrender")
SetSaveIndex(nil,"4",nil,nil,nil,"Prism Guardian")
SetSaveIndex(nil,"4",nil,nil,nil,"Mageblood")
SetSaveIndex(nil,"4",nil,nil,nil,"Headhunter")
SetSaveIndex(nil,"4",nil,nil,nil,"Ryslatha's Coil")
SetSaveIndex(nil,"4",nil,nil,nil,"Dyadian Dawn")
SetSaveIndex(nil,"4",nil,nil,nil,"The Burden of Truth")
SetSaveIndex(nil,"4",nil,nil,nil,"Xoph's Blood")
SetSaveIndex(nil,"4",nil,nil,nil,"Badge of the Brotherhood")
SetSaveIndex(nil,"4",nil,nil,nil,"Xoph's Heart")
SetSaveIndex(nil,"4",nil,nil,nil,"The Pandemonius")
SetSaveIndex(nil,"4",nil,nil,nil,"The Halcyon")
SetSaveIndex(nil,"4",nil,nil,nil,"Choir of the Storm")
SetSaveIndex(nil,"4",nil,nil,nil,"Voice of the Storm")
SetSaveIndex(nil,"4",nil,nil,nil,"The Primordial Chain")
SetSaveIndex(nil,"4",nil,nil,nil,"The Jinxed Juju")
SetSaveIndex(nil,"4",nil,nil,nil,"Voll's Devotion")
SetSaveIndex(nil,"4",nil,nil,nil,"Blackflame")
SetSaveIndex(nil,"4",nil,nil,nil,"Berek's Respite")
SetSaveIndex(nil,"4",nil,nil,nil,"Call of the Brotherhood")
SetSaveIndex(nil,"4",nil,nil,nil,"Ventor's Gamble")
SetSaveIndex(nil,"4",nil,nil,nil,"Snakepit")
SetSaveIndex(nil,"4",nil,nil,nil,"Fortress Covenant")
SetSaveIndex(nil,"4",nil,nil,nil,"Dead Reckoning")
SetSaveIndex(nil,"4",nil,nil,nil,"Unending Hunger")
SetSaveIndex(nil,"4",nil,nil,nil,"Energy From Within")
SetSaveIndex(nil,"4",nil,nil,nil,"Primordial Harmony")
SetSaveIndex(nil,"4",nil,nil,nil,"To Dust")
SetSaveIndex(nil,"4",nil,nil,nil,"Clear Mind")
SetSaveIndex(nil,"4",nil,nil,nil,"Healthy Mind")
SetSaveIndex(nil,"4",nil,nil,nil,"Inspired Learning")
SetSaveIndex(nil,"4",nil,nil,nil,"Primordial Might")
SetSaveIndex(nil,"4",nil,nil,nil,"Rain of Splinters")
SetSaveIndex(nil,"4",nil,nil,nil,"Mantra of Flames")
SetSaveIndex(nil,"4",nil,nil,nil,"Might of the Meek")
SetSaveIndex(nil,"4",nil,nil,nil,"The Interrogation")
SetSaveIndex(nil,"4",nil,nil,nil,"One With Nothing")
SetSaveIndex(nil,"4",nil,nil,nil,"Kitava's Teachings")
SetSaveIndex(nil,"4",nil,nil,nil,"Unnatural Instinct")
SetSaveIndex(nil,"4",nil,nil,nil,"Intuitive Leap")
SetSaveIndex(nil,"4",nil,nil,nil,"Quickening Covenant")
SetSaveIndex(nil,"4",nil,nil,nil,"Lioneye's Fall")
SetGoodsCaoZuo(nil,"0|2|4",nil,nil,nil,"Arakaali's Fang")
SetGoodsCaoZuo(nil,"0|2|4",nil,nil,nil,"Tremor Rod")
SetGoodsCaoZuo(nil,"0|2|4",nil,nil,nil,"Cold Iron Point")
SetGoodsCaoZuo(nil,"0|2|4",nil,nil,nil,"Void Battery")
SetGoodsCaoZuo(nil,"0|2|4",nil,nil,nil,"Soulwrest")
SetGoodsCaoZuo(nil,"0|2|4",nil,nil,nil,"Asenath's Chant")
SetGoodsCaoZuo(nil,"0|2|4",nil,nil,nil,"Alpha's Howl")
SetGoodsCaoZuo(nil,"0|2|4",nil,nil,nil,"Devoto's Devotion")
SetGoodsCaoZuo(nil,"0|2|4",nil,nil,nil,"Frostferno")
SetGoodsCaoZuo(nil,"0|2|4",nil,nil,nil,"The Gull")
SetGoodsCaoZuo(nil,"0|2|4",nil,nil,nil,"Maw of Conquest")
SetGoodsCaoZuo(nil,"0|2|4",nil,nil,nil,"Asenath's Gentle Touch")
SetGoodsCaoZuo(nil,"0|2|4",nil,nil,nil,"Shadows and Dust")
SetGoodsCaoZuo(nil,"0|2|4",nil,nil,nil,"Garukhan's Flight")
SetGoodsCaoZuo(nil,"0|2|4",nil,nil,nil,"Seven-League Step")
SetGoodsCaoZuo(nil,"0|2|4",nil,nil,nil,"Skyforth")
SetGoodsCaoZuo(nil,"0|2|4",nil,nil,nil,"Corpsewalker")
SetGoodsCaoZuo(nil,"0|2|4",nil,nil,nil,"Doryani's Prototype")
SetGoodsCaoZuo(nil,"0|2|4",nil,nil,nil,"The Brass Dome")
SetGoodsCaoZuo(nil,"0|2|4",nil,nil,nil,"Hyrri's Ire")
SetGoodsCaoZuo(nil,"0|2|4",nil,nil,nil,"Fleshcrafter")
SetGoodsCaoZuo(nil,"0|2|4",nil,nil,nil,"Cloak of Defiance")
SetGoodsCaoZuo(nil,"0|2|4",nil,nil,nil,"Shavronne's Wrappings")
SetGoodsCaoZuo(nil,"0|2|4",nil,nil,nil,"Inpulsa's Broken Heart")
SetGoodsCaoZuo(nil,"0|2|4",nil,nil,nil,"Carcass Jack")
SetGoodsCaoZuo(nil,"0|2|4",nil,nil,nil,"Tabula Rasa")
SetGoodsCaoZuo(nil,"0|2|4",nil,nil,nil,"Maloney's Mechanism")
SetGoodsCaoZuo(nil,"0|2|4",nil,nil,nil,"Hyrri's Demise")
SetGoodsCaoZuo(nil,"0|2|4",nil,nil,nil,"The Squire")
SetGoodsCaoZuo(nil,"0|2|4",nil,nil,nil,"Atziri's Reflection")
SetGoodsCaoZuo(nil,"0|2|4",nil,nil,nil,"Aegis Aurora")
SetGoodsCaoZuo(nil,"0|2|4",nil,nil,nil,"The Anticipation")
SetGoodsCaoZuo(nil,"0|2|4",nil,nil,nil,"The Surrender")
SetGoodsCaoZuo(nil,"0|2|4",nil,nil,nil,"Prism Guardian")
SetGoodsCaoZuo(nil,"0|2|4",nil,nil,nil,"Mageblood")
SetGoodsCaoZuo(nil,"0|2|4",nil,nil,nil,"Headhunter")
SetGoodsCaoZuo(nil,"0|2|4",nil,nil,nil,"Ryslatha's Coil")
SetGoodsCaoZuo(nil,"0|2|4",nil,nil,nil,"Dyadian Dawn")
SetGoodsCaoZuo(nil,"0|2|4",nil,nil,nil,"The Burden of Truth")
SetGoodsCaoZuo(nil,"0|2|4",nil,nil,nil,"Xoph's Blood")
SetGoodsCaoZuo(nil,"0|2|4",nil,nil,nil,"Badge of the Brotherhood")
SetGoodsCaoZuo(nil,"0|2|4",nil,nil,nil,"Xoph's Heart")
SetGoodsCaoZuo(nil,"0|2|4",nil,nil,nil,"The Pandemonius")
SetGoodsCaoZuo(nil,"0|2|4",nil,nil,nil,"The Halcyon")
SetGoodsCaoZuo(nil,"0|2|4",nil,nil,nil,"Choir of the Storm")
SetGoodsCaoZuo(nil,"0|2|4",nil,nil,nil,"Voice of the Storm")
SetGoodsCaoZuo(nil,"0|2|4",nil,nil,nil,"The Primordial Chain")
SetGoodsCaoZuo(nil,"0|2|4",nil,nil,nil,"The Jinxed Juju")
SetGoodsCaoZuo(nil,"0|2|4",nil,nil,nil,"Voll's Devotion")
SetGoodsCaoZuo(nil,"0|2|4",nil,nil,nil,"Blackflame")
SetGoodsCaoZuo(nil,"0|2|4",nil,nil,nil,"Berek's Respite")
SetGoodsCaoZuo(nil,"0|2|4",nil,nil,nil,"Call of the Brotherhood")
SetGoodsCaoZuo(nil,"0|2|4",nil,nil,nil,"Ventor's Gamble")
SetGoodsCaoZuo(nil,"0|2|4",nil,nil,nil,"Snakepit")
SetGoodsCaoZuo(nil,"0|2|4",nil,nil,nil,"Fortress Covenant")
SetGoodsCaoZuo(nil,"0|2|4",nil,nil,nil,"Dead Reckoning")
SetGoodsCaoZuo(nil,"0|2|4",nil,nil,nil,"Unending Hunger")
SetGoodsCaoZuo(nil,"0|2|4",nil,nil,nil,"Energy From Within")
SetGoodsCaoZuo(nil,"0|2|4",nil,nil,nil,"Primordial Harmony")
SetGoodsCaoZuo(nil,"0|2|4",nil,nil,nil,"To Dust")
SetGoodsCaoZuo(nil,"0|2|4",nil,nil,nil,"Clear Mind")
SetGoodsCaoZuo(nil,"0|2|4",nil,nil,nil,"Healthy Mind")
SetGoodsCaoZuo(nil,"0|2|4",nil,nil,nil,"Inspired Learning")
SetGoodsCaoZuo(nil,"0|2|4",nil,nil,nil,"Primordial Might")
SetGoodsCaoZuo(nil,"0|2|4",nil,nil,nil,"Rain of Splinters")
SetGoodsCaoZuo(nil,"0|2|4",nil,nil,nil,"Mantra of Flames")
SetGoodsCaoZuo(nil,"0|2|4",nil,nil,nil,"Might of the Meek")
SetGoodsCaoZuo(nil,"0|2|4",nil,nil,nil,"The Interrogation")
SetGoodsCaoZuo(nil,"0|2|4",nil,nil,nil,"One With Nothing")
SetGoodsCaoZuo(nil,"0|2|4",nil,nil,nil,"Kitava's Teachings")
SetGoodsCaoZuo(nil,"0|2|4",nil,nil,nil,"Unnatural Instinct")
SetGoodsCaoZuo(nil,"0|2|4",nil,nil,nil,"Intuitive Leap")
SetGoodsCaoZuo(nil,"0|2|4",nil,nil,nil,"Quickening Covenant")
SetGoodsCaoZuo(nil,"0|2|4",nil,nil,nil,"Lioneye's Fall")







------------------掛機類設定
g_yijieNoWhiteMonster=false		--异界时是否不打白怪 true为不打 nil或false为打
g_yijieNoWhiteBox=true		--异界时是否不开白箱子 true为不开 nil或false为开
g_useYiJieWanChengDuLv=75	--使用下面异界完成度那个设置的等级，如果未到等则刷全图
g_yiJieWanChengDu=0.8		--异界完成度 完成多少就回去 为1或1以下的小数
g_yongHengShiBeiLv=90		--大于等于多少级打永恒石碑 
g_needTaFangLv=90			--大于等于多少级打塔防
g_needLianMoLv=90			--大于等于多少级打炼魔
g_attackFreezeMonsterLv=90	--大于等于多少级打冰冻怪
g_needChuanYueLv=100			--大于等于多少级打穿越怪
g_needLieXiLv=90			--大於等于多少级打时空裂缝怪
g_needMiWuLv=90				--大于等于多少级打迷雾
g_needZaFenLv=90           --大于等于多少级打炸墳


g_youXianMapLv= 85
SetYiJieShuaTuModeByMapCnt(60,nil,2)--仓库中地图数量满20 启用速刷 直通boss
SetYiJieShuaTuModeByMapCnt(20,0.6,0)--仓库中地图数量满10 刷6成 且要打完BOSS
-- SetYiJieShuaTuModeByMapCnt(0,1,nil)--仓库中地图数量满0 刷全图


--先過濾掉不打的圖，公式如下:
-- SetNoUseMapShuXing(className)--设置不使用带有某种属性的地图,参数 className为属性类名
SetNoUseMapShuXing("map_monsters_reflect_%_physical_damage")--设置不打物理反射属性
SetNoUseMapShuXing("map_monsters_reflect_%_elemental_damage")--设置不打魔法反射属性
SetNoUseMapShuXing("map_players_no_regeneration_including_es")--无法回复

--地圖類大項

SetNotMapGoMap("2_9_1",1)	--沒有圖就刷水道，我設定一百次，要設定幾次看個人

g_yiJieLv=69				--幾等才刷圖，我都設定75等
g_checkSellMapCnt=80		--地圖超過幾張開始賣圖
g_destroyNoUseMap=true		--銷毀不使用的地圖，例如元反物反
g_mapUseFuHaoLv=nil		--大于等于多少级对蓝图使用富豪石 nil为永远不使用
g_mapUseZengFuLv=70			--大于等于多少级对蓝图使用增幅石 nil为永远不使用
g_mapUseDianJingLv=70		--大于等于多少级对白图使用点金石 nil为永远不使用
g_mapUseTuiBianLv=nil		--大于等于多少级对白图使用蜕变石 nil为永远不使用
g_mapUseJiHuiLv=nil			--大于等于多少级对白图使用机会石 nil为永远不使用
g_mapUseWaErLv=nil			--大于等于多少级对白、蓝地图使用瓦尔宝珠 nil为永远不使用
g_mapUseDingZiLv=16			--大于等于多少级使用制图钉 nil为永远不使用
g_noUseMapLv=nil			--不使用、不捡多少阶及以上的地图 nil或0为忽略 设置优先的地图除外 (不會撿圖的看這邊!!!)

g_mapUseOrangeMap=false		--不打傳奇圖

--SetYouXianUseMapData(name,className,color)--设置优先使用的异界地图 
--name 字符串型 地图名 
--className 字符串型 地图类名 
--color 字符串型 颜色 0白1蓝2黄3橙 中间用|隔开
--SetYouXianUseMapData("危城廣場","Metadata/Items/Maps/MapWorldsCitySquare","0|1|2")
--SetYouXianUseMapData("緋紅神殿","Metadata/Items/Maps/MapWorldsCrimsonTemple","0|1|2")
SetYouXianUseMapData("崩壞長廊","Metadata/Items/Maps/MapWorldsArcade","0|1|2")
SetYouXianUseMapData("危城巷弄","Metadata/Items/Maps/MapWorldsAlleyways","0|1|2")
SetYouXianUseMapData("平顶荒漠","Metadata/Items/Maps/MapWorldsMesa","0|1|2")
SetYouXianUseMapData("晨曦墓地","Metadata/Items/Maps/MapWorldsCemetery","0|2")
SetYouXianUseMapData("墮影墓場","Metadata/Items/Maps/MapWorldsGraveyard","0|2")
SetYouXianUseMapData("惡咒陵墓","Metadata/Items/Maps/MapWorldsCursedCrypt","0|2")
SetYouXianUseMapData("白沙灘頭","Metadata/Items/Maps/MapWorldsBeach","0|1|2")
SetYouXianUseMapData("荒涼牧野","Metadata/Items/Maps/MapAtlasSulphurWastes","0|1|2")
SetYouXianUseMapData("劇毒林谷","Metadata/Items/Maps/MapWorldsJungleValley","0|1|2")
SetYouXianUseMapData("軍械庫","Metadata/Items/Maps/MapWorldsArmoury","0|2")
SetYouXianUseMapData("致命岩灘","Metadata/Items/Maps/MapWorldsStrand","0|2")
SetYouXianUseMapData("乾潮林地","Metadata/Items/Maps/MapWorldsPeninsula","0|2")
SetYouXianUseMapData("羈破牢","Metadata/Items/Maps/MapWorldsCage","0|2")
SetYouXianUseMapData("冰川山丘","Metadata/Items/Maps/MapWorldsGorge","0|2")
SetYouXianUseMapData("禁魂炎獄","Metadata/Items/Maps/MapWorldsDungeon","0|2")
SetYouXianUseMapData("極原冰帽","Metadata/Items/Maps/MapWorldsIceberg","0|2")
SetYouXianUseMapData("毒牙海港","Metadata/Items/Maps/MapWorldsWharf","0|2")
SetYouXianUseMapData("挖掘場","Metadata/Items/Maps/MapAtlasExcavation","0|2")
SetYouXianUseMapData("濱海幽穴","Metadata/Items/Maps/MapWorldsUndergroundSea","0|2")
SetYouXianUseMapData("旱木林地","Metadata/Items/Maps/MapWorldsAshenWood","0|2")
SetYouXianUseMapData("貧瘠之地","Metadata/Items/Maps/MapWorldsDesert","0|2")
SetYouXianUseMapData("骨跡陵墓","Metadata/Items/Maps/MapWorldsBoneCrypt","0|2")
SetYouXianUseMapData("古兵工廠","Metadata/Items/Maps/MapWorldsArsenal","0|2")
SetYouXianUseMapData("荒地","Metadata/Items/Maps/MapWorldsWasteland","0|2")
SetYouXianUseMapData("奇術之庭","Metadata/Items/Maps/MapTier13_2","0|1|2")
SetYouXianUseMapData("遠古市集","Metadata/Items/Maps/MapWorldsBazaar","0|2")
SetYouXianUseMapData("暮光海灘","Metadata/Items/Maps/MapWorldsShore","0|2")
SetYouXianUseMapData("園林苑","Metadata/Items/Maps/MapWorldsPark","0|2")
SetYouXianUseMapData("驚懼樹叢","Metadata/Items/Maps/MapWorldsThicket","0|2")
SetYouXianUseMapData("毒菌魔域","Metadata/Items/Maps/MapWorldsSprings","0|2")
SetYouXianUseMapData("晨曦墓地","Metadata/Items/Maps/MapWorldsCemetery","0|2")
SetYouXianUseMapData("穢陰獄牢","Metadata/Items/Maps/MapWorldsPen","0|2")
SetYouXianUseMapData("幽魂宅邸","Metadata/Items/Maps/MapWorldsHauntedMansion","0|2")
SetYouXianUseMapData("異蛛墓塚","Metadata/Items/Maps/MapWorldsArachnidTomb","0|2")
SetYouXianUseMapData("熱林塚墓","Metadata/Items/Maps/MapWorldsBarrows","0|2")
SetYouXianUseMapData("實驗居所","Metadata/Items/Maps/MapWorldsLaboratory","0|2")
SetYouXianUseMapData("無疆田野","Metadata/Items/Maps/MapWorldsFields","0|2")
SetYouXianUseMapData("神主居所","Metadata/Items/Maps/MapTier9_4","0|2")
SetYouXianUseMapData("靜縊陵墓","Metadata/Items/Maps/MapAtlasResidence","0|2")
SetYouXianUseMapData("火山炎域","Metadata/Items/Maps/MapAtlasVolcano","0|2")
SetYouXianUseMapData("疾風峽灣","Metadata/Items/Maps/MapWorldsCoves","0|2")
SetYouXianUseMapData("魔靈幻獄","Metadata/Items/Maps/MapWorldsPhantasmagoria","0|2")

--換圖
SetSellGoodsData("挖掘場","Metadata/Items/Maps/MapWorldsExcavation",3,"0|1|2")
SetSellGoodsData("絕望燈塔","Metadata/Items/Maps/MapWorldsLighthouse",3,"0|1|2")
SetSellGoodsData("雲頂鐘樓","Metadata/Items/Maps/MapWorldsBelfry",3,"0|1|2")
SetSellGoodsData("惡臭沼地","Metadata/Items/Maps/MapWorldsMarshes",3,"0|1|2")
SetSellGoodsData("墓影書坊","Metadata/Items/Maps/MapWorldsScriptorium",3,"0|1|2")
SetSellGoodsData("淤塞水道","Metadata/Items/Maps/MapWorldsStagnation",3,"0|1|2")
SetSellGoodsData("無疆田野","Metadata/Items/Maps/MapWorldsFields",3,"0|1|2")
SetSellGoodsData("危城巷弄","Metadata/Items/Maps/MapWorldsAlleyways",3,"0|1|2")
SetSellGoodsData("嬋娟神殿","Metadata/Items/Maps/MapWorldsMoonTemple",3,"0|1|2")
SetSellGoodsData("岔河","Metadata/Items/Maps/MapWorldsForkingRiver",3,"0|1|2")
SetSellGoodsData("遺跡廢墟","Metadata/Items/Maps/MapWorldsCastleRuins",3,"0|1|2")
SetSellGoodsData("致命岩灘","Metadata/Items/Maps/MapWorldsStrand",3,"0|1|2")
SetSellGoodsData("岩漿熔湖","Metadata/Items/Maps/MapWorldsLavaLake",3,"0|1|2")
SetSellGoodsData("露台花園","Metadata/Items/Maps/MapWorldsTerrace",3,"0|1|2")
SetSellGoodsData("靜縊陵墓","Metadata/Items/Maps/MapWorldsMausoleum",3,"0|1|2")
SetSellGoodsData("神域之殿","Metadata/Items/Maps/MapWorldsPalace",3,"0|1|2")
SetSellGoodsData("長草遺跡","Metadata/Items/Maps/MapWorldsOvergrownRuin",3,"0|1|2")
SetSellGoodsData("远古市集","Metadata/Items/Maps/MapWorldsBazaar",3,"0|1|2")
SetSellGoodsData("滨海幽穴","Metadata/Items/Maps/MapWorldsUndergroundSea",3,"0|1|2")
SetSellGoodsData("平顶荒漠","Metadata/Items/Maps/MapWorldsMesa",3,"0|1|2")
SetSellGoodsData("神域之殿","Metadata/Items/Maps/MapWorldsPalace",3,"0|1|2")
SetSellGoodsData("洪灾矿坑","Metadata/Items/Maps/MapWorldsFloodedMine",3,"0|1|2")
SetSellGoodsData("岔河","Metadata/Items/Maps/MapWorldsForkingRiver",3,"0|1|2")
SetSellGoodsData("寒河","Metadata/Items/Maps/MapWorldsColdRiver",3,"0|1|2")
SetSellGoodsData("异蛛巢穴","Metadata/Items/Maps/MapWorldsArachnidNest",3,"0|1|2")
SetSellGoodsData("死寂泥沟","Metadata/Items/Maps/MapWorldsWastePool",3,"0|1|2")
SetSellGoodsData("奇术秘殿","Metadata/Items/Maps/MapWorldsShrine",3,"0|1|2")
SetSellGoodsData("圣殿","Metadata/Items/Maps/MapWorldsBasilica",3,"0|1|2")
SetSellGoodsData("奇术之庭","Metadata/Items/Maps/MapWorldsCourtyard",3,"0|1|2")
SetSellGoodsData("暮光海滩","Metadata/Items/Maps/MapWorldsShore",3,"0|1|2")
SetSellGoodsData("月色迴廊","Metadata/Items/Maps/MapWorldsPromenade",3,"0|1|2")
SetSellGoodsData("疾风峡湾","Metadata/Items/Maps/MapWorldsCoves",3,"0|1|2")
SetSellGoodsData("白沙滩头","Metadata/Items/Maps/MapWorldsBeach",3,"0|1|2")
SetSellGoodsData("腐败下水道","Metadata/Items/Maps/MapWorldsToxicSewer",3,"0|1|2")
SetSellGoodsData("熔岩之室","Metadata/Items/Maps/MapWorldsLavaChamber",3,"0|1|2")
SetSellGoodsData("婵娟神殿","Metadata/Items/Maps/MapWorldsMoonTemple",3,"0|1|2")
SetSellGoodsData("熔火岩滩","Metadata/Items/Maps/MapWorldsEstuary",3,"0|1|2")
SetSellGoodsData("大决斗场","Metadata/Items/Maps/MapWorldsColosseum",3,"0|1|2")
SetSellGoodsData("静缢陵墓","Metadata/Items/Maps/MapWorldsMausoleum",3,"0|1|2")
SetSellGoodsData("惊惧树丛","Metadata/Items/Maps/MapWorldsThicket",3,"0|1|2")
SetSellGoodsData("魔影墓场","Metadata/Items/Maps/MapWorldsNecropolis",3,"0|1|2")
SetSellGoodsData("闇狱尖塔","Metadata/Items/Maps/MapWorldsTower",3,"0|1|2")
SetSellGoodsData("夺魂之殿","Metadata/Items/Maps/MapWorldsTemple",3,"0|1|2")
SetSellGoodsData("赤贫居所","Metadata/Items/Maps/MapWorldsGhetto",3,"0|1|2")
SetSellGoodsData("羁破牢笼","Metadata/Items/Maps/MapWorldsMuseum",3,"0|1|2")
SetSellGoodsData("古博物館","Metadata/Items/Maps/MapWorldsCage",3,"0|1|2")
SetSellGoodsData("失落城塢","Metadata/Items/Maps/MapWorldsPort",3,"0|1|2")
SetSellGoodsData("魔靈幻獄","Metadata/Items/Maps/MapWorldsPhantasmagoria",3,"0|1|2")
SetSellGoodsData("骨跡陵墓","Metadata/Items/Maps/MapWorldsBoneCrypt",3,"0|1|2")
SetSellGoodsData("陰暗墓塚","Metadata/Items/Maps/MapWorldsSepulchre",3,"0|1|2")
SetSellGoodsData("海風高原","Metadata/Items/Maps/MapWorldsPlateau",3,"0|1|2")
SetSellGoodsData("火山炎口","Metadata/Items/Maps/MapWorldsCaldera",3,"0|1|2")
SetSellGoodsData("疾風峽灣","Metadata/Items/Maps/MapWorldsCoves",3,"0|1|2")
SetSellGoodsData("巨蛛巢穴","Metadata/Items/Maps/MapWorldsSpiderLair",3,"0|1|2")
SetSellGoodsData("暮光海灘","Metadata/Items/Maps/MapWorldsShore",3,"0|1|2")
SetSellGoodsData("濱海山丘","Metadata/Items/Maps/MapWorldsAtoll",3,"0|1|2")
SetSellGoodsData("瓦爾金字塔","Metadata/Items/Maps/MapWorldsVaalPyramid",3,"0|1|2")
SetSellGoodsData("異蛛巢穴","Metadata/Items/Maps/MapWorldsArachnidNest",3,"0|1|2")
SetSellGoodsData("破碎堡礁","Metadata/Items/Maps/MapWorldsCoralRuins",3,"0|1|2")
SetSellGoodsData("神主居所","Metadata/Items/Maps/MapWorldsResidence",3,"0|1|2")
SetSellGoodsData("靜縊陵墓","Metadata/Items/Maps/MapWorldsMausoleum",3,"0|1|2")
SetSellGoodsData("驚懼樹叢","Metadata/Items/Maps/MapWorldsThicket",3,"0|1|2")
SetSellGoodsData("儲物倉","Metadata/Items/Maps/MapWorldsSilo",3,"0|1|2")
SetSellGoodsData("奇術秘殿","Metadata/Items/Maps/MapWorldsShrine",3,"0|1|2")
SetSellGoodsData("奇術之庭","Metadata/Items/Maps/MapWorldsCourtyard",3,"0|1|2")
SetSellGoodsData("奪魂之殿","Metadata/Items/Maps/MapWorldsTemple",3,"0|1|2")
SetSellGoodsData("實驗居所","Metadata/Items/Maps/MapWorldsLaboratory",3,"0|1|2")
SetSellGoodsData("怒浪之港","Metadata/Items/Maps/MapWorldsPier",3,"0|1|2")
SetSellGoodsData("瘴氣泥沼","Metadata/Items/Maps/MapWorldsBog",3,"0|1|2")
SetSellGoodsData("酸岩酸嶼","Metadata/Items/Maps/MapWorldsAcidLakes",3,"0|1|2")
SetSellGoodsData("象牙神殿","Metadata/Items/Maps/MapWorldsIvoryTemple",3,"0|1|2")
SetSellGoodsData("血腥沼澤","Metadata/Items/Maps/MapWorldsPrimordialPool",3,"0|1|2")
SetSellGoodsData("乾海","Metadata/Items/Maps/MapWorldsDrySea",3,"0|1|2")
SetSellGoodsData("病疫林谷","Metadata/Items/Maps/MapWorldsInfestedValley",3,"0|1|2")
SetSellGoodsData("血腥陣地","Metadata/Items/Maps/MapWorldsTortureChamber",3,"0|1|2")
SetSellGoodsData("密林果園","Metadata/Items/Maps/MapWorldsOrchard",3,"0|1|2")
SetSellGoodsData("暮色沙丘","Metadata/Items/Maps/MapWorldsDunes",3,"0|1|2")
SetSellGoodsData("餓獸巢穴","Metadata/Items/Maps/MapWorldsLair",3,"0|1|2")
SetSellGoodsData("暮色沙丘","Metadata/Items/Maps/MapWorldsDunes",3,"0|1|2")

--SetSellGoodsData(name,className,cnt,color)--換圖包 (上方設定要換才會換，不要問白癡問題)
--name=物品名 className=物品类名 先识别物品名 识别不到就识别类名 cnt=够多少去卖 color=颜色 0白 1蓝 2黄 多个用|隔开
----SetSellGoodsData("劇毒林谷","Metadata/Items/Maps/MapWorldsJungleValley",3,"0|1|2|")
----SetSellGoodsData("闇獄尖塔","Metadata/Items/Maps/MapAtlasTower",3,"0|1|2")
----SetSellGoodsData("暮光海灘","Metadata/Items/Maps/MapAtlasShore",3,"0|1|2")
----SetSellGoodsData("巨蛛之林","Metadata/Items/Maps/MapWorldsSpiderForest",6,"0|1|2")
----SetSellGoodsData("凍原小屋","Metadata/Items/Maps/MapWorldsFrozenCabins",3,"0|1|2|")
----SetSellGoodsData("惡靈學院","Metadata/Items/Maps/MapAtlasAcademy",3,"0|1|2|")
----SetSellGoodsData("幽魂監牢","Metadata/Items/Maps/MapWorldsCells",3,"0|1|2|")
----SetSellGoodsData("月色迴廊","Metadata/Items/Maps/MapWorldsPromenade",3,"0|1|2|")
----SetSellGoodsData("奇術秘殿","Metadata/Items/Maps/MapWorldsShrine",3,"0|1|2|")
----SetSellGoodsData("詭譎晶洞","Metadata/Items/Maps/MapWorldsGeode",3,"0|1|2|")
----SetSellGoodsData("神域之殿","Metadata/Items/Maps/MapAtlasPalace",3,"0|1|2|")
----SetSellGoodsData("血腥陣地","Metadata/Items/Maps/MapWorldsTortureChamber",3,"0|1|2|")
----SetSellGoodsData("迷宮花園","Metadata/Items/Maps/MapAtlasTerrace",3,"0|1|2|")
----SetSellGoodsData("鐵鏽工廠","Metadata/Items/Maps/MapAtlasFactory",3,"0|1|2|")
----SetSellGoodsData("岔河","Metadata/Items/Maps/MapWorldsForkingRiver",3,"0|1|2|")
----SetSellGoodsData("病疫林谷","Metadata/Items/Maps/MapWorldsInfestedValley",3,"0|1|2|")
----SetSellGoodsData("餓獸巢穴","Metadata/Items/Maps/MapAtlasLair",3,"0|1|2|")
----SetSellGoodsData("地底之河","Metadata/Items/Maps/MapAtlasUndergroundRiver",3,"0|1|2|")
----SetSellGoodsData("殘破殞坑","Metadata/Items/Maps/MapWorldsTribunal",3,"0|1|2|")
----SetSellGoodsData("幽暗地穴","Metadata/Items/Maps/MapAtlasGrotto",3,"0|1|2|")
----SetSellGoodsData("晴空幽島","Metadata/Items/Maps/MapAtlasTropicalIsland",3,"0|1|2|")
----SetSellGoodsData("絕望燈塔","Metadata/Items/Maps/MapWorldsLighthouse",3,"0|1|2|")
----SetSellGoodsData("奇術之庭","Metadata/Items/Maps/MapTier13_2",6,"0|1|2")
----SetSellGoodsData("毒牙海港","Metadata/Items/Maps/MapWorldsWharf",3,"0|1|2|")
----SetSellGoodsData("怒浪之港","Metadata/Items/Maps/MapWorldsPier",3,"0|1|2|")
----SetSellGoodsData("白沙灘頭","Metadata/Items/Maps/MapWorldsBeach",3,"0|1|2|")
----SetSellGoodsData("荒涼牧野","Metadata/Items/Maps/MapAtlasSulphurWastes",3,"0|1|2|")
----SetSellGoodsData("魅影別墅","Metadata/Items/Maps/MapWorldsVilla",3,"0|1|2|")
----SetSellGoodsData("密林果園","Metadata/Items/Maps/MapWorldsOrchard",3,"0|1|2|")
----SetSellGoodsData("惡咒陵墓","Metadata/Items/Maps/MapWorldsCursedCrypt",9,"0|1|2|")
----SetSellGoodsData("軍械庫","Metadata/Items/Maps/MapWorldsArmoury",3,"0|1|2|")
----SetSellGoodsData("實驗居所","Metadata/Items/Maps/MapWorldsLaboratory",3,"0|1|2|")
----SetSellGoodsData("濱海堡壘","Metadata/Items/Maps/MapWorldsRamparts",3,"0|1|2|")
----SetSellGoodsData("濱海幽穴","Metadata/Items/Maps/MapWorldsUndergroundSea",9,"0|1|2|")
----SetSellGoodsData("旱木林地","Metadata/Items/Maps/MapWorldsAshenWood",9,"0|1|2|")
----SetSellGoodsData("靜縊陵墓","Metadata/Items/Maps/MapWorldsMausoleum",3,"0|1|2|")
----SetSellGoodsData("幽魂宅邸","Metadata/Items/Maps/MapWorldsHauntedMansion",3,"0|1|2|")
----SetSellGoodsData("無疆田野","Metadata/Items/Maps/MapWorldsFields",3,"0|1|2|")
----SetSellGoodsData("冰川山丘","Metadata/Items/Maps/MapWorldsGorge",3,"0|1|2|")
----SetSellGoodsData("致命岩灘","Metadata/Items/Maps/MapWorldsStrand",9,"0|1|2|")
----SetSellGoodsData("乾潮林地","Metadata/Items/Maps/MapWorldsPeninsula",3,"0|1|2|")
----SetSellGoodsData("毒菌魔域","Metadata/Items/Maps/MapWorldsSprings",9,"0|1|2|")
----SetSellGoodsData("貧瘠之地","Metadata/Items/Maps/MapWorldsDesert",3,"0|1|2|")
----SetSellGoodsData("危城巷弄","Metadata/Items/Maps/MapWorldsAlleyways",9,"0|1|2|")
----SetSellGoodsData("墮影墓場","Metadata/Items/Maps/MapWorldsGraveyard",9,"0|1|2|")
----SetSellGoodsData("古兵工廠","Metadata/Items/Maps/MapWorldsArsenal",9,"0|1|2|")
----SetSellGoodsData("平頂荒漠","Metadata/Items/Maps/MapWorldsMesa",3,"0|1|2|")
----SetSellGoodsData("疾風峽灣","Metadata/Items/Maps/MapWorldsCoves",3,"0|1|2|")
----SetSellGoodsData("瘴氣泥沼","Metadata/Items/Maps/MapWorldsBog",3,"0|1|2|")
----SetSellGoodsData("荒地","Metadata/Items/Maps/MapWorldsWasteland",3,"0|1|2|")
----SetSellGoodsData("雲頂鐘樓","Metadata/Items/Maps/MapWorldsBelfry",3,"0|1|2|")
----SetSellGoodsData("古博物館","Metadata/Items/Maps/MapWorldsMuseum",3,"0|1|2|")
----SetSellGoodsData("競技場","Metadata/Items/Maps/MapWorldsArena",3,"0|1|2|")
----SetSellGoodsData("晨曦墓地","Metadata/Items/Maps/MapWorldsCemetery",3,"0|1|2|")
----SetSellGoodsData("魔金寶庫","Metadata/Items/Maps/MapWorldsVault",3,"0|1|2|")
----SetSellGoodsData("危機水道","Metadata/Items/Maps/MapWorldsWaterways",3,"0|1|2|")
----SetSellGoodsData("嬋娟神殿","Metadata/Items/Maps/MapWorldsMoonTemple",3,"0|1|2|")
----SetSellGoodsData("瓦爾金字塔","Metadata/Items/Maps/MapWorldsVaalPyramid",3,"0|1|2|")
----SetSellGoodsData("長草遺跡","Metadata/Items/Maps/MapWorldsOvergrownRuin",3,"0|1|2|")
----SetSellGoodsData("遠古市集","Metadata/Items/Maps/MapWorldsBazaar",9,"0|1|2|")
----SetSellGoodsData("暮色沙丘","Metadata/Items/Maps/MapWorldsDunes",9,"0|1|2|")
----SetSellGoodsData("奪魂之殿","Metadata/Items/Maps/MapWorldsTemple",3,"0|1|2|")
----SetSellGoodsData("遠古危城","Metadata/Items/Maps/MapWorldsAncientCity",3,"0|1|2|")
----SetSellGoodsData("腐敗下水道","Metadata/Items/Maps/MapWorldsToxicSewer",3,"0|1|2|")
----SetSellGoodsData("火山炎域","Metadata/Items/Maps/MapWorldsVolcano",9,"3|1|2|")
----SetSellGoodsData("古典密室","Metadata/Items/Maps/MapWorldsRelicChambers",3,"0|1|2|")
----SetSellGoodsData("崩壞長廊","Metadata/Items/Maps/MapWorldsArcade",9,"0|1|2|")
----SetSellGoodsData("羈破牢","Metadata/Items/Maps/MapWorldsCage",3,"0|1|2|")
----SetSellGoodsData("穢陰獄牢","Metadata/Items/Maps/MapWorldsPen",3,"0|1|2|")
----SetSellGoodsData("紫晶礦山","Metadata/Items/Maps/MapWorldsCrystalOre",3,"0|1|2|")
----SetSellGoodsData("不潔教堂","Metadata/Items/Maps/MapWorldsDefiledCathedral",3,"0|1|2|")
----SetSellGoodsData("巨坑","Metadata/Items/Maps/MapWorldsPit",3,"0|1|2|")
----SetSellGoodsData("異蛛墓塚","Metadata/Items/Maps/MapWorldsArachnidTomb",9,"0|1|2|")
----SetSellGoodsData("死寂泥溝","Metadata/Items/Maps/MapWorldsWastePool",3,"0|1|2|")
----SetSellGoodsData("詭譎晶洞","Metadata/Items/Maps/MapWorldsGeode",3,"0|1|2|")
----SetSellGoodsData("骨跡陵墓","Metadata/Items/Maps/MapWorldsBoneCrypt",3,"0|1|2|")
----SetSellGoodsData("熔岩之室","Metadata/Items/Maps/MapWorldsLavaChamber",3,"0|1|2|")
----SetSellGoodsData("熱林塚墓","Metadata/Items/Maps/MapWorldsBarrows",9,"0|1|2|")
----SetSellGoodsData("魔靈幻獄","Metadata/Items/Maps/MapWorldsPhantasmagoria",3,"0|1|2|")
----SetSellGoodsData("惡靈學院","Metadata/Items/Maps/MapWorldsAcademy",3,"0|1|2|")
----SetSellGoodsData("闇獄尖塔","Metadata/Items/Maps/MapWorldsTower",3,"0|1|2|")
----SetSellGoodsData("火山炎口","Metadata/Items/Maps/MapWorldsCaldera",3,"0|1|2|")
----SetSellGoodsData("失序教院","Metadata/Items/Maps/MapWorldsCourthouse",3,"0|1|2|")
----SetSellGoodsData("暮色沙丘","Metadata/Items/Maps/MapAtlasDunesShaped",3,"0|1|2|")

--不打一些複雜地形圖、鎖血王等


--SetCompoundDivinationCard(name,className,nType) --要合成的卡，我只設定比較有用的 name=卡片名 className=卡片类名 nType=合成场景 nil或不填为无论何时都合成 0为没在刷异界才合 1为只在刷异界才合
SetCompoundDivinationCard("黑暗三面","Metadata/Items/DivinationCards/DivinationCardThreeFacesInTheDark")
SetCompoundDivinationCard("蘭塔朵迷惘之愛","Metadata/Items/DivinationCards/DivinationCardLantadorsLostLove")
SetCompoundDivinationCard("薇妮雅的信物","Metadata/Items/DivinationCards/DivinationCardViniasToken")
SetCompoundDivinationCard("珠宝匠","Metadata/Items/DivinationCards/DivinationCardTheGemcutter")
SetCompoundDivinationCard("浑沌性情","Metadata/Items/DivinationCards/DivinationCardChaoticDisposition")
SetCompoundDivinationCard("帝运","Metadata/Items/DivinationCards/DivinationCardEmperorsLuck")
SetCompoundDivinationCard("好运连连","Metadata/Items/DivinationCards/DivinationCardLuckyConnections")
SetCompoundDivinationCard("混沌之雨","Metadata/Items/DivinationCards/DivinationCardRainOfChaos")
SetCompoundDivinationCard("飢渴之佔","Metadata/Items/DivinationCards/DivinationCardCovetedPossession")
SetCompoundDivinationCard("棄財求生","Metadata/Items/DivinationCards/DivinationCardAbandonedWealth")
SetCompoundDivinationCard("发明家","Metadata/Items/DivinationCards/DivinationCardTheInventor")
SetCompoundDivinationCard("惊喜盒","Metadata/Items/DivinationCards/DivinationCardJackInTheBox")
SetCompoundDivinationCard("联姻","Metadata/Items/DivinationCards/DivinationCardTheUnion")
SetCompoundDivinationCard("怨忿","Metadata/Items/DivinationCards/DivinationCardTheWrath")
SetCompoundDivinationCard("灾变","Metadata/Items/DivinationCards/DivinationCardTheCatalyst")
SetCompoundDivinationCard("求生专家","Metadata/Items/DivinationCards/DivinationCardTheSurvivalist")
SetCompoundDivinationCard("忠诚","Metadata/Items/DivinationCards/DivinationCardLoyalty")
SetCompoundDivinationCard("制图师","Metadata/Items/DivinationCards/DivinationCardTheCartographer")
SetCompoundDivinationCard("生命之樹","Metadata/Items/DivinationCards/DivinationCardTheSephirot")
SetCompoundDivinationCard("聖徒之財","Metadata/Items/DivinationCards/DivinationCardTheSaintsTreasure")
SetCompoundDivinationCard("無痕","Metadata/Items/DivinationCards/DivinationCardNoTraces")
SetCompoundDivinationCard("善","Metadata/Items/DivinationCards/DivinationCardTheInnocent")
SetCompoundDivinationCard("愚人","Metadata/Items/DivinationCards/DivinationCardTheFool")
SetCompoundDivinationCard("赌徒","Metadata/Items/DivinationCards/DivinationCardTheGambler")
SetCompoundDivinationCard("工匠大师","Metadata/Items/DivinationCards/DivinationCardTheMasterArtisan")
SetCompoundDivinationCard("情人","Metadata/Items/DivinationCards/DivinationCardTheLover")
SetCompoundDivinationCard("净白","Metadata/Items/DivinationCards/DivinationCardTheOpulecent")
SetCompoundDivinationCard("谦逊","Metadata/Items/DivinationCards/DivinationCardHumility",0)
SetCompoundDivinationCard("谜团","Metadata/Items/DivinationCards/DivinationCardThePuzzle")

--卡片保留，我一樣只留好用的


--不撿占空間容易爆倉的器官
SetGoodsCaoZuo(nil,"1|3",nil,"Metadata/Items/Metamorphosis/MetamorphosisBrain")--鍊魔腦髓不捡
SetGoodsCaoZuo(nil,"1|3",nil,"Metadata/Items/Metamorphosis/MetamorphosisEye")--鍊魔眼睛不捡
SetGoodsCaoZuo(nil,"1|3",nil,"Metadata/Items/Metamorphosis/MetamorphosisLiver")--鍊魔肝臟不捡
SetGoodsCaoZuo(nil,"1|3",nil,"Metadata/Items/Metamorphosis/MetamorphosisLung")--鍊魔肺臟不捡
SetGoodsCaoZuo(nil,"1|3",nil,"Metadata/Items/Metamorphosis/MetamorphosisHeart")--鍊魔心臟不捡

--祭壇相關
--AddYouXianGongPingBuyGoods(name,className,wordName,wordClassName,needYanShi)優先度為上至下
--name 字符串型 优先购买的物品名 可填nil忽略，但一定要填下面的类名
--className 字符串型 优先购买的物品类名 可以填nil忽略，但一定要填上面的名字
--wordName 字符串型 词缀名 忽略填nil
--wordClassName 字符串型 词缀类名 忽略填nil
--needYanShi 逻辑型 买不起时是否延时 true为延时 false或nil为不延时
AddYouXianGongPingBuyGoods("卡兰德的魔镜","Metadata/Items/Currency/CurrencyDuplicate",nil,nil,true)
AddYouXianGongPingBuyGoods(nil,nil,nil,"The Squire")--"大地主"
AddYouXianGongPingBuyGoods(nil,nil,nil,"Mageblood")--"魔血"
AddYouXianGongPingBuyGoods(nil,nil,nil,"Headhunter",true)--"獵首"
AddYouXianGongPingBuyGoods(nil,nil,nil,"Badge of the Brotherhood",true)--"激情之章"
AddYouXianGongPingBuyGoods(nil,nil,nil,"Bottled Faith",true)--"瓶中信仰"
AddYouXianGongPingBuyGoods(nil,nil,nil,"Unnatural Instinct",true)--"神感"
AddYouXianGongPingBuyGoods(nil,nil,nil,"Void Battery",true)--"潛能魔棒"
AddYouXianGongPingBuyGoods(nil,nil,nil,"Maloney's Mechanism",true)--"馬洛尼的機關"
AddYouXianGongPingBuyGoods(nil,nil,nil,"Asenath's Gentle Touch",true)--"安賽娜絲的安撫之語"
AddYouXianGongPingBuyGoods(nil,nil,nil,"Machina Mitts",true)--"詭計魔手"
AddYouXianGongPingBuyGoods(nil,nil,nil,"Farrul's Fur",true)--"費爾羅羽衣"
AddYouXianGongPingBuyGoods(nil,nil,nil,"Shroud of the Lightless",true)--"晦暗的屍布"
AddYouXianGongPingBuyGoods(nil,nil,nil,"The Halcyon",true)--"太平"
AddYouXianGongPingBuyGoods(nil,nil,nil,"Arakaali's Fang",true)--"艾爾卡莉之牙"
AddYouXianGongPingBuyGoods(nil,nil,nil,"Unending Hunger",true)--"無盡渴望"
AddYouXianGongPingBuyGoods(nil,nil,nil,"Inspired Learning",true)--"求知的熱情"
AddYouXianGongPingBuyGoods(nil,nil,nil,"Berek's Respite",true)--"貝雷克的火與雷之樂"
AddYouXianGongPingBuyGoods(nil,nil,nil,"AtzirisMirrorFated",true)--"女王獻祭"
AddYouXianGongPingBuyGoods("卡兰德的魔镜碎片","Metadata/Items/Currency/CurrencyDuplicateShard",nil,nil,true)
AddYouXianGongPingBuyGoods("瘋醫","Metadata/Items/DivinationCards/DivinationCardTheDoctor",nil,nil,true)
AddYouXianGongPingBuyGoods("魔鬼","Metadata/Items/DivinationCards/DivinationCardTheFiend",nil,nil,true)
AddYouXianGongPingBuyGoods("單相思","Metadata/Items/DivinationCards/DivinationCardUnrequitedLove",nil,nil,true)
AddYouXianGongPingBuyGoods("明镜","Metadata/Items/DivinationCards/DivinationCardHouseOfMirrors",nil,nil,true)
AddYouXianGongPingBuyGoods("恶魔","Metadata/Items/DivinationCards/DivinationCardTheDemon",nil,nil,true)
AddYouXianGongPingBuyGoods("無罪救贖","Metadata/Items/DivinationCards/DivinationCardSuccorOfTheSinless",nil,nil,true)
AddYouXianGongPingBuyGoods("蜂巢知識","Metadata/Items/DivinationCards/DivinationCardTheHiveOfKnowledge",nil,nil,true)
AddYouXianGongPingBuyGoods("安賽娜絲贈禮","Metadata/Items/DivinationCards/DivinationCardGiftOfAsenath",nil,nil,true)
AddYouXianGongPingBuyGoods("雄偉動機","Metadata/Items/DivinationCards/DivinationCardTheGreatestIntentions",nil,nil,true)
AddYouXianGongPingBuyGoods("長期詐騙","Metadata/Items/DivinationCards/DivinationCardTheLongCon",nil,nil,true)
AddYouXianGongPingBuyGoods("伯仲財庫","Metadata/Items/DivinationCards/DivinationCardBrothersStash",nil,nil,true)
AddYouXianGongPingBuyGoods("命中注定","Metadata/Items/DivinationCards/DivinationCardFatefulMeeting",nil,nil,true)
AddYouXianGongPingBuyGoods("星象学家","Metadata/Items/DivinationCards/DivinationCardTheAstromancer",nil,nil,true)
AddYouXianGongPingBuyGoods("跨冰之恋","Metadata/Items/DivinationCards/DivinationCardLoveThroughIce",nil,nil,true)
AddYouXianGongPingBuyGoods("病患","Metadata/Items/DivinationCards/DivinationCardThePatient",nil,nil,true)
AddYouXianGongPingBuyGoods("照料者","Metadata/Items/DivinationCards/DivinationCardTheNurse",nil,nil,true)
AddYouXianGongPingBuyGoods("童子軍","Metadata/Items/DivinationCards/DivinationCardTheScout",nil,nil,true)
AddYouXianGongPingBuyGoods("宝箱","Metadata/Items/DivinationCards/DivinationCardTheHoarder",nil,nil,true)
AddYouXianGongPingBuyGoods("弃财求生","Metadata/Items/DivinationCards/DivinationCardAbandonedWealth",nil,nil,true)
AddYouXianGongPingBuyGoods("圣人之礼","Metadata/Items/DivinationCards/DivinationCardTheSaintsTreasure",nil,nil,true)
AddYouXianGongPingBuyGoods("坚毅诗人","Metadata/Items/DivinationCards/DivinationCardTheIronBard",nil,nil,true)
AddYouXianGongPingBuyGoods("武士之眼","Metadata/Items/DivinationCards/DivinationCardTheSamuraisEye",nil,nil,true)
AddYouXianGongPingBuyGoods("来生之美","Metadata/Items/DivinationCards/DivinationCardBeautyThroughDeath",nil,nil,true)
AddYouXianGongPingBuyGoods("七年厄运","Metadata/Items/DivinationCards/DivinationCardSevenYearsBadLuck",nil,nil,true)
AddYouXianGongPingBuyGoods("崇高石","Metadata/Items/Currency/CurrencyAddModToRare",nil,nil,true)
AddYouXianGongPingBuyGoods("远古石","Metadata/Items/Currency/CurrencyRerollUnique",nil,nil,true)
AddYouXianGongPingBuyGoods("神圣石","Metadata/Items/Currency/CurrencyModValues",nil,nil,true)
AddYouXianGongPingBuyGoods("诱人的奖赏","Metadata/Items/DivinationCards/DivinationCardAlluringBounty",nil,nil,true)
AddYouXianGongPingBuyGoods("先祖的代价","Metadata/Items/DivinationCards/DivinationCardPrideOfTheFirstOnes",nil,nil,true)
AddYouXianGongPingBuyGoods("生命之树","Metadata/Items/DivinationCards/DivinationCardTheSephirot",nil,nil,true)
AddYouXianGongPingBuyGoods("死灵遗物","Metadata/Items/DivinationCards/DivinationCardTheWretched",nil,nil,true)
AddYouXianGongPingBuyGoods("黑暗三面","Metadata/Items/DivinationCards/DivinationCardThreeFacesInTheDark",nil,nil,true)
AddYouXianGongPingBuyGoods("浑沌性情","Metadata/Items/DivinationCards/DivinationCardChaoticDisposition",nil,nil,true)
AddYouXianGongPingBuyGoods("怨忿","Metadata/Items/DivinationCards/DivinationCardTheWrath",nil,nil,true)
AddYouXianGongPingBuyGoods("豐裕牌組","Metadata/Items/DivinationCards/DivinationCardDeck",nil,nil,true)
AddYouXianGongPingBuyGoods("混沌石","Metadata/Items/Currency/CurrencyRerollRare",nil,nil,true)
AddYouXianGongPingBuyGoods("点金石","Metadata/Items/Currency/CurrencyUpgradeToRare",nil,nil,true)
AddYouXianGongPingBuyGoods("富豪石","Metadata/Items/Currency/CurrencyUpgradeMagicToRare",nil,nil,true)
AddYouXianGongPingBuyGoods("制图钉","Metadata/Items/Currency/CurrencyMapQuality",nil,nil,true)
AddYouXianGongPingBuyGoods("后悔石","Metadata/Items/Currency/CurrencyPassiveRefund",nil,nil,true)
AddYouXianGongPingBuyGoods("重铸石","Metadata/Items/Currency/CurrencyConvertToNormal",nil,nil,true)
AddYouXianGongPingBuyGoods("宝石匠的棱镜","Metadata/Items/Currency/CurrencyGemQuality",nil,nil,true)
AddYouXianGongPingBuyGoods("链结石","Metadata/Items/Currency/CurrencyRerollSocketLinks",nil,nil,true)
AddYouXianGongPingBuyGoods("改造石","Metadata/Items/Currency/CurrencyRerollMagic",nil,nil,true)

g_needShiLianDaShiLv=75--满75级打试炼大师
SetNeedShiLianReward("卡兰德的魔镜","Metadata/Items/Currency/CurrencyDuplicate")
SetNeedShiLianReward(nil,nil,nil,"The Squire")--"大地主"
SetNeedShiLianReward(nil,nil,nil,"Mageblood")--"魔血"
SetNeedShiLianReward(nil,nil,nil,"Headhunter")--"獵首"
SetNeedShiLianReward(nil,nil,nil,"Badge of the Brotherhood")--"激情之章"
SetNeedShiLianReward(nil,nil,nil,"Bottled Faith")--"瓶中信仰"
SetNeedShiLianReward(nil,nil,nil,"Unnatural Instinct")--"神感"
SetNeedShiLianReward(nil,nil,nil,"Void Battery")--"潛能魔棒"
SetNeedShiLianReward(nil,nil,nil,"Maloney's Mechanism")--"馬洛尼的機關"
SetNeedShiLianReward(nil,nil,nil,"Asenath's Gentle Touch")--"安賽娜絲的安撫之語"
SetNeedShiLianReward(nil,nil,nil,"Machina Mitts")--"詭計魔手"
SetNeedShiLianReward(nil,nil,nil,"Farrul's Fur")--"費爾羅羽衣"
SetNeedShiLianReward(nil,nil,nil,"Shroud of the Lightless")--"晦暗的屍布"
SetNeedShiLianReward(nil,nil,nil,"The Halcyon")--"太平"
SetNeedShiLianReward(nil,nil,nil,"Arakaali's Fang")--"艾爾卡莉之牙"
SetNeedShiLianReward(nil,nil,nil,"Unending Hunger")--"無盡渴望"
SetNeedShiLianReward(nil,nil,nil,"Inspired Learning")--"求知的熱情"
SetNeedShiLianReward(nil,nil,nil,"Berek's Respite")--"貝雷克的火與雷之樂"
SetNeedShiLianReward(nil,nil,nil,"AtzirisMirrorFated")--"女王獻祭"
SetNeedShiLianReward(nil,nil,nil,"ItemAbleToBecomesUniqueWhenChanceOrbApplied")--"麻雀變鳳凰"
SetNeedShiLianReward(nil,nil,nil,"RollingSixSocketBodyArmourLinksAllSockets")--"命運連結"
SetNeedShiLianReward(nil,nil,nil,"RareSuturedAberrationDropsMaligarosVirtuosity")--"奇妙之手"
SetNeedShiLianReward("卡兰德的魔镜碎片","Metadata/Items/Currency/CurrencyDuplicateShard")
SetNeedShiLianReward("瘋醫","Metadata/Items/DivinationCards/DivinationCardTheDoctor")
SetNeedShiLianReward("魔鬼","Metadata/Items/DivinationCards/DivinationCardTheFiend")
SetNeedShiLianReward("單相思","Metadata/Items/DivinationCards/DivinationCardUnrequitedLove")
SetNeedShiLianReward("明镜","Metadata/Items/DivinationCards/DivinationCardHouseOfMirrors")
SetNeedShiLianReward("恶魔","Metadata/Items/DivinationCards/DivinationCardTheDemon")
SetNeedShiLianReward("無罪救贖","Metadata/Items/DivinationCards/DivinationCardSuccorOfTheSinless")
SetNeedShiLianReward("蜂巢知識","Metadata/Items/DivinationCards/DivinationCardTheHiveOfKnowledge")
SetNeedShiLianReward("安賽娜絲贈禮","Metadata/Items/DivinationCards/DivinationCardGiftOfAsenath")
SetNeedShiLianReward("雄偉動機","Metadata/Items/DivinationCards/DivinationCardTheGreatestIntentions")
SetNeedShiLianReward("長期詐騙","Metadata/Items/DivinationCards/DivinationCardTheLongCon")
SetNeedShiLianReward("伯仲財庫","Metadata/Items/DivinationCards/DivinationCardBrothersStash")
SetNeedShiLianReward("命中注定","Metadata/Items/DivinationCards/DivinationCardFatefulMeeting")
SetNeedShiLianReward("星象学家","Metadata/Items/DivinationCards/DivinationCardTheAstromancer")
SetNeedShiLianReward("跨冰之恋","Metadata/Items/DivinationCards/DivinationCardLoveThroughIce")
SetNeedShiLianReward("病患","Metadata/Items/DivinationCards/DivinationCardThePatient")
SetNeedShiLianReward("照料者","Metadata/Items/DivinationCards/DivinationCardTheNurse")
SetNeedShiLianReward("童子軍","Metadata/Items/DivinationCards/DivinationCardTheScout")
SetNeedShiLianReward("宝箱","Metadata/Items/DivinationCards/DivinationCardTheHoarder")
SetNeedShiLianReward("弃财求生","Metadata/Items/DivinationCards/DivinationCardAbandonedWealth")
SetNeedShiLianReward("圣人之礼","Metadata/Items/DivinationCards/DivinationCardTheSaintsTreasure")
SetNeedShiLianReward("坚毅诗人","Metadata/Items/DivinationCards/DivinationCardTheIronBard")
SetNeedShiLianReward("武士之眼","Metadata/Items/DivinationCards/DivinationCardTheSamuraisEye")
SetNeedShiLianReward("来生之美","Metadata/Items/DivinationCards/DivinationCardBeautyThroughDeath")
SetNeedShiLianReward("七年厄运","Metadata/Items/DivinationCards/DivinationCardSevenYearsBadLuck")
SetNeedShiLianReward("崇高石","Metadata/Items/Currency/CurrencyAddModToRare")
SetNeedShiLianReward("远古石","Metadata/Items/Currency/CurrencyRerollUnique")
SetNeedShiLianReward("神圣石","Metadata/Items/Currency/CurrencyModValues")
SetNeedShiLianReward("诱人的奖赏","Metadata/Items/DivinationCards/DivinationCardAlluringBounty")
SetNeedShiLianReward("先祖的代价","Metadata/Items/DivinationCards/DivinationCardPrideOfTheFirstOnes")
SetNeedShiLianReward("生命之树","Metadata/Items/DivinationCards/DivinationCardTheSephirot")
SetNeedShiLianReward("死灵遗物","Metadata/Items/DivinationCards/DivinationCardTheWretched")
SetNeedShiLianReward("黑暗三面","Metadata/Items/DivinationCards/DivinationCardThreeFacesInTheDark")
SetNeedShiLianReward("浑沌性情","Metadata/Items/DivinationCards/DivinationCardChaoticDisposition")
SetNeedShiLianReward("怨忿","Metadata/Items/DivinationCards/DivinationCardTheWrath")
SetNeedShiLianReward("豐裕牌組","Metadata/Items/DivinationCards/DivinationCardDeck")
SetNeedShiLianReward("混沌石","Metadata/Items/Currency/CurrencyRerollRare")
SetNeedShiLianReward("点金石","Metadata/Items/Currency/CurrencyUpgradeToRare")
SetNeedShiLianReward("富豪石","Metadata/Items/Currency/CurrencyUpgradeMagicToRare")
SetNeedShiLianReward("制图钉","Metadata/Items/Currency/CurrencyMapQuality")
SetNeedShiLianReward("后悔石","Metadata/Items/Currency/CurrencyPassiveRefund")
SetNeedShiLianReward("重铸石","Metadata/Items/Currency/CurrencyConvertToNormal")
SetNeedShiLianReward("宝石匠的棱镜","Metadata/Items/Currency/CurrencyGemQuality")
SetNeedShiLianReward("链结石","Metadata/Items/Currency/CurrencyRerollSocketLinks")
SetNeedShiLianReward("改造石","Metadata/Items/Currency/CurrencyRerollMagic")

--劫盜相關
--SetCheckHeistData(5*60,1000,nil,60,true,65,73,78,65,nil,6) --设置去夺宝 
--SetSaveIndex("契约","1")--设定契约存在哪些仓库页
--SetGoodsCaoZuo("契约","0|2",nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,function(r)return r.lv>60 end)--大于60级的契约才捡存
--SetGoodsCaoZuo(nil,"0","赏金猎人印记","Metadata/Items/Heist/HeistCoin")--只捡不存夺宝币
--SetGoodsCaoZuo(nil,"0|2","赏金猎人印记","Metadata/Items/Heist/HeistCoin",nil,nil,nil,500)--包中满500就改为捡存
--如果需要夺宝币交易给仓库号就加上下面这条
--SetJiaoYiGoods(nil,"赏金猎人印记","Metadata/Items/Heist/HeistCoin",nil,nil,nil,nil,nil,nil,5000)--保留1000个夺宝币 多出来的交易给仓库号


--SetHeistData(openChest,saveData,runPickData)--设置夺宝相关的操作
SetHeistData("RewardChestCurrency|RewardCurrency|RewardChestTrinkets|RewardChestDivination|RewardChestDelirium|RewardChestBlight|RewardChestLegion|RewardChestUnique|RewardChestGeneric|RewardChestAbyss|RewardChestHarbinger|RewardChestFossil",--设置了 开 通货箱子、通货箱子1、首饰箱子
"崇高石,Metadata/Items/Currency/CurrencyAddModToRare,1|卡兰德的魔镜,Metadata/Items/Currency/CurrencyDuplicate,1","崇高石,Metadata/Items/Currency/CurrencyAddModToRare|卡兰德的魔镜,Metadata/Items/Currency/CurrencyDuplicate")


