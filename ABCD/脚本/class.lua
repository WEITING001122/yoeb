LJB@G:\vs工程文件\vs2015\Projects\ABCD_POE-TW\x64\台服\脚本\class.lua    
'  L Pt2self   h 4 G ?  :  X�)  =  :  X�)  = K  yx��罊self  arr  2   
 = =  K  yxself  x  y   M   	  9  9 9!9 9!D yxNewself  
pt2  
 E   6  9 9 99D yxGetDistanceself  pt   H 	  6  9 9   D yxGetDistanceself  x  y   z 
  '6   9 9  B6  9 	 D NewPt2yxGetPtByAngleself  jd  dis  x y   �   46    B  X�   9 	 
 D GetPtByAngleGetAngleByDirectorself  dx  dy  dis  addJd  angle   
  /!	6  9 B  X�   9  	 D GetPtByAngledeg	mathself  hd  dis  addJd  angle  \  +  9  B   9  D RotateClockwiseGetAngle self  	angle  =   /6  9 9 D yxGetAngleByDirectorself   � 	  $<26  9 B 9 6  9 B"9 6  9 B"!9 6  9 B"9 6  9 B"   9   D Newsinycosxrad	mathself  %angle  %x y  � 	  %=86  9 B 9 6  9 B"9 6  9 B" 9  6  9 B"9 6  9 B"   9   D Newsinycosxrad	mathself  &angle  &x y  � 	 '>9   9    X� 9  BL 6  9  D NewPt2
