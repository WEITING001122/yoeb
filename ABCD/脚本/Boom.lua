package.path = GetPackagePath();
local loadArr={"�Զ�����"};
for i=1,#loadArr
do
	package.loaded[loadArr[i]]=nil;
	require(loadArr[i]);
end


--SetTaskShengJiData(taskClassName,taskIndex,shengjiMapClassName,needLv)--������ͼʱ���� taskClassName=�������� taskIndex=�������� nilΪ���ԣ�ֻƥ���������� shengjiMapClassName=Ҫˢ�ĵ�ͼ���� needLv=���������ټ�Ϊֹ
SetTaskShengJiData("a5q7",nil,"1_5_5",43)--�� �������������� ��ʱ��ˢ����ʥ�ص�50���ٽ�����һ����
SetTaskShengJiData("a9q3",nil,"2_9_1",60)--�BѪˮ��


--ָ��ְҵ  Ұ���ˡ�Ů�ס����塢�����������ߡ���Ӱ��ʥ����ɮ��
g_newRoleJob="����"
--����ְҵ ��ʿ����ͽ�����������͡����ۡ�׷���ߡ������ҡ�Ԫ��ʹ���ٻ�ʦ�������ߡ���ʿ���ھ����й١�ʥ�ڡ��ػ��ߡ���Ӱ��ʦ����թʦ���ƻ��ߡ�����ʹͽ��
g_shengHuaJob="׷����"
--SetUseWeapon(str)--����ʹ�õ����� ֧��(��}����}צ}ذ��|����|���ֽ�|ϸ��|���ָ�|���ִ�|����ذ��|����|ս��|��|����|˫�ֽ�|˫�ָ�|˫�ִ�) �����Ҫ�������м���|�ֿ�
SetUseWeapon("��|����")

--SetUseZhuangBeiTypeData(typeStr,pos)--�����Լ��õ�װ������ 
--typeStr=����("StrDex"Ϊ������װ+�������� "Str"ΪҰ����װ+���� "DexInt"Ϊ��Ӱװ+���ܻ��� "Int"ΪŮ��װ+���� "Dex"Ϊ����װ+���� "StrInt"Ϊʥ����ɮװ+��������)
--pos=��λ֧�ֲ�λ ֧��(��ָ|����|����|Ь��|����|�·�|ͷ��|��|����|צ}ذ��|����|���ֽ�|ϸ��|���ָ�|���ִ�|����ذ��|����|ս��|��|����|˫�ֽ�|˫�ָ�|˫�ִ�) �����nilΪ��������
SetUseZhuangBeiTypeData("Dex|StrDex","�·�")
SetUseZhuangBeiTypeData("Int|DexInt","ͷ��")
SetUseZhuangBeiTypeData("Int|StrInt","����")
SetUseZhuangBeiTypeData("Dex|StrDex","Ь��")
SetUseZhuangBeiTypeData("Dex|StrDex","��")
SetUseZhuangBeiTypeData("Dex|StrDex","����")

--�O���̵�Ҫ�I�ļ���
--SetShopNotBuyGoods("�����ʸ","Metadata/Items/Gems/SkillGemShrapnelShot")
SetShopNotBuyGoods("����","Metadata/Items/Gems/SkillGemVitality")



--SetNeedSkillLineData(val,str,invalidLv)--���û����ܱ�ʯ���� 
--val=ÿ�鱦ʯ�ı���ֵ
--str="��ʯ1,��ʯ1����|��ʯ2,��ʯ2����|��ʯ3,��ʯ3����" ��������֮����,���� ��ʯ֮����|����
--invalidLv=ʧЧ�ȼ� ��������ȼ��Ͳ�����Ҫ����
--SetNeedSkillLineData(val,str,invalidLv,pos)--���û����ܱ�ʯ���� 
--val=ÿ�鱦ʯ�ı���ֵ
--str="��ʯ1,��ʯ1����|��ʯ2,��ʯ2����|��ʯ3,��ʯ3����" ��������֮����,���� ��ʯ֮����|����
--invalidLv=ʧЧ�ȼ� ��������ȼ��Ͳ�����Ҫ����
--pos=ָ��λ�� nilΪ�Զ�ѡ�� 2Ϊ�·� 3Ϊ������ 4Ϊ������ 5Ϊͷ�� 6Ϊ���� 7Ϊ���ָ 8Ϊ�ҽ�ָ 9Ϊ���� 10ΪЬ�� 11Ϊ����
--nType ��Ч���� nilΪ���ۺ�ʱ����Ч 0Ϊû��ˢ������Ч 1Ϊֻ��ˢ������Ч

--��������
SetNeedSkillLineData(10,"ȼ����ʸ,Metadata/Items/Gems/SkillGemBurningArrow|����o��,Metadata/Items/Gems/SupportGemOnslaught",2,nil,3,0)--�^���Ҟ�ʰȡ
SetNeedSkillLineData(95,"�����ʸ,Metadata/Items/Gems/SkillGemShrapnelShot|����o��,Metadata/Items/Gems/SupportGemOnslaught|���ӱ�������o��,Metadata/Items/Gems/SupportGemAddedColdDamage",28,nil,3,0)
SetNeedSkillLineData(100,"���g����,Metadata/Items/Gems/SkillGemToxicRain|Ч���o��,Metadata/Items/Gems/SupportGemEfficacy|̓�ղٿv�o��,Metadata/Items/Gems/SupportGemVoidManipulation|�Ͷ�Ͷ�����o��,Metadata/Items/Gems/SupportGemPhysicalProjectileAttackDamage|�O�ٿ�ʹ�o��,Metadata/Items/Gems/SupportGemRapidDecay|��Ӱ�����o��,Metadata/Items/Gems/SupportGemMirageArcher",nil,2,0)
SetNeedSkillLineData(90,"����,Metadata/Items/Gems/SkillGemDamageOverTimeAura|�ن�̽�y�C�F,Metadata/Items/Gems/SkillGemSummonSkitterbots|��˪��,Metadata/Items/Gems/SkillGemFrostBomb",nil,nil,0)
SetNeedSkillLineData(65,"���g��ʸ,Metadata/Items/Gems/SkillGemPoisonArrow|��ŭ,	Metadata/Items/Gems/SkillGemFrenzy|��˨�o��,Metadata/Items/Gems/SupportGemLifetap|�䚢�o��,Metadata/Items/Gems/SupportGemCullingStrike",nil,nil,0)
SetNeedSkillLineData(60,"˪�i֮˲,Metadata/Items/Gems/SkillGemFrostblink|�^��,Metadata/Items/Gems/SkillGemVulnerability|��˨�o��,Metadata/Items/Gems/SupportGemLifetap|ʯ��֮Ѫ,Metadata/Items/Gems/SkillGemPetrifiedBlood",nil,nil,0)
SetNeedSkillLineData(70,"�ѓ���ӡӛ,Metadata/Items/Gems/SkillGemProjectileWeakness|�����o��,Metadata/Items/Gems/SkillGemMoltenShell|�܂��rʩ���o��,Metadata/Items/Gems/SupportGemCastOnDamageTaken",nil,nil,0)

--������ɫ
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





AddShengJiZhuangBeiGoodsData("���ʯ","Metadata/Items/Currency/CurrencyUpgradeToRare",0,2,0)--������Ч ����50�����õ����ɫװ��
AddShengJiZhuangBeiGoodsData("���`ʯ","Metadata/Items/Currency/CurrencyUpgradeToRareAndSetSockets",0,28,0)--������Ч ����50�����õ����ɫװ��


--AddAttackSkillData(name,className,noLine)--��ӹ������� name=������ className=�������� noLine=����ֱ�߾��ܹ��� ��ѡ�������ܻ���ϵ���Ѱ�ң�Ҫ�������ļ��ܼ���ǰ��


--AddAttackSkillData("���g����","Toxic_Rain",true)
--AddAttackSkillData("�����ʸ","Galvanic_Arrow",true,nil,"0")
--AddAttackSkillData("ȼ����ʸ","Burning_Arrow",true)
--AddAttackSkillData("��ŭ","Frenzy",true)
--AddAttackSkillData("��ͨ����","melee")