SetPtyxself  pt  x y   � 	 -F6  99  B6  99  B  X� 9  BL 6  9  D NewPt2
SetPtyx
floor	mathself  pt  x y   L   N6  9' 9 9 D yx%.2f,%.2fformatstringself   g   
Q6  '   9 B  9 B AK  tostringGetObjName
%s %sMYTRACE1self   Q  
U9    X�  9 G A=  9  L Newinstanceself   [   0Z4 4 <<=  K  mapEventself  func  eventName  instanceName   *   ]+  =  K  mapEventself   �   :`9    X�4  =  9  9  8  X�4  <9  8<K  mapEventself  func  eventName  instanceName   �
  7f	9    X�9  8  X
�6 9  8BH� G	 A FR�K  
pairsmapEvent	self  eventName    k v   �   4p9    X�9  8  X	�9  88  X�9  8+  <K  mapEventself  eventName  instanceName   �   Hy
9    X�6 9  BH�6  BH	�6 ' 6  B6 	 B6 
 B AF	R	�FR�K  tostring/Event eventName:%s instanceName:%s func:%sMYTRACE1
pairsmapEvent
self    k v    k1 v1   �   <�5 ===  = = = K  checkAttackuseFirstMap
ptArryx  ptself  	x  	y  	ptArr  	useFirstMap  	checkAttack  	 M  � -   9    D �IsCanMovePt      useMapData x1  y1   �  8_�9    X2�6 B 9B9 99 9 9 	 B X� 9 	 3
 B  X	�6	 '
 B 9	 
 B = 9   X� 999	9
 9

9 9+ + B=  2 �9  2  �L 
AStar这个坐标 15 的距离走不了
TRACE GetMinDisCanMovePtIsCanMovePtyxptGetCanMoveMapDataGetMeRoleData
ptArr			





self  9me /useMapData ,x (y  (pt      
�)P L self       
�)
 L self   5   �  9  D GetStepRunCheckDisself   �  %T�4    X!� )   X�  9  B6 9 #B)  ) M�6	 9		 "8B	O� $  X�6 9  8BL insert
table
floor	mathGetMaxCanRunDis 				





self  &ptArr  &arr $dis 	cnt   i  �  -]�9    X(�9   X%�6  9) + B)
 6 96  	  9 B A)
 M�6 	 9
 +  6 8B  X	�9		  X�6
 9
 B+ L O�+ L AttackMonster	typeGetCanMakeDataGetMaxCanRunDis
ptArrmin	mathGetArrGroundobjcheckAttackself  .needPt  .groundArr 
  i res  �   +y�)   8 X�+ X�+ 	  9  
  B  X	�  X	�  9	  B	6	 )d B	  9	  B		 X	�  9	  B	6	 )d B	  9	  B		 L WaitRunRunWaitLastRun
SleepLastRunUseMoveSkill			





self  ,ptArr  ,nowIndex  ,ret *maxIndex )pt (isLastPt #useOk needRun   �  	 )b�, + 6   99	9
B)(  X�6 	 6
  B    X
�	  9 B   X� X�+ X�+   X�6 '	 6
  B
 A  J tostring(使用了位移技能 是否需要继续寻路：%sMYTRACE1GetStepRunCheckDisUseMoveSkillyxGetDistanceme


self  *pt  *isLastPt  *useOk 'jmpDis  'needRun  'dis ! G   �6  999BK  yxAutoRun	callself  pt   o   
%� -    9   - - B . .   -   L  �� ���CheckRunFunc          waitOk ret self pt lastPt  f
  -�, 6  )@3 )	� B2  �L  WaitFunctionself  	pt  	lastPt  	waitOk ret   5   �  9   BK  Runself  pt       
�) L self   �   8T�6  B6  999B6 '  6 6
 
 9

B
 A  A  9	 B  X�+ ) J   9
 B X�+ ) J X�6 9  X�+ )  J X
�  X�  9 B X�+ ) J + )  J GetStepRunCheckDis
isRunGetRunOkDisIsFinish
IsRuntostringdis:%g isRun:%sMYTRACE1yxGetDistancemeGetMeRoleData				



self  9pt  9lastPt  9dis 	0 9   �  9   + D WaitRunself  pt       
�+ L self   �   +Q�)   )h) M %�6   6 96 9)	2 B6  96	 9		6
 9

  B  X�5 ==6 	 6
 B  X�-  	 9
 B+ L O �+  L   �RunUseMoveSkill  IsCanMoveLineyxmeGetPtByAngle		self & & &i $newX newY  pt  �   3�6  
  X�6  )
  X�6 ' 6  B3  B  X
�6 ' B6  9)< ) + B+ 2  �L + 2  �L AutoRunRandPtme寻路走动失败，随机走动一下 卡寻路次数：%dMYTRACE1g_onePtCntself  !funcRun1  �  Dx�$)  6  B7   9 B  X�L   9   9 B A )   X/�6  BX(�
  9   B6	 '  9	9
 6  99	9
B A	)	  	 X	� 	  X	�	 	 X	�6	 ' B	X		�	 X	�X	�X	�6	 '  B	X�ER�X �L %d 寻路失败 跳出寻路成功GetDistanceyx'i:%d v:%d,%d stepRunRet：%d dis:%gMYTRACE1StepRunipairsGetPtArrGetNextRunPtArrCheckKaRunmeGetMeRoleData




#self  Eret CptArr 4+ + +i (v  (stepRunRet # "   
�'  L 	寻路self   �   E� 9 B6 9  9	9
   B= K  objyx	InitActionRunGetJiaoHuPtself  obj  ptArr  useFirstMap  checkAttack  pt  M   	�9    X�9   9D +  L GetIndexobjself  
 �   �6  999  9 B	  9 B,	   9
 B
 AK  GetJiaoHuTypeGetNeedNewMapGetJiaoHuIdyxAutoRun	callself  pt       
�+  L self       
�+  L self       
�+ L self   2   
� -     9   D   �IsJiaoHuOk    self  T  	�+ 6  )�3 )c B 2  �L  WaitFunctionself  
ret  "    �) L self  pt   "   
�'  L 	交互self   � 
 (6�6  '   9 B9 99 9	  9 B A6 9  B	  X�  9	 B  X�6  '
   9 B A) L 6  '   9 B A)  L %s失败！%s成功！WaitJiaoHuOk	ExecActionRunGetJiaoHuIdyxptGetText$开始：%s 坐标：%d,%d index:0x%xWriteStateLog						

self  )ret  �   �6   99  9B A
  X�9 X�+ X�+ L canOpenGetIndexobjGetDataByIndexGroundself  obj 		 I   �'  9  9B&L GetNameobj开箱子self   �  H�6   9+  + B+ 6  BX�9	  X
�
 9' + ) B  X	�+ X�ER�L summoned_monster_epk_buffIsHaveBuff	typeipairsGetArrGround
self  arr haveMonster   k v   M   �'  9  9B&L GetNameobj开保险箱：self   p  
�6  9  B	  X�  9 BL StrongBoxDuoBi	ExecActionRunJiaoHuself  ret  �   W��6     9  -  9 9B A 
   XJ�+ 6 - BX	�	  9 
 B)   X�+ X�ER�  X/�6 ' B)  )h) M'�6  6		 9	
	6
	 9

)2 B6	 
 96	 9
6	 9  B  X	�6 
  B6 6
	 ' +  ) B6 '
 B6 )
�	B) L O�X	�6 ' 9  9  B) L )  L  ��sjSxArrgdSxArr+不是爆炸箱子 固定属性：%d 随机属性：%d
Sleep	躲了
TRACEconvocationUseSkillByNameAutoRunIsCanMoveLineyxmeGetPtByAngle爆炸箱子，要躲MYTRACE1GetShuXingValipairsGetIndexobjGetDataByIndexGroundself checkArr chest 
NneedDuo I  k 	v  	( ( (i &newX newY   R    � -  B .   -   )     X �+  X�+  L  ��           ret dbfunc  �  	+�'5  3 )  6 )�3 B2  �K   WaitFunction   #chest_display_explodes_corpseschest_display_explosion#$%%%%''self  
checkArr dbfunc ret  "   
�'  L 	引爆self   �    �6  9  B6  96 B A 99  9B AL 
GetPtobjSetLastZaFenPtGetLastMeRoleDataGetDataMiniMap	ExecActionRunJiaoHuself  ret  I   �'  9  9B&L GetNameobj开门：self   2   �6  ),B+ L 
Sleepself   I   �'  9  9B&L GetNameobj对话：self   �  5b�6   99  9B A
  X�+ X�+   X%�6 9	  X�6  9)  ) B 9)  )  B
  X�6	 )�B6
 BX�6  9B6  9 B9  X�6 BL MoveMouseGoodsgoodsDataGetMouseBagGoodsGetArrAutoSetBaoShiData
SleepGetBagGoodsByPtGetDataBagGoodsBarlvmeGetIndexobjGetDataByIndexGround



self  6ret (bagGoods barArr 
mouseBag  \   �'  9 9 9B&L GetNamegoodsDataobj拾取物品：self  	 K   	�  9  B  X�)L +  L IsKongShouself  
 �  !A�9   9B 9B6  B9 	  X� X�6 9) B  X�9   X�6 9	9
  X�+ X�+ L 
useLvlvmeunIdentifyposArrTableHaveVal	typeGetEquipDataGetClassNameGetItemClassbaseItemTypegoodsData  "typeName equip  �  *�3  9   X�6   X� 9 9B= 9 2  �L goodsDataobjg_iskongShouisKongShouShiQu self  funcIsCanUseWuQi  �   
E�6  9  	 
   B= K  newMap	InitActionRunJiaoHuself  obj  ptArr  newMap  useFirstMap  checkAttack   O   �'  9  9B&L GetNameobj进入传送门：self   V  
�9  9	  X�9 X�+ X�+ L newMap	typeobjself   �   � 6   B 7  6    9  B   9  -  9-  9B    L  �yxIsCanMovePtGetCanMoveMapDatameGetMeRoleData                oldPt  �	  /V�+  9  6 ' B6 B5 9=9=6 )�3 B   X�6 '	 B9

  X�9
 X�+ X�+ 7 9
 X
�9 X�6 9B7 X�)  7 2  �L g_lastEnterZhuanYuanTime	timeosHarvestLeagueworldAreaClassNameHarvestPortalg_lastEnterChuanYueMapIncursionCraftingBenchminiMapIcon进入本地图传送门成功 WaitFunctiony  xGetMeRoleData进入本地图传送门MYTRACE1obj			









self  0ret .ground -oldMe (oldPt # �   � 6     9  6 9' B A .   -      X �+  X�+  L  �InstanceChooserNewButtonGetNameByClassNameGameStringGetDataGameUi                ui  M    	� 6   B   X �+  X�+  L  InGameStateGetGameState         �  &B�+  9  6 ' B  9 B  X�+  6 )�3 B  X� 9B6 99	+ B2 �6 )�3
 B   X�6 ' B2  �L 进入新地图传送门成功 classNameworldAreaSetNeedNewMap
Click WaitFunctionGetNeedNewMap进入新地图传送门MYTRACE1obj						self  'ret %ground $ui 	 �   T�6  	 9B  X�6 	 9
     B= K  New
classActionRunToNewMapIsGoToNewMapActionRunToNowMapself  obj  ptArr  newMap  useFirstMap  checkAttack  class  2   �9   9D 	Exec
classself   G   �=  = = K  noStopskptself  sk  pt  noStop   �  	 �6  ' 9  9B9 99 9B6 9 99 99 9 BK  noStopUseSkillyxptGetNamesk释放：%s 坐标：%d,%dMYTRACE1self   4   �=  = K  objskself  sk  obj   t 
  �6  9 99 99 +  9 	 9B AK  GetIndexobjskyxptUseSkillself   � 
  '� 9 B6 9  99	 B= K  objyx	InitActionRunGetJiaoHuPtself  obj  ptArr  pt 	 � 	 	 %8�6   99  9B A  X� 9B  X� 9B  X�6  9  + B 9B+ L X�+ L + L 	ExecNewActionUseSkillByPtGetAttackSkill
IsDieGetIndexobjGetDataByIndexGround		self  &mon 	sk 
 '   �=  K  objself  obj       	�K  self   ] 	  	�6  9  B=  = K  disNewPt2ptself  
x  
y  
dis  
    
�+ L self   �   0R�4  6  6  9B A X�9 	 9
 B9  X�6 	 9B	 99
	9
B  X�	  9 
 6 B  X�6 9	 
 BER� )   X�L +  L insert
tableyouXainIsFuHeyxIsCanMovePtGetCanMoveMapDatamedisGetDistanceptGetLastArrGroundipairsself  1retArr /" " "k v       �K  self  arr   |   �6  99 ' ) + B  X�+ X�+ L LeagueAffliction/className	findstringself   �   �6  99  9B 9B' ) + B  X�+ X�+ L BreachGetNameGetMonsterTypemonsterVarieties	findstringself   z   �6  99 ' ) + B  X�+ X�+ L /KitavaCultist/className	findstringself   �  
 +�6   9B  X�6 996 96 9B)�   X�6 99 '	 ) + B  X�+ X�+ L /LeagueExpedition/className	findstringryxGetDistanceGetLastZaFenPtminiMapself  pt  |   �6  99 ' ) + B  X�+ X�+ L LeagueAffliction/className	findstringself   |   �6  99 ' ) + B  X�+ X�+ L LeagueAffliction/className	findstringself   �    �6   9  -  9' ) + B    X �+  X�+     X�6 + =+ L �haveMiWuminiMapLeagueAffliction/className	findstringr isMiWu  �   �6   9  -  9 9B 9B' ) + B    X �+  X�+  L  �BreachGetNameGetMonsterTypemonsterVarieties	findstringr  |   �6   9  -  9' ) + B    X �+  X�+  L  �/KitavaCultist/className	findstringr  �  	 '�6     9  B    X�6 9 9 -  9-  9B)�   X�6 9-  9' ) + B  X�+ X�+ L �/LeagueExpedition/className	findstringyxGetDistanceGetLastZaFenPtminiMapr pt  U   
�-     9   ' + ) D  �archnemesis_chained_upIsHaveBuffr  �	  ��  3  3 3 3 3  B  X� B  X� B2  �L      self  r funcIsMiWuGuai funcIsLieXiGuai funcIsChuanYueGuai funcIsWenWuGuai funcIsNotAttackMonster  �   $2�+  -   9 B  X	�- 9)    X�+  X�+  X�-   9B  X�6   X
�-  9B)   X�+  X�+  L  ��GetMonsterColorg_yijieNoWhiteMonsterIsInYiJieactiveAttackIsInDuoBaoMap	me obj ret # �	  !G� +   6  B3  9B  X� 99B  X� 9B  X
� 9B  X� B  X�+ 2  �L 
IsDieIsNotAttackMonsterfactionIsDiDuiIsMonster GetLastMeRoleDataself  "ret  obj me funcIsFuHe  ] 	  	�6  9  B=  = K  disNewPt2ptself  
x  
y  
dis  
 �   (�  X� 9 B  X� 9B  X�+ L + L IsNeedAttackMonsterIsYouXianMonsterself  obj  youXain   �   *V�4  6  6  9B A X�9 
 9 B9	 	 X�6 
 9B
 99	9
B  X	�
  9   B  X	�6 9
  BER�L insert
tableIsFuHeyxIsCanMovePtGetCanMoveMapDatamedisGetDistanceptGetLastArrGroundipairs					self  +youXain  +retArr )" " "k v   �   J��+   )   XD�6   BX�
 9B  X	�6	 '  9B 9B A	6	 	 9		  + B		 X�ER�  X%�6 ' B6   BX�6 
 9	6 9
6 99
9+ + B6	 '  B		 )
 
	 X	�6	 	 9		  B		 X�ER�L ActionRunAttackptLineArr:%dyx
AStarme"没有能直接放的技能,要寻路过去NewActionUseSkillByPtGetName 有能对：%s 直接放的技能：%sMYTRACE1GetAttackSkillipairs	self  Karr  Kaction I  k v  sk   k v  ptLineArr  � 	 @k�6  9B+  6  9B!)  X-�U,�6 B 9B  X�6 ' BX!�6  9+  + B  9 + B 	  X�  9 B   9	  B  X
� 9
B+ X�X�6 ) BX�  X�6 9+ B)  L StopAttack	call
Sleep	ExecGetActionGetNeedArrGetArrGround自己挂了MYTRACE1
IsDieGetMeRoleData	timeos 





self  AsTick =used <me 
)arr action  �   (�	6  9   B  X�6  B
  X�9)   X�=+ L + L yxval!GetPriorityAttackMonsterDataIsFuHeActionAttackByPtself  obj  yx 	 O   
� 9  99 9  X�+ X�+ L valyx          r1  r2   x  �6  9  B6 9 3 B2  �L  	sort
tableGetNeedArrActionAttackByPtself  arr  � 	  5J�
=  6 B 9B= 6  96 9' B+ B  X�+ X�+ 7	   9
   9 B A6  9 + B= 6 6  B= 99 X� 9BX�+ X�+ = K  IsInMyHideOut2_11_labclassNameworldAreainHideOutIsInZhuangYuaninZhuangYuanGetArrMyMiniMapIconiconArrGetFirstEnterSmallMapSetNowSmallMapDatag_isInChuanYueMapIncursionBarDisplayNameGetNameByClassNameGameStringGetDataGameUiIsInYiJieisInYiJieGetMeRoleData
zdMap												
self  6zdMap  6me 2 r   �9    X�6 6  9B A =  9  L GetSmallMapNamemetostringsmNameself   -   
�9  L nowSmallMapDataself   4   �=  K  nowSmallMapDataself  data   �
  )���7+  6   9B  X�6 + =Xx�5 6 6 B4  6  BX�9
	 
 X�6
	 9


9	9' ) + B

  X
�6
  9	9B
 
 X�6
 9

 	 B
ER�6 '  &B   X�6   X	�6 ' B6 + =+ 7 X@� )   X<�:6 B6 B  X�6 BX�6 B9   X�6 B6 B6 +  +	 +
 +  + B  X�6 ,
 + + B6 +	 B  X		�6	 	 9	 	B	 	 X
�6
! 9
"
B
6	# 	 9	$	:B		 6	% B	6	& '' B	+	  7	( L g_lastWanFaRes进入异界WriteStateLogAutoUseGoodsNewActionRunToMapQuitGongHui	callGetDataGongHuiDataGetJiaoYiBossNameGetTianFuBagGoodsAutoUseBuffSkillAutoZhaoHuaninHideOutAutoXiZhuangBieAutoSetBaoShiDataAutoChangeZhuangBeiAutoChangeFlaskneedOpenMap没有异界门要开图g_firstEnterGameOpendMap异界门数量：
TRACEinsert
tableTableHaveValMapWorldsclassNameworldArea	findstringcanOpenipairsmeGetSmallCsmArr  MavenHubneedSaveGoodsg_taskActionGetLastPageArrWarehousePage 	




!!###$$%%''''''''''''''((())****++,,,00000011222336self  �res �canEnterWorldAreaNameArr wyijieArr tcanMoveYiJieArr s  k v  ground 4;bagGoods  bossName isGongHui  ghData  �   "�+  6  B	  X�+  X�	 X�+  X�	 X�6 B6 )d BL  
SleepZhaoHuanIsNeedZhaoHuanLingTi 			ret ltRet  O    � 6   5 6 B C  IsNeedZhaoHuanLingTi   TableHaveVal      � 4h� 3  +  6 9
  X�6 9
  X�6 96 9 X�6 6 9B  X�6 + =5	 X�6
 B	  X	�6 B6 9B 3 7 X
� X�	 X�6 B5 X�+  7 2  �L  waitTimed	typeZhaoHuang_funcGoBack mapClassNameGetNeedGoToDataGetYiJieZhaoHuanLingTiDataIsNeedZhaoHuanLingTi waitTimed	typeneedZhaoLingTig_taskActionQingQiuLingTilvme
minLv	nameg_lingTiBossData self  5funcIsZhaoHuanOver 3res 2ltRet ltData  �  	,L�6   96   9B, 5 + )	� +
  )'B
  X�6  99999B 6   96   9B +  )	 +
 )� +  )'B
  X� L yxobjGetDistanceme  GetLastArrGetCanMakeDataGroundself  -res dis attackRes  �   '�
)  5  6  6 99B  X�)�L classNameworldAreameTableHaveVal  MapWorldsPenMapWorldsArachnidNest	self  ret watiMapArr 
 �   )� 6     9  -  + +  ) B 
   X�9  X�+ X�+ L   canOpenGetDataGround                 xzzsClassName ground 		 �  �6   )�3 B    X�6  + = 6  ' B K  �打开贤主之试MYTRACE1OpenXianZhuminiMap WaitFunctionxzzsClassName  �
  !W�+  6   9B  X�6 9  X�' 6  9 + 6 )	 B
  X�9  X�3	 5
 == 2 �2  �L talkOverFuncobj 	type canOpengroundArrGetDataGroundGMetadata/Terrain/EndGame/MapAtlasMaven/Objects/MavenBossRushObjectOpenXianZhuminiMapIsInXianZhuRongLumeself  "ret  xzzsClassName ground 
talkOverFunc  �	  !���&6  '   9 B 9B A4  5 6 6 BX8�9			  X	5�9	
	  X	2�9	9			)
  
	 X	-�6	
  9 9B 9B 9B A	 	 X
�9		 X	�6	 	 9		99+  ) B	 	 X
� 9	6 9+   B	 	 X
� 9	B	6	 9		  B	ER�6  BX�6	 	 9		99B	 9
B
 
 X
�)
 
	 X
�)
 
	 X
�5
 9=
9=
L
 X
�5
 9=
9=
=
L
 ER�6  BX�6	 	 9		99B	)
 
	 X
�5
 9=
9=
L
 X
�5
  9=
9=
=
L
 ER�+  L  	type 	typeobj 	type 	typeIsHiddenGetDistanceinsert
table	ShowfactionIsCanAttackyxGetMinDisCanMovePt1meNPCminiMapIconGetNameGetMonsterResistanceGetMonsterTypemonsterVarietiesTableHaveValhplifeData	typegroundArripairs  MapBossActBossGetNoPassedCntGetNowSmallMapData剩未走过的点：%dWriteStateLog


       """""""%%self  �qz  �bossArr �checkArr �; ; ;k 8v  8=" " "k v  dis   k v  dis  �   &�'    9 B6 9  B  X�+ L + L 	findstringGetSmName	荒林self  str smName  �   #�+ 9    X�  9 B  X�+ X	�6  9B  X�+ X�+ L IsInChuanYueMapmeIsInHuangLinMap0isInYiJieself  ret  �  "�	6  6 , 6 B 	  X�6   X�6 ' + ) B6 ' BK  新进房间，使用传送WriteStateLog+Metadata/Items/Currency/CurrencyPortalUseOneGoodsByNameg_isInChuanYueMapiconArrmeGetSmallCsmArr 	self  arr  �  8�6   96 B  X�6  9 	  X�6 B  9 B  X�  9 B6   96 )d B L GetNowCanMoveMapDataUseCsjzIsCanUseCsjzMapQuitTeamsmallMapDataArrmeGetSmallMapDataByPtminiMap 






self  nowSmallMapData  |   �  9  + B  X�6  9BX�+ X�+ L IsBossOverminiMapGetBossResself   �   *I�+  6  9  X$�6 6 BX�9 X�9  X�9	 9B  X�99	
  X�6
 99	9			9		'
 B
  X�5 9= X�ER�L obj useCsm	typeAtlasExilesBossclassName	findstringworldAreaHaveDatagroundvisibleEntrancePortal	nameiconArripairsshouWangShiBossOverminiMapself  +res )! ! !k v   �    �	 6     9  6 9' B+ B    X �+  X�+  L  AtlasScreenSearchLabelGetNameByClassNameGameStringGetDataGameUi                �   �	6   )�3 B    X�6  + = 6  ' B K  守望石祭坛点击完毕MYTRACE1shouWangShiOverminiMap WaitFunction �  x��	1+    Xs�6  9  X9�6  9' + + 6 B
  X�9 9B  X
�6 '	 B3
 5 9== XU�6  9' + 6 )	 B
  XK�9  X�6  9' + 6	 )
 B
  X>�5 = X:�5 = X6�6  9' + + 6 B
  X,�9 9B  X&�6  9' + 6 )	 B
  X�5 = X�6  9' + +	 6
 B 
  X�9 9B  X�5 9= 6  + =2  �L shouWangShiBossOver 	typeEntrancePortal 	type 	type 	type"Metadata/NPC/Epilogue/ZanaMapcanOpengroundArr(Metadata/NPC/Epilogue/ZanaMapPortalGetDataGroundtalkOverFuncobj 	type 有守望石祭坛MYTRACE1HaveDatagroundiconArrWatchstoneAltarGetDataByNameMyMiniMapIconshouWangShiOverminiMap!!!!!!!!""""""""########$$%%%%'''''''''(((((((())))***00self  yres wicon 0talkOverFunc ground zana icon .ground  � 
 	  5�	, 6   9B X�6  9' + +  )	 B 
  X� 96 B 
  X�
  X�5 =L +  L obj 	typeg_textInviteHideOutGetTalkData$Metadata/NPC/Missions/StrDexIntGetDataGroundIsInMyHideOutme			self  !npc talk   �  C��	6   9B6 '	 
 B	  9 B
  X,�6 9B9	!	)	
 	 X$�)   X�	  X�6 '
 B+ L 6  9	
  X�6 9B6	  9			!	6	
 ' 6  B B	 X	�  X	� X	�+	 L	 X�6 
 9)P B6 )
�B+ L 
SleepAutoRunRandPtmetostring(没有目标后用时：%s 最大超时时间：%dMYTRACE1lastHaveResTime全部点跑完，完成enterTime	timeosGetNowSmallMapData未跑完点：%dWriteStateLogGetAllNeedRunPtCntminiMap 		self  Dres  Dval  DminCnt  DmaxTime  DmaxCnt ?nowCnt  ?nowSmallMapData 8noResUseTime  �   >��	+ 9    X9�  9 B
  X4� 9B)  X.�6  9B  X(�+  6 6 BX�9		 X	�9			 X	�6	
 	 9		99)
 B	
	  X
�6

 
 9

B

 9

9	9	B
 
 X� X�ER�
  X�+ X�+ L IsCanMovePtGetCanMoveMapDatayxGetMinDisCanMovePtmeEntrancePortalEntrance	nameiconArripairsIsBossOverminiMapGetNeedRunPtCntGetNowSmallMapDataisInYiJie						






self  ?ret =nowSmallMapData 6canMoveDoorIcon '  k v  canMovePt  �    �	6     9  B    X 
�6    9  ' + +  6 B 
   X �+  X�+  L  iconArrWatchstoneAltarGetDataByNameMyMiniMapIconIsInChuanYueMapme � <��	3  +    9 B  X2�9   X/� 9B 9B
  X'�
  X%�6 ' 	 
 B6 6 BX	�
 X�
 X�6	 6
 B 	  X� B  X	�6 ' 
 B6 ' + ) B+ 2  �L E	R	�+ 2  �L +Metadata/Items/Currency/CurrencyPortalUseOneGoodsByName完成度大于：%g 使用传送meGetSmallCsmArrg_finishValArripairs完成度：%g,%gWriteStateLogGetNowFinishValGetLastFinishValisInYiJieGetNowSmallMapData  				




self  =funcIsCanUseCsjz ;nowFinishVal :nowSmallMapData 7lastFinishVal )nowFinishVal  )  k v  arr  �   Ty�
+  6  99 X6�6  9' + 6 ) B
  XC� 9B  X>�6	  9
6  96  96 +	 )
 B
  X�9 9B  X�6 ' B5 9=9=9= X�5 9=9== X�  9 B X�6  9' + 6 ) B
  X� 9B  X�5 = L  	type)Metadata/Monsters/Shakari/ShakariMapMapWorldsDesertSpring1GetSmName 	typeobj 	type旁边有传送门MYTRACE1HaveDatagroundg_entranceArryxGetMiniMapIconminiMap
IsDiegroundArr/Metadata/Monsters/Maligaro/MaligaroSoulMapGetDataGroundMapWorldsOvergrownShrineclassNameworldAreame






self  Ures Sboss -icon ground )
     
�
+ L self   �   J�
)�6  B)  6 96 9  X�)  6 9  X�)  B! X�!!)   X�)  L bossDieTicklianMoBossDieTickminiMapmax	mathGetTickCountself  needWaitTime sTick ret maxTick 
 �   )�
6   9' B
  X	�6 ' B 9+ B+ L + L 
Click点击完成迷雾WriteStateLog@Art/2DArt/UIImages/InGame/Delirium/FastforwardButtonDefaultGetDataByArtNameGameUiself  miwuFinishUi  �  	 >�
+  6  9
  X�9
  X�9
  X�6  999B6  96  	 +
  +  + B	 L groundArrGetCanMakeDataGroundGetDistancemeyxnextPtResminiMapself  res nextPtRes dis  �   &�
6    X
�6 9B)   X� X�+ L + L GetCnt1QuLingDatag_quLingAllMapself  cnt maxCnt   �   -b�
)   6  6  9B A X�9
  X�9 9B6  	 BX
�9 9' +  ) B  X�9 95	 B  X�   E
R
�ER�6
 '   BL  有地图数量：%dMYTRACE1  is_blighted_mapIsHaveNotUseShuXingMapIsGoodsDatagoodsDataGetHaveDataBagGoodsArrbagGoodsBarGetLastPageArrWarehousePageipairs	mapCnt ,! ! !k v  bagArr   k v   �  	 N��)  )  6   9' 6 +  + B  X�+ X�+   X:�-   9B  X4�6 6 996 9	B  X	�-  9
  X�6 - B A  
  X�9 9X�-  9
  X�6 
  X�6 9	6  X�6 
  X�6  X�6 
  X�6 9	6  X�6 
  X�6     J  ��g_puTongWanChengDug_usePuTongWanChengDuLvg_yiJieWanChengDug_useYiJieWanChengDuLvmapModemapValGetYiJieShuaTuModeByMapCntisInYiJielvclassNameworldAreameGetShuaTuModeIsNeedAllQuLing
uiArr6Art/2DArt/UIImages/InGame/Delirium/DeliriumRewardGetDataByArtNameGameUi					self funcGetMapCnt mapVal LmapMode  LmiWuIng ?data - |  ,�
C3  3 9   X� B= = 9 9 2  �J mapModemapVal  >???@@@@BBBBself  funcGetMapCnt func  �   (�)'9   X�9
  X�6 B9!  X�+ X�+ L GetTickCountbossStartTickbossOverself  smMap  tick  o   �6   6 9B     X�+ X�+ L classNameminiMapGetBossMapArr smMapArr  � 	 D�
3  9   X�6 9  9 B6 99' &B
  X�+ 2  �L + 2  �L 竞技场classNameworldAreameGetSmName	findstringisInYiJie 			self  onlyCheckJjc  funcIsNoBossRoomMap  �    !�6   9     X �6  9  ' +  + ) B 6    X�9 )    X�+ X�+ =6   9  L  
index
a11q1GetDataTaskDataopenMapTaskIngminiMaptask  � /�	3   -  9  X�-  9 X	�6 9  X�  BX�+ X�+ 2  �L  �notOpenSaiJiWanFaminiMapmapMode self funcIsOpenMapTask  o  �3  6 6 9  X� B=6 92  �L quiceFuBenminiMap 
self  func  �  V��+ 6   9B)   XM�!#  9 B6  	 96
 B   X�6 6
 6 99B  X	"�	  X�+ X�
  9	 B  X	�
  9
 B X�	  X� X�
  9
 B X�+ X�+ X�	 X� X�+ X�+ 6 '
  6 6   9
B A   6  B6  B6  B B
L tostringenotEnterArr:%d bossOver:%s maxCnt:%d nowCnt:%d shuTuOver:%s mapMode:%s mapVal:%s nowFinishVal:%gMYTRACE1IsBossOverIsQuiceFuBenclassNameworldArea"g_noCheckNotVisibleDoorMapArrTableHaveValmeGetNotEnterEntranceArrGetShuaTuModeGetAllNeedRunPtCntminiMap 		




self  Wret UmaxCnt QnowCnt  QfinishVal KmapVal HmapMode  HnotEnterArr C �  C���a+   -  9   XI�6 9  XE�6 96  X@�6  9' + +  6	 B
  X6�9
 9B  X0�6  9B 999B  X%�6 ' B9  X閫6  9' + + 6	 B  X�6  9' + + 6	 B
  X垁6 9  X�6 6 9B=X�6 9B6 9!)�  X�+  L 6  9' B
  X� 9+ B6 )�B6 ' B6 6 BX'�6	 	 9	 	99B	)
P 	
 X	�9	!	" X	�6	 	 9	#	9$B		 X	�5	% 6
& 9
'
9$6( 9)) 	 B8	B
6
 )d B
6
 
 9
*
9$*  B
ER�) ) ) M�6	+ 	 9	,	6  5- 9=9=) +  + )�B	
 	 
   X	�X�O�   X�6  9 99B)d  X�5. 9=9=  X�5 / X�90 	 X�+ =1 L  X儉9
6+  92'3 + 6	 )
 B
  X�94  X� 
  Xr� 9B  Xm�6  9 99	B)d  Xd�6  956	 9		6
 9

99+ + +  )�B
 )  XR�6+ 	 9,6
 +  56 9=9=) +  )< + B	     X�67 '	8 B59 =:=;L X8�L  X6�6 '< B6  9'= + + 6	 B
  X)�6 '> 9?&B6+  9,6 )� 5@ 9	=	9	=	+	  +
 +  + )�B
     X�9
 9B  X�5A 9
=:  X�5B 9=9=  L   � 	type 	type  	name有奖励：Reward塔防完了，检查奖励ptLineArrobj talkWaituseCsm	typewaitTime�要开启塔防WriteStateLog  
AStar
quest0Metadata/Monsters/Masters/BlightBuilderWildGetDatanotMinMon	type waitTime�	type 	type  GetCanMakeDataGroundAddNoSelObjrandom	mathCreateTaFang	call  
indexIsNoSelObj4Metadata/Monsters/LeagueBlight/BlightFoundationclassNameGetDistancegroundArripairs有BlightPathInactive
Sleep
Click>Art/2DArt/UIImages/InGame/Blight/FastForwardButtonDefaultGetDataByArtNameGameUi	timeostafangStartTimeBlightPathBlightPathInactivevisible有BlightCore
TRACEyxIsCanMovePtGetCanMoveMapDataHaveDatagroundiconArrBlightCoreGetDataByNameMyMiniMapIcong_needTaFangLvlvmenotOpenSaiJiWanFaminiMapisInYiJie�烮(			


!!!"#$$$$$$$$$$$$$$$$$%%&!))*********+++++++-.///0022677777777888889;;;;;;;<<<<<<===>>>>>>>>>>>>>>????@@@@@@@@@@@@@@@@AABBBCCCCCEKMMMPPPPPPPPQQRRRRRSSSSSSSSSSSSSSSSSTTUUUUUUVVVVVXXXXXX`self res �icon �icon1 +�kuaiJinUi m* * *k 'v  'taTypeArr   i checkDis retObj 1Kxn Cdis 0ptLineArr iconReward ++ j  
�h3   B
  X�6 ' B2  �L 塔防操作WriteStateLog bccddeeeggself  func 	res  �	  !���*6   9  9  ' &  6 6  998
  Xy�6  BXs�-  9 Xo�9  Xl� 6 '
	 6
   X�+ X�+ B A
  X_�6  
 99B
  X	"�6	  	 9		99B	6
 ' 	 B
)
 	
 X