--��ը�D�v����
AddAttackSkillData("nil","totem_consume_corpse",true,5,nil)
SetSkillLimitMaxLv("nil","Metadata/Items/Gems/SkillGemVitality",1)--������h������
SetSkillLimitMaxLv("nil","Metadata/Items/Gems/SupportGemLifetap",1)--��˨������


--SetUseTuTengMonsterShuXingCnt(monColor,nType)--���ö���Щ����ʹ��ͼ�� Ĭ�ϻ�����й���ʹ��ͼ��
--monColor �ַ����� ��ʲô��ɫ�Ĺ���ʹ�� �׹�Ϊ0 ����Ϊ1 ���Ϊ2 �ȹ�Ϊ3 (��֧�ֶ�����м���|����) ��nil ��"0|1|2|3"Ϊ����
--nType ��Ч���� nilΪ���ۺ�ʱ����Ч 0Ϊû��ˢ������Ч 1Ϊֻ��ˢ������Ч

--SetUseTuTengMonsterShuXingCnt(1,0)--����ʱ�����й�����ͼ��











--g_notShuaBaiPao=true

--SetYiJieZhaoHuanLingTiData("1_5_2","������","Metadata/Monsters/TemplarSlaveDriver/TemplarSlaveDriver")

--SetNeedZhaoHuanMonster(name,className,val)--������Ҫ�ٻ���������Զ�ѡ����ش���ٻ� name=������ className=�������� val=����
--SetNeedZhaoHuanMonster("������","Metadata/Monsters/TemplarSlaveDriver/TemplarSlaveDriver",20)
--SetNeedZhaoHuanMonster("̫������","Metadata/Monsters/HolyFireElemental/HolyFireElementalSolarisBeam",5)
--SetNeedZhaoHuanMonster("���ڴ�","Metadata/Monsters/Guardians/GuardianFire_Blue",4)--���ڴ�
--SetNeedZhaoHuanMonster("�����ڴ�","Metadata/Monsters/Guardians/GuardianFire",3)
--SetNeedZhaoHuanMonster("��������","Metadata/Monsters/WickerMan/WickerMan",2)
--SetNeedZhaoHuanMonster("��ħū��","Metadata/Monster/CageSpider/CageSpider2",1)


--SetSkillLimitMaxLv(name,className,maxLv)--���ü��ܱ�ʯ���ȼ� name=���ܱ�ʯ��Ʒ�� className=���ܱ�ʯ��Ʒ���� maxLv=���Ƶ����ȼ�

SetSkillLimitMaxLv("��Ӱ��ۙ","Metadata/Items/Gems/SkillGemPhaseRun",1)--��Ӱ��ۙ������
--SetSkillLimitMaxLv("̖��","nil",1)--��Ӱ��ۙ������
SetSkillLimitMaxLv("�C�^","Metadata/Items/Gems/SkillGemDesecrate",1)--�C�^������
SetSkillLimitMaxLv("�܂��rʩ���o��","Metadata/Items/Gems/SupportGemCastOnDamageTaken",1)--��Ӱ��ۙ������
SetSkillLimitMaxLv("̓�o��","Metadata/Items/Gems/SkillGemVoidSphere",1)--��Ӱ��ۙ������
--SetSkillLimitMaxLv("����","Metadata/Items/Gems/SkillGemNewVulnerability",1)--��Ӱ��ۙ������



---------------------------------------��װ����
--SetAtuoChangeEquipData(job,pos,name,val,yijie) ���㷽ʽ���� �����������ֵ���Ա���ֵ  ����װ���߾ͻ�������
--job ְҵ ֧��(��Ӱ|Ұ����|������|Ů��|����|ʥ����ɮ) ���������м���|����
--pos ��λ ֧��(��ָ|����|����|Ь��|����|�·�|ͷ��|��|����|צ}ذ��|����|���ֽ�|ϸ��|���ָ�|���ִ�|����ذ��|����|ս��|��|����|˫�ֽ�|˫�ָ�|˫�ִ�) ���������м���|����
--name ������ ֧����Ϸ�ڵ�װ�������� �����������Զ�����(�����˺������ס����ܡ����ܡ��������ܶ�)
--val ����ֵ ֧��С��
--nType ��װ���� 0��nil����Ϊһֱ��Ч 1Ϊ��ͼʱ����Ч 2Ϊ���ʱ����Ч
--SetAtuoChangeEquipData("��Ӱ|Ұ����|������|Ů��|����|ʥ����ɮ","Ь��","movement_velocity_+%",0.5)--�ƶ��ٶ� +%
--SetAtuoChangeEquipData("��Ӱ|Ұ����|������|Ů��|����|ʥ����ɮ","Ь��","base_movement_velocity_+%",0.5)--�����ƶ��ٶ� +%


SetAtuoChangeEquipData("��Ӱ|Ұ����|������|Ů��|����|ʥ����ɮ","��ָ|����|����|Ь��|����|�·�|ͷ��","base_resist_all_elements_%",0.3,1)--ȫԪ�ؿ��� %
SetAtuoChangeEquipData("��Ӱ|Ұ����|������|Ů��|����|ʥ����ɮ","��ָ|����|����|Ь��|����|�·�|ͷ��","fire_and_cold_damage_resistance_%",0.25,1)--�������˪�˺����� %
SetAtuoChangeEquipData("��Ӱ|Ұ����|������|Ů��|����|ʥ����ɮ","��ָ|����|����|Ь��|����|�·�|ͷ��","fire_and_lightning_damage_resistance_%",0.25,1)--�����������˺����� %
SetAtuoChangeEquipData("��Ӱ|Ұ����|������|Ů��|����|ʥ����ɮ","��ָ|����|����|Ь��|����|�·�|ͷ��","cold_and_lightning_damage_resistance_%",0.15,1)--��˪�������˺����� %
SetAtuoChangeEquipData("��Ӱ|Ұ����|������|Ů��|����|ʥ����ɮ","��ָ|����|����|Ь��|����|�·�|ͷ��","base_fire_damage_resistance_%",0.2,1)--���������˺����� %
SetAtuoChangeEquipData("��Ӱ|Ұ����|������|Ů��|����|ʥ����ɮ","��ָ|����|����|Ь��|����|�·�|ͷ��","base_cold_damage_resistance_%",0.11,1)--������˪�˺����� %
SetAtuoChangeEquipData("��Ӱ|Ұ����|������|Ů��|����|ʥ����ɮ","��ָ|����|����|Ь��|����|�·�|ͷ��","base_lightning_damage_resistance_%",0.1,1)--���������˺����� %
SetAtuoChangeEquipData("��Ӱ|Ұ����|������|Ů��|����|ʥ����ɮ","��ָ|����|����|Ь��|����|�·�|ͷ��","fire_damage_resistance_%",0.2,1)--���濹�� %
SetAtuoChangeEquipData("��Ӱ|Ұ����|������|Ů��|����|ʥ����ɮ","��ָ|����|����|Ь��|����|�·�|ͷ��","cold_damage_resistance_%",0.11,1)--��˪���� %
SetAtuoChangeEquipData("��Ӱ|Ұ����|������|Ů��|����|ʥ����ɮ","��ָ|����|����|Ь��|����|�·�|ͷ��","lightning_damage_resistance_%",0.1,1)--���翹�� %

SetAtuoChangeEquipData("��Ӱ|Ұ����|������|Ů��|����|ʥ����ɮ","����","base_maximum_life",0.1)--�ӻ��A�������
SetAtuoChangeEquipData("��Ӱ|Ұ����|������|Ů��|����|ʥ����ɮ","����","�����ٶ�",0.1)--�ӹ����ٶ�
SetAtuoChangeEquipData("��Ӱ|Ұ����|������|Ů��|����|ʥ����ɮ","��","�����ٶ�",0.5)--�ӹ����ٶ�
--SetAtuoChangeEquipData("Ů��|ʥ����ɮ","��ָ|����","base_item_found_rarity_+%",0.1,2)--������A��Ʒ����Ʒ�| +%