�6
  
 9

 B
-
 	
  X
�6
 ' B
6
 + =
5
 9=
9=
L
 X	6�6	 	 9		6  96  9' +  + B	6
 ' 6
 	  X�+ X�+ B A

	  X
�9
	9

6  9
 X
�6
  
 9

9	9	B
6 ' 
 &B)� 
 X�6 ' B5 9	=9	=9	= L ER�+  L ��obj 	type有传送门传送门DIS:
TRACEworldAreaClassNameground*获取BOSS位置失败 周边是否有传送门：%sEntranceGetMiniMapIconMyMiniMapIcon 	typeshuTuOverminiMap到达地点成功，设置刷图完成AddNoRunPt获取BOSS位置成功 dis:%gyxGetDistanceresNameGetMyPTCanMoveResPttostring%没有竞技场，是否有了BOSS位置：%sWriteStateLogobjNamesmallNameipairsg_mapDoor	bossclassNameworldAreame										

   !!!!!!!!))smName mapMode bossName �map }v v vk sv  sresData kpt Zdis icon '+dis  �  ]��U+    9  B9 3 
  XE�6 6 99B )   X9�+ 6 	 BX
1�6  9	 B
  X�  9
  B  X$�6 '   B6  9  B  X
�6  B
  X� X�X�+ X� B 6 ' 6   X�+ X�+ B AE
R
�X� B  X�'   X�6  '	 BX�6  '	 B2  �L 不支持	支持速刷模式，此图%s速刷niltostring%在boss房间了，获取到boss位置：%sWriteStateLogGetNeedGoToDataIsInMap/%s 没去过 或未打boss  要去，现在小地图：%sMYTRACE1IsSmallMapBossOverGetSmallMapDataminiMapipairsclassNameworldAreameGetBossMapArr mapModeGetSmName.//0000011112333455555666666667777788888888999::;<<>@BBBCCCCCCCCCC33FHHHKKLMMNNNNNPPPPTTself  ^res \smName YmapMode XfuncGetSetBossRes WsmMapArr @notFindBossRes 74 4 4k 1v  1smMap ,nextRes str  �  r��!+  6    X�)7   9 B9 
 X�+ X�+ 6 ' 6   9
 B
 A 6	   9 + B A	 6
   9 B A
  A  9 B  X"�  9 B  X�  X�+   X�  9 	 B  X�  9	 B 
  X�L X
�6
 9  X�  9 B  X�L   X'�)d  
  X�	  9 B  X�	 9B)  X�6 9)	 
 B )< 6 '	 6
  B
 A6
 	 9
 6   6 9 B L inZhuangYuangroundArrmeGetNextPt1notOtherMap:%sMYTRACE1min	mathGetNeedRunPtCntIsBossOverneedGetMapTianFuminiMapGetQuiceFuBenNextPtResIsSmallMapBossOverIsInBossRoomIsQuiceFuBentostringD获取下个坐标 速刷：%s funcIsInBossRoom：%s funcIsInBossRoom1:%sWriteStateLogisInYiJieGetNowSmallMapDatag_findMonsterDis
				
 self  sres qmonsterDis mnowSmallMapData jnotOtherMap dinBossRoom runSize "&passDis % �  "�+  9    X�6  96 )�6 ) +	 )