SetAtuoChangeEquipData("��Ӱ|Ұ����|������|Ů��|����|ʥ����ɮ","��ָ|����|����","fire_and_cold_damage_resistance_%",0.25,1)--�������˪�˺����� %
SetAtuoChangeEquipData("��Ӱ|Ұ����|������|Ů��|����|ʥ����ɮ","��ָ|����|����","fire_and_lightning_damage_resistance_%",0.25,1)--�����������˺����� %
SetAtuoChangeEquipData("��Ӱ|Ұ����|������|Ů��|����|ʥ����ɮ","��ָ|����|����","cold_and_lightning_damage_resistance_%",0.25,1)--��˪�������˺����� %
SetAtuoChangeEquipData("��Ӱ|Ұ����|������|Ů��|����|ʥ����ɮ","��ָ|����|����","fire_damage_resistance_%",0.2,1)--���濹�� %
SetAtuoChangeEquipData("��Ӱ|Ұ����|������|Ů��|����|ʥ����ɮ","��ָ|����|����","cold_damage_resistance_%",0.2,1)--��˪���� %
SetAtuoChangeEquipData("��Ӱ|Ұ����|������|Ů��|����|ʥ����ɮ","��ָ|����|����","lightning_damage_resistance_%",0.2,1)--���翹�� %




--SetTaskMiGongData(taskClassName,taskIndex,migongIndex)--������ͼʱ�Թ� taskClassName=�������� taskIndex=�������� nilΪ���ԣ�ֻƥ���������� migongIndexΪ�Թ������� 1=��һ���Թ� 2=�ڶ����Թ�

--SetTaskMiGongData("a5q2",nil,1)--�ڸ���������������ʱ ���Թ�1
--SetTaskMiGongData("a9q1",nil,2)--�ڸ���������������ʱ ���Թ�2
--SetTaskMiGongDataByLv(90,3)

--�O��ˎˮ
--SetNeedFlaskData(1,"����ҩ��","ֹѪ֮,FlaskRemovesBleeding1",60,"���a����ˎ��","Metadata/Items/Flasks/FlaskLife12")
--SetNeedFlaskData(2,"����ҩ��","���v��,FlaskFullInstantRecovery1",60,"��������ˎ��","Metadata/Items/Flasks/FlaskLife11")
--SetNeedFlaskData(3,"ˮ��ҩ��","�I������֮,FlaskBuffMovementSpeedWhileHealing",5)
--SetNeedFlaskData(4,"�Ͼ�ҩ��","�I������֮,FlaskBuffMovementSpeedWhileHealing",5)
--SetNeedFlaskData(5,"ħ��ҩ��","�;õ�,FlaskEffectNotRemovedOnFullMana1",50,"���aħ��ˎ��","Metadata/Items/Flasks/FlaskMana12")

---------------------------------------�߼���װ
--SetGaoJiChangeEquipData(job,name,className,wordName,wordClassName,lineSocketCnt,goodsLv) �߼���װ���� ���û�ָ����װ��
--job ְҵ ֧��(��Ӱ|Ұ����|������|Ů��|����|ʥ����ɮ) ���������м���|����
--name ��Ʒ��
--className ��Ʒ����
--wordName ָ����׺
--wordClassName ָ����׺����
--lineSocketCnt ��Ҫ���Ķ����� ��������4 ���ͻ��4��Ϊֹ nilΪ����
--goodsLv ĳЩҪ����Ҫ��Ʒ�ȼ����˲��ܴ���ô�ප����������˴����� ��Ҫ������ 2��Ҫ���ڵ���1�� 3��Ҫ���ڵ���15�� 4��Ҫ���ڵ���28�� 5��Ҫ���ڵ���35�� 6��Ҫ���ڵ���50��
--flaskPos ҩ����λ װ���Ļ����Ժ��ԣ�ҩ����ʱ�����Ҫ�� nilΪ���� 1 2 3 4 5 ��Ӧ5��ҩ����λ