�+ *  +  B +  L megroundArrGetCanMakeDataGroundinZhuangYuan�墇self  res  �  ���4)( +    X� 6  9 6 
 999B B +  9   X�6  96		 )
�6 ) + )�+ * +  B X�6  96		 
  +  + +  + B	   9
 B  X�L   Xi�  Xg�6   X�)7 6  9)	d 
 B6 
  X[�)  +	  +
 6 9
  X1�6 99
  X,�6 99
  X'�6  96 996 99B  X�6  96 996 99B 6 9	6  96	 +  	 +  +  
 )�+  B   X�  X�
	  X�6  9  B 6  96	 +  	 +  + 6  9  B
 )�+  B 
  X�=	X �L nextPtIsCanMovePtnextPtResminiMapnowSmallMapDatag_findMonsterDisIsQuiceFuBengroundArrGetCanMakeDataGroundinZhuangYuanyxGetDistancememax	math�墇<												""""##$&&&&&&))))))))))))))))))++,-3self  �addRange  �zdNextPt  �dis �pt �res �monsterDis ,cmonDis ^nextDis XnextPt  XnoTalkNpc W �   Oh�9    X�6 
  X�6 B
  X�9  X�6 
  X	�6 9)   X�6 9+ =   X�6 
  X�6	 9
6  X�6 
  X�6 9X%�  X#�9  X �6	  9B X�6	  9B X�6	  9B X�6	  9B X�6	 99 X�6	 99L 2_11_labworldAreaIsInHideOutIsInTownIsInYeShouYuanIsInGoldPortisInYiJielvmeg_yiJieLvuseNotMapDataclassNameneedCntg_notMapDatamapClassNameGetYiJieZhaoHuanLingTiDatag_funcGoBack
zdMap		

self  PzdMap NltData  �  Dg�6  ' B6 B6 )�B9   X�6 9)   X�6 ' 6 9&B6 9	  X�6	 + =
+  6 6 9 =9   X�6  9B  X�  X�6 99 X�6 9  X�6	 + =
6	 + =
  X�6  + BK  SetNeedNewMapneedSaveGoodsopenMapTaskIngminiMap2_7_5_mapclassNameworldAreaIsInXianZhuRongLumeisInYiJieneedOpenMapg_taskAction还要刷的剧情图次数：
TRACEneedCntg_notMapDatauseNotMapData
SleepGoBackCity回去刷新图WriteStateLog	self  EinShouWangShiMap  EzdMap  E �   !�6   9)  ) B 9) ) B
  X�+ X�+ L GetEmptyBagPtGetDataBagGoodsBarself  myBar  �   �6  ' B6 + =6 + )� B  X�5 L +  L  	typeGoBackCityneedSaveGoodsg_taskAction回去存装备2WriteStateLogself   � 
 d��-+    9  B6  96 B9   X�  X� X�6 9 ' B  X
�6	 '
 6 	 B A6 9+  <9  X�9   X� 9B=9   X�6 6 B	  X�K  6  9B  X�6 9 B X�  9 B  X�  9 B  X	�  9 B  X�  9 BX�  9 B X�6 ' B  9 B 
  X�6  BK  DoWorkGetGoToMapRes没在异界中WriteStateLogGetShuaTuResGetBagFullResIsBagFullIsCanUseCsjzMapIsInShuaTuMapiconArrGetWayPointResIsInYeShouYuanAutoMiGongByLvIsNeedGetMapTianFuisInYiJienotOpenSaiJiWanFasmallNameArrtostring*在庄园中 SMNAME:%s 要清除错误的smnameMYTRACE1	古灵	findstringnilinZhuangYuanmeGetDataMiniMapGetSmName


    """"#%%%((((**+++-self  eres csmName `miniMap [     	�K  self       	�K  self   �   /�-     9   B    X�-     9  - B    X�-     9  B    X�-     9  + B    X�-     9  B L   �
�MakeShouWangShiGetNeedMakeResGetZhuangYuanNeedMakeResGetBossResGetTeShuResself qzMapBoss  4   
� -     9   D   �GetNextPtRes    self  � A���f+  6   9B6  9B6   9 B  9 B  X�9 9+	 B6  9+	  +
 B6 	 9	
 B	  9
 B+ 6	 
	  X	�6	 B	 	 X
�6	 B	6	 )�B	+	  7	 2 �  9	 B		   X	�9	  	 X
�6	 	 9		B		   X	銆+	 6
 ' B
9
	
  X
� X
�6
 9

9


 X
�  9
 B
X�+
 X�+
 3 6 9  X葊6  9B  X�6  6 B   X�6   9 B 6 B   Xt�  X4�  9 B	  	 X�  9  B X�+ X�+ 6 '! 6" 	 B6"  B A  X�6#   X�6 9$6#  X�6   9%'&  B  X�9'  X� 9+ B  9( B +   X;�
  X�9)
  X6�9)9*	 X2�  9+ B  X-�  9, B6- )  B6. )  B6  3/ 6 B   X�  9 B  X�  90 + B 61 '2 6"   X�+ X�+ B6" 	 B A
  X�+ X�+   X�6  93 B   X3�64   X�6 95  X�6 66 976 9564 B=56 '8 6"  B6" 	 B6" 69 B A  X�6  9:B  X� 	 X�69   X�  9;  )
 ) ) B  X�+ X �2	 �  X	�  X	�6	 	 9	<	B		   X	�  9	=   6 6> B	X	�6	 6
? 9
@
B
=
5	X	 �2  �L K  	timeos
zdMapShuaTuOverGetBackNeedResIsYiJieNotResTimeOutIsInChuanYueMapnotFindBossshuaTuOver:%s %s %smax	mathlastHaveResTimeg_lastAttackMonFinisTimeGetTeShuRes5没有下一步了，是否找到boss:%s isFightBossIng：%sWriteStateLogGetBossRes UseSkillByTypeUseFlaskByTypeUseCsjzByFinishValIsQuiceFuBen	typeobjGetNextPtMinDisNeedMakeResenableHArt/2DArt/UIImages/InGame/Hellscape/HellscapeEncounterButtonDefaultGetDataByArtNamelvg_needMengYanLvtostring#isFightBossIng:%s shuTuOver:%sIsShuaTuOverIsFightBossIngGetNeedMakeResGetNeedResGetYouXianMonResIsBossOvershuTuOver IsInBossRoomclassNameworldAreame
index没有要开的玩法MYTRACE1GetLeaveZhuangYuanResinZhuangYuanGetWanFaRes
SleepGoBackCityg_funcGoBackGetNowSmallMapDataAddLockDoorminiMapGround
ClickclickHongLanWangUiGetSmNameGetNeedHongLanWangUiBagGoodsBarGetArrGameUi





 !!""######$$$$$&&&&&&&&&&''((****,,,,,,,,,,---------..////////0000001111122225555899::::::::::::::;;;===>>>??????@@@@@@@AAAAABBBBBBBBBBBBBCCCCCHHJJJJJJLLMMMMMMMNNNNNNNNPPPPPPPPPPPPQQQQQQQQQQQQQQQQQQQQQQRTVXXYYZZZZZ[[\\\\\\\^`````aeeself  �res �uiArr �barArr �hlwUi �smName �groundArr �nowSmallMapData �shuTuOver �isFightBossIng  �qzMapBoss �funcGetWorkRes �ui D	notFindBoss = �   ,�  9  B
  X�6 99 X�9   X�6  9B  X�6  9BX�+ X�+ L IsInKLDIsInXianZhuRongLuisInYiJieclassNameworldAreameGetNeedMapself  zdMap  l   �6   95 )
 + 6 D iconArr  LabyrinthLeverGetCanMovePtByIconmeself  	 �   '@�I6   9B  9 B  X�  9 B  X�  9 B  X�  9 B  X�6 9  X
�  9 B X� 9	9
 B L iconArrGetNeedWanFaResGetChestAndGoodsResnotOpenSaiJiWanFaminiMapGetJiGuanResGetTaFangResGetXianZhuResGetGoToShouWangShiBossResNewWanFaDataManageHself  (wfManage #res  �   �6   9  ' +  + ) B   X�9 	  X�+ X�+ L 
index
a11q1GetDataTaskData task 	 �  Hr�+    9  B
  X
�6  + B  9  B X6�9   X�  9 )  B  X-�  9 B X	�  9 B X�  9 B X�3  B  X�6	 9
9 X�  9 B X�6 ' B X
�6	  9B  X�6 9 B 2  �L iconArrGetWayPointResIsHaveHideOutGetNeedGoToData2_11_endgame_townclassNameworldAreame GoToYiJieInviteHideOutCheckZhaoHuanBuySkillGeminHideOutGoToMapSetNeedNewMapGetNeedMap	self  Ires GzdMap DfuncIsOpenMapTask % �  ]��"6   )� B 9B 	  X�	 9B  X
�  X�6 '	 +
 ) B6 '	 B	  9 B  X;�6 '		 B	  9
 B  X�6 6 B=	  9 B	  X%�
  9 B)	  	 X	�6	 9		 	 X	�6	 '  B	6	 6 B	6	 +
 =
	X	�6	 ' B	6	    B			  X	�  9	   B	X�6 '
  BX�6 '	 BK  炼魔中"还不可以回去需要等待：%d 毫秒OverGoBackAutoQuLingBuyGoods可以回去了MYTRACE1
Sleep此地图需要额外等待：%d毫秒backWaitOkGetNeedWaitTimeByMapGetNeedWaitTimeGetTickCountlianMoBossDieTickminiMapOverMiWu未开启炼魔或者炼魔已完成
TRACEIsLianMoOver异界完成，使用传送WriteStateLog+Metadata/Items/Currency/CurrencyPortalUseOneGoodsByNameIsInXianZhuRongLuIsShouWangShiBossMapGetSmallCsmArr 					



   "self  ^barArr  ^uiArr  ^me  ^zdMap  ^arr YinShouWangShiMap VneedWaitTime &+backWaitTime ! �    F�	6  9B6 !)�  X�6 6  9B A  )   X�6  B)   X�6  9B7 + L + L AutoBuySkillGem2GetArrBagGoodsBarGetNeedShopBuySkillGemArr!g_lastShengJiBuySkillGemTime	timeosself  !cityIndex  !needBuySkillArr  n   �  9  ) B  X�6  D +  L GetNeedGoToDataBuySkillGemself  zdMap   �   ,V�
 X�)d =   X�)2 = = 6  9B6  96 B= 9   X	�6  96 
  9	 B A= 6  9
6 
  9 B6	 	 9		B	 AK  IsInYiJieGetPassDisCheckPassedGetRunSizeGetNowCanMoveMapDataGetSmallMapDataByPtminiMapnowMapDataReadCanMoveMapDatamenotOtherMappassDisrunSize												
self  -runSize  -passDis  -notOtherMap  - %   
�9  L passDisself   %   
�9  L runSizeself   R   
� 9   9    X�+ X�+ L ptLineArr          r1  r2   �  8r�4  '  6 9 BX(�9 X%�9  X	"�6 
 999)
 B  X	�6	 	 9	
	6 96 999+ + B	=		9				 )
  
	 X	�)	 =	6	 9		  B	ER�6 9 3 B:2  �L  	sortinsert
table	type
AStarptLineArryxGetMinDisCanMovePt1mevisible	nameminiMapIconArripairsLabyrinthLever					

self  9canDoorArr 7iconName 6+ + +k (v  (doorPt  {   !�6   999B  X�9=9=L yxGetMinDisCanMovePt1meself  door  pt  �   )�6   9 B  X� 9B6 ' BL 这条路径上有锁住的门MYTRACE1	ShowGetLockDoorByPtArrminiMapself  ptArr  lockDoor 	 �   6b�+  9   96 B  X-�6 9 999B  X�6  999	B   X�+ X�+   X�6  9	6 96	 9		9
9+ +  B	=5
 9=9=9= L  	type
AStarptLineArrGetMinDisCanMovePt1yxIsCanMovePtfirstMapDatameGetNextPtnowMapData

self  7ret 5nextPt 0mapData +canMove1 & �   2�  9  B  X�6  99B  X� 9B6 ' BL 这条路径上有锁住的门
error	ShowptLineArrGetLockDoorByPtArrminiMapGetNextPtRes			self  nextPtRes lockDoor  X   �  9  B:L *GetLastSmallMapNotEnterEntranceResArrself  arr  �  + ���;4  9    X祤6 9B9 9!)
  X�5 L 6 ' B6 6	 9
BX爛	 9B  X泙9  X榾99
  X�9996 99 X寑	 9B9	 9B
  X��6 '
 99B+ 6		 	 9		99B	
	  X
d�6
 
 9

9	9	)
 B
	
 
	  X
L�6
	 
 9

	 B


  Xd�
 9
B)   X^�6  96 96 999+ + B=9 9B  X�9=9 9B9=6 ' B6  9 99B)<  X�6!  9"9 9#B A  X�X,�9 )   X'�) =$6% 9&  BX
�9

 9

B
 
 X�6
 '' 9 9(B A
X
�9

 9

B
 
 X�6
 ') 9 9(B A
X�6 '
* BER^L doorPt 没有%s 没有mbPtGetName%s 没有mbPt1insert
table	typeGetIndexGetDataByIndexGroundGetDistanceAAAobjHaveData
AStarptLineArrGetNoPassedCntGetSmallMapDataByPtGetMinDisCanMovePtGetDoorMbPtyxdoorPt:%g,%gMYTRACE1GetJiaoHuPt	ShowmeclassNameworldAreagroundvisibleIsEntranceminiMapIconArrminiMapipairs!检查上一小图是否有没跑过的点
TRACE waitTime�	typeenterTimenowMapData	timeosnotOtherMap	!!!""""""##############&&&&&''(((((-......///////011111122222223555:self  �arr �� � �k �v  �doorPt �can ymbPt ssmallMap Fdis , R   
� 9   9    X�+ X�+ L ptLineArr          r1  r2   � (���*4  9    X墍6 9B9 9!)
  X��6 6 9BXt�6   X�9	
 9
B  X	�9	9  X	�9	96	 9		' B		 X�6  	  X[�
 9B  X	V�9  X	�  XQ�9	9  X	M�9	9
  X�9	996	 9		9			 X�9	99 X<�6 
 999B  X	4�6	 ' B	 9	B	9			 9		B	
	  X
(�9
	
 9


B
 
 X�9
	=
		9
	=
	6
 
 9
 
6 96 99	9	+ + B
=
	6
! '" 9	 B
9
	

 )  
 X
�)
 =
#	6
$ 9
%
 	 B
ER�6$ 9& 3' B2  �L  	sortinsert
table	type传送门步数：%dMYTRACE1
AStarptLineArrobjGetJiaoHuPt	Show有没去过的传送门1
TRACEyxGetDoorMbPtAzmeriLeagueAreameclassNameworldAreacanOpenvisibleIsEntrancenextArr
ArenaGetNameByClassNameGameStringworldAreaClassNameHaveDatagroundlastEnterminiMapIconArrminiMapipairsenterTimenowMapData	timeosnotOtherMap 





&&&&&))self  �notVisible  �arr �w w wk tv  tmbPt >6canMovePt * ^   !�  9   B:L GetNotEnterEntranceResArrself  notVisible  arr  � 	  Di�+  6  6 99B  X�  9 B X�  9 B X�6  96  9B A X�  9	 B X�  9 B X�  9 B X	�6  96  9B A   X�6  9
9B  X� 9B6 ' BL 这条路径上有锁住的门
error	ShowptLineArrGetLockDoorByPtArr'GetLastSmallMapNotEnterEntranceResGetSmallMapNameGetTeShuResminiMapGetNotEnterEntranceResGetNextPtResclassNameworldAreameIsLastEnterSmallMap		




self  Eres ClastEnter >lockDoor 5      �6   L  AllShuaTu H   �  = = =  K  	nameyxself  x  y  res   T  	�6  9 B6  9 B I 
floor	math.self  
x  
y  
 +   �  J .self  x  y   ~   �6     9  -  9-  9B 6  9   D  �NewPt2yxToChunkPtMapArtself x 	y   U  
�3  9   X� B= 9 2  �L indexPt self  func 	 `   �6  ' 9 9 9 BK  	nameyxMapArt pt:%d,%d name:%sMYTRACE1self   o   	�6   96 B A 9D GetMapArtArrGetLastMeRoleDataGetDataMiniMapself  
 �   T�6   999B  X�  9 B 6  BX
�	 9
	B
9
 X�9
 X�L	 ER�+  L GetChunkIndexPtipairsGetArryxToChunkPtMapArt

self  pt  arr  x y  	  k 
v  
chunkPt  �   %`�4    X�  9  B 6  BX�+
    X�6 99	 B
 X�9	 X�+
 X�+
  
 X�6 9 	 BER�L insert
table	name	findstringipairsGetArr						self  &resName  &arr  &mohu  &ret $	  k v  is  �  1�  9    B9 9 6 9' 9	
  D 	name%s,%d,%dformatstringyxGetDataByPt.self  pt  arr  art x y   �  *{�6   ' B  9 : B4  )  )   	  X�6 :
B6	 :B		  6 
 BX�6 9 6  99	 9
 B AER�L yxNewPt2insert
tableipairstonumberGetArrByResName,lua_string_split	











self  +resName  +arr  +strArr &artArr !ptArr  addX addY    k v   '    �K  self  resArr  arr   �  (f�6  8BX �
  X
�9
9	
 X
�9
9	
 X
�
 
 X
�6
 
 9

  	  B
 
 X	�6 9 
 BX
�  X
�L	 ER�+  L insert
tableFindMyArtDataMapArtyxipairs







self  )arr  )index  )art  )artArr  )# # #k  v   okArt  �  
 <��4  6   B X�  9  	 B X.� X,� )   X(�4  6  BX	�  9 
  B )   X�6 9  B6 ' 
  BE	R	�   X
�6  )	 +
   B6 '	 	 BL res数组定位出坐标数量：%dFindMyArtDataart:%s 有：%d个坐标MYTRACE1insertipairs
tableGetPtArrByResNamestring	type			
		self  =resData  =arr  =ptArr ;strType 8arr2 '  k v  ptArr1  K   �4  =  )  = = K  mapDatacntmapself  mapData       
�)� L self   p 	  
�6  9'  9B 9B C GetNameGetIndex
%x %sformatstringself  obj   ]  
!�9  8  X�9  = 9  <K  cntmapself  strKey  obj   \  �9  8  X�9  +  <9  = K  cntmapself  strKey   /   �9  8L mapself  strKey   �  :��")  4  6   BX�  9	  B	  9
  B
 
 X	�+
 <
	  9
 	  B
 X
�  9
 	 B
ER�6 B6 9 BH� 9
	 9		B A
  9
 B
 X�8  X�  9  BFR�L GetCheckDis
GetPtGetDistanceByPtmap
pairsGetLastMeRoleDataDelDataSetDataIsNeedObjGetObjKeyipairs						