--SetGaoJiHuanZhuangData("Ů��","��������","Metadata/Items/Armours/Shields/ShieldStr17","ʨ�۵���ҫ֮��","Lioneye's Remorse",3,15)
--SetGaoJiHuanZhuangData("Ů��","���͸���ҩ��","Metadata/Items/Flasks/FlaskHybrid3","���Ӿ���","Divination Distillate",nil,nil,2)
--SetGaoJiHuanZhuangData("ʥ����ɮ","����֮��","Metadata/Items/Rings/Ring15","�C�^֮��","Profane Proxy",nil,nil,nil,7)
--SetGaoJiHuanZhuangData("ʥ����ɮ","����ˎ��","Metadata/Items/Flasks/FlaskUtility5","���׵��`ˎ","Rumi's Concoction",nil,nil,5)
--SetGaoJiHuanZhuangData("ʥ����ɮ","�����o���","Metadata/Items/Amulets/Amulet5","��Ɲ�ߵ��`ʯ","Stone of Lazhwar")
--SetGaoJiHuanZhuangData("ʥ����ɮ","�ϰ��S��","Metadata/Items/Armours/Shields/ShieldStrInt8","�S����W��ؕ�I","Victario's Charity",3,15,nil,4)
--SetGaoJiHuanZhuangData("ʥ����ɮ","��F��ָ","Metadata/Items/Rings/Ring1","Ӣ�`���h","Le Heup of All",nil,nil,nil,7,3,1)
--SetGaoJiHuanZhuangData("ʥ����ɮ","�����}��ˎ��","Metadata/Items/Flasks/FlaskHybrid3","��ҕ���A","Divination Distillate",nil,nil,5)
--SetGaoJiHuanZhuangData("ʥ����ɮ","���K�^","Metadata/Items/Weapons/OneHandWeapons/Claws/Claw12",nil,nil,3,15,nil,3,0,1)
--SetGaoJiHuanZhuangData("������","�����޿�","Metadata/Items/Armours/Helmets/HelmetStrInt7","�����ƵĘs��","Geofri's Crest",4,28)
--SetGaoJiHuanZhuangData("������","��Ӱ����","Metadata/Items/Armours/Gloves/GlovesStrDex4","����֮��","Aurseize",4,28)
--SetGaoJiHuanZhuangData("������","�~�ħ��","Metadata/Items/Armours/Shields/ShieldInt6","ɽ�����Ļؑ�","Sentari's Answer",3,15)
--SetGaoJiHuanZhuangData("������","����ָ","Metadata/Items/Rings/Ring4","؝�j֮ӛ","Andvarius",nil,nil,nil,8)
--SetGaoJiHuanZhuangData("������","�ظ�����","Metadata/Items/Belts/Belt4","��˹���M��","Bisco's Leash",nil,nil,nil,nil,nil,1,nil,nil)
--SetGaoJiHuanZhuangData("������","�۽��o���","Metadata/Items/Amulets/Amulet6","����","The Ascetic")
--SetGaoJiHuanZhuangData("������","���҈Կ�","Metadata/Items/Armours/Helmets/HelmetStr10",nil,nil,4,28,nil,5,0,1,"�۽��o���","Metadata/Items/Amulets/Amulet6","����","The Ascetic")
--SetGaoJiHuanZhuangData("������","ɰӰ��ѥ","Metadata/Items/Armours/Boots/BootsDex4","�������E","Goldwyrm",4,28,nil,nil,nil,1,nil,nil)
--SetGaoJiHuanZhuangData("������","ˮ�yˎ��","Metadata/Items/Flasks/FlaskUtility6",nil,nil,nil,15,3,nil,1)
--SetGaoJiHuanZhuangData("������","��ë����","Metadata/Items/Armours/Gloves/GlovesInt1","�Ա��ߵĻ���","Sadima's Touch",4,28)
--SetGaoJiHuanZhuangData("Ů��","��ľ�A��","Metadata/Items/Armours/Shields/ShieldStrDex1","����֮��","Wheel of the Stormsail",3,15)
--SetGaoJiHuanZhuangData("������","�����޿�","Metadata/Items/Armours/Helmets/HelmetStrInt7","�����ƵĘs��","Geofri's Crest",4,28)
--SetGaoJiHuanZhuangData("Ů��","����ָ","Metadata/Items/Rings/Ring4","؝�j֮ӛ","Andvarius",nil,nil,nil,8)
--SetGaoJiHuanZhuangData("Ů��","����ָ","Metadata/Items/Rings/Ring4","؝�j֮ӛ","Andvarius",nil,nil,nil,7)
--SetGaoJiHuanZhuangData("Ů��","�����^��","Metadata/Items/Armours/Helmets/HelmetAtlas1",nil,nil,4,28,nil,5,1,1)
--SetGaoJiHuanZhuangData("Ů��","�F���צ","Metadata/Items/Weapons/OneHandWeapons/Claws/Claw14",nil,nil,4,28,nil,3,0,1)
--SetGaoJiHuanZhuangData("Ů��","��Ӱ����","Metadata/Items/Armours/Gloves/GlovesStrDex4","����֮��","Aurseize",4,28,nil,nil,nil,1)
--SetGaoJiHuanZhuangData("Ů��","����ָ","Metadata/Items/Rings/Ring4",nil,nil,nil,nil,nil,8,1,1)
--SetGaoJiHuanZhuangData("ʥ����ɮ","����ָ","Metadata/Items/Rings/Ring4","؝�j֮ӛ","Andvarius",nil,nil,nil,7,nil,1)
--SetGaoJiHuanZhuangData("ʥ����ɮ","�~�ħ��","Metadata/Items/Armours/Shields/ShieldInt6","ɽ�����Ļؑ�","Sentari's Answer",3,15,nil,nil,nil,1)
--SetGaoJiHuanZhuangData("ʥ����ɮ","����ˎ��","Metadata/Items/Flasks/FlaskUtility5","���׵��`ˎ","Rumi's Concoction",nil,nil,5)
--SetGaoJiHuanZhuangData("ʥ����ɮ","ħ�Է���","Metadata/Items/Weapons/OneHandWeapons/Wands/Wand13","����","Moonsorrow",3,15,nil,3)
--SetGaoJiHuanZhuangData("ʥ����ɮ","����ָ","Metadata/Items/Rings/Ring4","؝�j֮ӛ","Andvarius",nil,nil,nil,7,nil,1)
--SetGaoJiHuanZhuangData("ʥ����ɮ","����ָ","Metadata/Items/Rings/Ring4","����֮��","The Highwayman",nil,nil,nil,8,nil,1)

SetGaoJiHuanZhuangData("����","����֮��","Metadata/Items/Armours/BodyArmours/BodyInt1","�޾�֮��","Tabula Rasa")--�·�
SetGaoJiHuanZhuangData("����","�̹�","Metadata/Items/Weapons/TwoHandWeapons/Bows/Bow2","�E��֮��","Quill Rain")--����
--SetGaoJiHuanZhuangData("����","���K�^","Metadata/Items/Weapons/OneHandWeapons/Claws/Claw12","��Խ�ډ�","Advancing Fortress",3,15,nil,3)
--SetGaoJiHuanZhuangData("����","�β�����","Metadata/Items/Belts/Belt5","������˹֮ӡ","Perandus Blazon",nil,nil,nil,nil,nil,1)
--SetGaoJiHuanZhuangData("����","�����޿�","Metadata/Items/Armours/Helmets/HelmetStrInt7","�����ƵĘs��","Geofri's Crest",4,28,nil,nil,nil,1)
--SetGaoJiHuanZhuangData("����","�����o���","Metadata/Items/Amulets/Amulet5","��Ɲ�ߵ��`ʯ","Stone of Lazhwar",nil,nil,nil,nil,nil,1)
--SetGaoJiHuanZhuangData("����","�����ָ","Metadata/Items/Rings/Ring8","�`��","Thief's Torment",nil,nil,nil,7)
--SetGaoJiHuanZhuangData("����","�FӰ�Lѥ","Metadata/Items/Armours/Boots/BootsStrDex2","ӭĺ","Dusktoe",4,28,nil,10)--Ь��
--SetGaoJiHuanZhuangData("����","��ë����","Metadata/Items/Armours/Gloves/GlovesInt1","�Ա��ߵĻ���","Sadima's Touch",4,28,nil,nil,nil,1)
--SetGaoJiHuanZhuangData("����","����ˎ��","Metadata/Items/Flasks/FlaskUtility5","���׵��`ˎ","Rumi's Concoction",nil,nil,4)

--SetNeedAddTianFu(tfStr)--�����츳�ӵ� tfStr=config.ini�����úõ��츳 ��"Ů��=name1-className1|name2-className2|