!self  ;arr  ;cnt 9mapHave 8  k v  strKey meData   k v  dis  i   	� 9 B9  999D yxIsCanMovePtmapData
GetPtself  
obj  
pt  .   �6  BK  
Errorself  obj   !   
�9  L mapself   !   
�9  L cntself   �   %[�4  6  9 BH�
  X
�
 	 B
 
 X�6
 9

 	 B
  X
�
 
 X
�X�FR�  X	�6  9B 9 B L SortArrByDisGetLastDataMeRoleinsert
tablemap
pairsself  &sort  &maxCnt  &func  &arr $  k v   $   
�'  L ObjMgrself   � 	  *�6  9 BH� 9BFR�6 '   9 B9 BK  cntGetObjName%s 共有对象数量：%dMYTRACEU8	Showmap
pairsself    k v   �6  � �� �6   B 7  6  3 = 6  3 = 6  3 = 6  3	 = 6  3 =
 6  3 = 6  3 = 6  3 = 6  3 = 6  3 = 6  3 = 6  3 = 6  3 = 6  3 = 6  3 = 6  3! =  6  3# =" 6   B 7 $ 6 $ 3& =% 6   B 7 ' 6 ' 3) =( 6 ' 3+ =* 6 ' 3- =, 6 ' 3/ =. 6 ' 31 =0 6 ' 32 =" 6   B 7 3 6   63 B 7 4 6 4 35 = 6 4 37 =6 6 4 39 =8 6 4 3; =: 6 4 3= =< 6 4 3? => 6 4 3A =@ 6 4 3C =B 6 4 3E =D 6 4 3G =F 6 4 3I =H 6 4 3K =J 6 4 3M =L 6 4 3O =N 6 4 3Q =P 6 4 3S =R 6 4 3U =T 6 4 3W =V 6 4 3Y =X 6   64 B 7 Z 6   64 B 7 [ 6 [ 3\ = 6 [ 3^ =] 6 [ 3_ =J 6 [ 3a =` 6 [ 3c =b 6 [ 3e =d 6 [ 3g =f 6 [ 3h =P 6 [ 3i =X 6 [ 3j =V 6   6[ B 7 k 6 k 3l =d 6 k 3m =X 6   6[ B 7 n 6 n 3o =d 6 n 3p =X 6 n 3q =V 6 n 3s =r 6   6k B 7 t 6 t 3u =X 6 t 3v =V 6   6k B 7 w 6 w 3x =X 6   6[ B 7 y 6 y 3z =d 6 y 3{ =X 6   6[ B 7 | 6 | 3} =d 6 | 3~ =X 6 | 3 =` 6 | 3� =� 6   6[ B 7 � 6 � 3� = 6 � 3� =X 6 � 3� =b 6 � 3� =f 6   6� B 7 � 6 � 3� =f 6   B 7 � 6 � 3� = 6 � 3� =V 6   6� B 7 � 6   63 B 7 � 6 � 3� = 6 � 3� =V 6   63 B 7 � 6 � 3� = 6 � 3� =V 6   64 B 7 � 6 � 3� = 6 � 3� =R 6   B 7 � 6 � 3� = 6 � 3� =V 6   B 7 � 6   B 7 � 6 � 3� = 6 � 3� =� 6 � 3� =� 6 � 3� =� 6 � 3� =� 6 � 3� =� 6 � 3� =� 6 � 3� =� 6 � 3� =� 6 � 3� =� 6 � 3� =� 6 � 3� =� 6   B 7 � 6 � 3� = 6 � 3� =� 6 � 3� =� 6 � 3� =� 6 � 3� =V 6   6� B 7 � 6 � 3� =� 6 � 3� =� 6   B 7 � 6 � 3� = 6 � 3� =� 6 � 3� =� 6 � 3� =� 6 � 3� =� 6 � 3� =� 6 � 3� =� 6 � 3� =� 6 � 3� =� 6 � 3� =� 6 � 3� =� 6 � 3� =� 6 � 3� =� 6 � 3� =� 6 � 3� =� 6 � 3� =� 6 � 3� =� 6 � 3� =� 6 � 3� =� 6 � 3� =� 6 � 3� =� 6 � 3� =� 6 � 3� =� 6 � 3� =� 6 � 3� =� 6 � 3� =� 6 � 3� =� 6 � 3� =� 6 � 3� =� 6 � 3� =� 6 � 3� =� 6 � 3� =� 6 � 3� =� 6 � 3� =� 6 � 3� =� 6 � ' 3< 6 � '3< 6 � '3< 6 � '3< 6 � '3	< 6 � '
3< 6 � 3=V 6 � '3< 6 � '3< 6 � '3< 6 � '3< 6 � '3< 6 � '3< 6 � '3< 6 � '3< 6 � '3< 6 � '3 < 6   6� B 7 !6   B 7 "6 "3#= 6 "'$3%< 6 "'&3'< 6 "'(3)< 6 "'*3+< 6 "',3-< 6 "3.=� 6 "'/30< 6 "'132< 6 "'334< 6 "'536< 6 "'738< 6 "'93:< 3 ;7 <6   B 7 =6 =3>= 6 ='?3@< 6 ='A3B< 6 ='C3D< 6 =3E=" 6 ='F3G< 6 ='H3I< 6 ='J3K< 6 ='L3M< 6 ='N3O< 6 ='P3Q< 6 ='R3S< 6 ='T3U< 6   B 7 V6 V3W= 6 V'X3Y< 6 V'Z3[< 6 V'\3]< 6 V'^3_< 6 V'`3a< 6 V'b3c< 6 V'd3e< 6 V'f3g< 6 V'h3i< 6 V'j3k< 6 V'F3l< 6 V3m= 6 V3n=" K      GetObjCnt GetMap IsNeedObj ObjInCanMovePt Update GetData DelData SetData GetObjKey GetCheckDis ObjMgr GetPtArrByResData FindMyArtData GetPtArrByResNameArr GetPtArrByResName GetResDataByPt GetArrByResName GetDataByPt GetArr  GetChunkIndexPt ToGamePt ToChunkPt MapArtGetQuanTuClass  GetRes GetNotEnterEntranceRes GetNotEnterEntranceResArr *GetLastSmallMapNotEnterEntranceResArr 'GetLastSmallMapNotEnterEntranceRes GetNextAction  GetNeedOpenDoorAction GetOpenDoorRes GetNeedOpenDoor GetRunSize GetPassDis AllShuaTuShuaTu1 GoToMap BuySkillGem ShuaTuOver GetGoToMapRes GetWanFaRes GetJiGuanRes IsInShuaTuMap GetShuaTuRes GetQiangZhiRes GetShuaTuNextRes  GetBagFullRes IsBagFull OverGoBack GetNeedMap GetNeedMakeRes GetZhuangYuanNeedMakeRes GetNextPtRes GetQuiceFuBenNextPtRes GetTaFangRes IsShuaTuOver IsQuiceFuBen IsInBossRoom IsSmallMapBossOver GetShuaTuMode IsNeedAllQuLing GetNextPtMinDisNeedMakeRes OverMiWu GetNeedWaitTime IsLianMoOver GetTeShuRes UseCsjzByFinishVal IsFightBossIng IsYiJieNotResTimeOut InviteHideOut MakeShouWangShi GetGoToShouWangShiBossRes IsBossOver GetFirstEnterSmallMap UseCsjz IsCanUseCsjzMap IsInHuangLinMap0 GetBossRes GetXianZhuRes GetNeedWaitTimeByMap GetChestAndGoodsRes CheckZhaoHuan GoToYiJie SetNowSmallMapData GetNowSmallMapData GetSmName ShuaTu  ActionAttackYouXianByPt     ActionAttackByPt IsNeedAttackMonster IsWanFaMonster   IsWenWuGuai IsChuanYueGuai IsLieXiGuai IsMiWuGuaiGround GetAction GetNeedArr IsFuHe ActionByPtObjChest  ActionAttackMonster  ActionRunAttack  ActionUseSkillByObj  ActionUseSkillByPtActionEnterZhuangYuan  ActionRunToMap ActionRunToNewMap    ActionRunToNowMap IsKongShou   ActionRunShiQu  ActionRunTalk ActionRunOpenDoor  ActionRunZaFen StrongBoxDuoBi   ActionRunOpenStrongBox  ActionRunOpenChest    WaitJiaoHuOk IsJiaoHuOk GetNeedNewMap GetJiaoHuType  GetJiaoHuId ActionRunJiaoHuActionOneRun GetText 	Exec CheckKaRun IsFinish WaitLastRun CheckRunFunc GetRunOkDis LastRun WaitRun Run UseMoveSkill StepRun CheckAttack GetNextRunPtArr GetStepLastRunCheckDis GetStepRunCheckDis GetMaxCanRunDis GetPtArr ActionRunAction  DelEvent ExecEvent AddEvent ClearEvent SetOneEvent
Event GetInstanceInstance 	Show tostring GamePtToMapDataPt MapDataPtToGamePt RotateCounterClockwise RotateClockwise GetAngle GetRoleDirection GetPtByHuDu GetPtByDirection GetPtByAngle GetDistance1 GetDistance Sub 
SetPt 	Init GetObjNamePt2LuaClass       	  
  
                 ! * ! + . + / 1 / 2 7 2 8 = 8 > E > F M F N P N Q S Q T T T U X U Y Y Y Z \ Z ] _ ] ` e ` f o f p x p y � y � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � 		*+O+PRPSSSSUUUUVZV[`[acadfdgigjljmsmtvtwywz�z������������������������������������������������������������  		233334E4FFFGNGOQOTTTTWWWWX\X]`]aaaabebfhfiiiijnjo{o}}}~�~������������������������������������������������������  *+G+JJJJKTKUYU[[[\f\gjgkmknpnq�q�������	�

CDKDMYM[d[eresusv�v��������������&'>'?K?LTLU]U^f^g�g�������������G�H�H��������������#$$'$((/(0]0^^`^aacaee�e���������� �!!;!<<^<__h_iinioooovvvw�w���������������������������������	�		A		B	B	E	B	F	F	X	F	\	Z	_	_	_	`	b	`	c	c	e	c	f	f	h	f	i	i	p	i	q	s	q	t	t	v	t	w	w	�	w	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	
�	







 
 
"
 
#
#
%
#
&
&
5
&
6
8
6
9
?
9
?
  