--SetNeedAddTianFu("����=attack_speed568-Ͷ�������������|accuracy581-Ͷ��������c�����ٶ�|projectile_damage592-Ͷ�������|projectile_damage593-Ͷ�������|projectile_damage1485-Ͷ�������|perfect_aim591-�����W|mana1479-ħ����ˎ��Ч��|mana1478-ԭʼ����|reduced_mana1480-ħ����ˎ��Ч��|finesse993-����|dual_wield_damage2125-�Ƅ��ٶȺͷ��g����|attack_move_speed_notable1792-����|stun_recovery544-�����ͱ��╞ѣ|avoid_stun553-��ľ֮��|bow_damage_and_speed498-���Ă���|greater_impact638-���`ף��|dexterity984-����|strength821-����|dexterity853-����|dexterity850-����|dexterity1988-����|dexterity849-����|life_flasks_1745-�����cˎ��|life_flasks1744-�����cˎ��|life_flasks_notable1747-����W|dexterity847-����|skill_duration437-���ܳ��m�r�g|skill_duration1036-���ܳ��m�r�g|skill_duration_notable1738-׿Խ�ı�F|mastery_duration91-���m�r�g����-17852|mastery_life145-ˎ������-29214|deaden_keystone2849-���g�Ķ�|dexterity995-����|intelligence957-�ǻ�|dexterity848-����|strength815-����|chaos_damage1578-������m�����ӳ�|chaos_damage1579-������m�����ӳ�|dagger_leech_notable2537-���M|mastery_chaos47-���猣��-28678|dexterity855-����|life1116-�W�ܺ�����|life1115-�W�ܺ�����|life1117-����ͨ��|dexterity856-����|savant903-�I�\��ˇ|might770-�oη|bow_chaos2508-���Ă���|bow_chaos2509-���Ă���|master_fletcher515-�C��֮��|mastery_bow32-������-45512|dexterity981-����|agility965-���C֮�w|degeneration_damage1569-���m����|degeneration_damage_notable1575-�y��|life703-����|fitness617-ѪҺ��ȡ|dexterity851-����|dexterity1989-����|dexterity841-����|evasion538-�W�ܺͷ��g����|reflexes1091-����|reflexes706-�W�ܺͷ��g����|mana_mana_flask2643-����ˎ����ˎ�����m�r�g|mana_mana_flask_notable2644-Ұ���t�W|dual_wield_damage726-�Ƅ��ٶȺͷ��g����|claws_of_the_pride489-ֱ�X|dexterity870-����|life1412-����|life1216-����|alchemist532-ˎ�݌W|mastery_life146-��������-34242|dexterity862-����|totem_ranged_damage2669-�D�v�����ͷ����ٶ�|totem_ranged_damage2667-�D�v�����ͷ����ٶ�|totem_ranged_damage2668-�D�v�����ͷ����ٶ�|totem_ranged_notable2670-������|dexterity861-����|dexterity873-����|dexterity858-����|dexterity968-����|dexterity835-����|dexterity844-����|dexterity840-����|dexterity838-����|strength1005-����|totem_attack_damage2677-�D�v�����͹����ٶ�|totem_attack_damage2676-�D�v�����͹����ٶ�|totem_attack_notable2679-�Oҕ|totem_attack_damage2678-�D�v�����ͷ����ٶ�|totem_attack_notable2680-�A��|totem_attack_cast_and_placement_speed1506-�D�v�����ͷ����ٶ�|totem_resists_damage_physical_reduction_notable1501-�Fľ|mastery_totem231-�D�v����-27718|life1213-����|golem's_blood1088-ħ��Ѫ�y |mana_on_kill1476-ħ���͹�h����Ч��|mana_on_kill_notable1704-��g|mastery_mana171-ħ������-64875|sword_damage_accuracy2497-���g���ֺ�����ˎ���֏�|sword_damage_accuracy_notable2500_-���ϑ�|mastery_sword228-���g���֌���-45317|")
--SetNeedAddTianFu("ʥ����ɮ����=AscendancyGuardian15-�o�׺������o�ܡ��ن������|AscendancyGuardian14-�����}��|AscendancyGuardian1-�o�׺������o�ܡ������|AscendancyGuardian4-ϣ���ډ�|AscendancyGuardian13-�o�׺������o�ܡ��ن������|AscendancyGuardian16-�Զ��}��")