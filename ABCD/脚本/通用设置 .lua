--����ͨ������ ��������
--[[
---------------------------------------------������һ��Ҫ�úÿ������˵��
--�������� -- Ϊע�ͷ��� ע�͵�����ص����ý����������� 
���õ����������������¼��� 
1���߼��� ������״̬ trueΪ�� falseΪ��  ��ҿ�������false��true������ ��֪�������߼�����
2����ֵ�� ֧��С�� ���� ֱ����д���־����� �磺-1 100 0.123 ���ֶ�����ֵ�� ����Ҫ������ 
3���ַ����� ��д��ʱ��ǰ����Ҫ�ð�����Ű������� �磺"���ǲֿ��" ע��ֻ���ַ����͵Ĳ���Ҫ���ߴ�����
Ȼ�����������͵����ݶ���ʹ��nil  nil�ǿ�ֵ ��ʾ���� ����ʾʲô��û�� ���߲���Ҫ����

��������Ҫ�õ������� ����������������������Ҫ��Ŀ¼�µĵ�����Ϣ�鿴����Ȼ������Ϸ�а�HOME���������Դ��� 
�����Ҫ�鿴�����ݵİ�ť�����涼���ҵ�����=name ����=className �����Ƽ����Ҫ��дclassName �������úõ������ܹ�̨ �� ���� ����ͨ��
���������ַ�Ϊ���� 
1�������ͣ�������=���� ���ּ򵥴ֱ��Ķ��Ǳ��������� ֱ�Ӹ��Ǹ����ںź�������ݾ�����
2�������ͣ�������(����1,����2) �����ľ��Ǻ����� �ɺ����������ɸ�������� �������������()������
]]
------------------��������
g_needMinimizeGame=nil	--��С���[�򴰿� trueΪ��С�� false��nilΪ����С��
g_imBoss=false					--����ǲֿ��ҪΪtrue �һ���Ϊfalse
g_attackDis=150					--��������
g_yiJieTimeOut=15*60			--����ͼ�ڵĳ�ʱʱ�� ��λΪ�� ���δ���þͻ���g_timeOut *�ǳ˺� ����Ϊ15����60=15����
g_timeOut=25*60					--��һ����ͼ����ʱ�䳬�����õ� �����¿�ͼ���� ��λΪ��
g_addTianFu=true				--�Զ����趨�õ����ü��츳 trueΪ�� nil��falseΪ����
g_shengJiBaoShi=true			--�Զ�������ʯ trueΪ���� nil��falseΪ������
g_sellSkillGem=true				--�Զ�������40Ʒ�ʵļ��ܱ�ʯ
g_notHuanYaoLv=82				--���ڵ��ڶ��ټ�ֻ����ɫ����ҩ
g_needAutoChangeEquip=true		--�����Զ���װ trueΪ�� nil��falseΪ����
g_needAutoSetBaoShi=true		--�����Զ�����ʯ trueΪ�� nil��falseΪ����
g_bossGiveZhuangBei=true		--����ʱ�ֿ�Ÿ���ȱ�ٵĸ߼���װ�е�װ��
g_xiaoHaoGetZhuangBei=true  	--�һ�����ֿ��������߼���װ�е�װ��
g_notShuaBaiPao=true        --�P�]ˢ����true


AddJiaoYiTime(0,8)--����11�㵽8��ǰ���⽻��

------------------�O������Ѫ����ħ����ˮ�֏�
g_addHpVal=0.7--HP
g_addMpVal=0.4--MP
------------------�����΄Ղɜy���ϼ���
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

--------------------ˎˮλ��
--SetNeedFlaskData(pos,flask)--����ҩ  pos=λ�� 1-5  flask=ҩ �ַ����ͣ�֧������ (����ҩ��,ħ��ҩ��,����ҩ��,����ҩ��,����ҩ��,����ҩ��,����ҩ��,����ҩ��,ˮ��ҩ��,�Ͼ�ҩ��,ʯӢҩ��,����ҩ��,ʯ��ҩ��,����ҩ��,����ҩ��,���ҩ��,����ҩ��,����ҩ��)
--SetNeedFlaskData(1,"����ҩ��","���v��,FlaskFullInstantRecovery1")
--SetNeedFlaskData(2,"����ҩ��","���v��,FlaskFullInstantRecovery1")
--SetNeedFlaskData(3,"����ҩ��","���v��,FlaskFullInstantRecovery1")
--SetNeedFlaskData(4,"ˮ��ҩ��")
--SetNeedFlaskData(5,"ħ��ҩ��")

---------------------��Ӳ����΄�
AddNotMakeTaskData("a2q5")--����ʥ��
AddNotMakeTaskData("a2q10")--��ɫ����
AddNotMakeTaskData("a3q13")--�����Ŀ���
AddNotMakeTaskData("a3q12")--����֮��
AddNotMakeTaskData("a6q5")--��˹�ش���
AddNotMakeTaskData("a7q8")--��˹�ص�Ĺ��
AddNotMakeTaskData("a7q5")--��ɫ��׹
AddNotMakeTaskData("a8q5")--��˹����֮��
AddNotMakeTaskData("a9q4")--����֮��
AddNotMakeTaskData("a10q4")--�ް��ɻ�
AddNotMakeTaskData("a10q5")--�֮·

--------------------�N�A�O��
SetTaskMiGongData("a10q1",nil,1)--�ڸ���������������ʱ ���Թ�1
SetTaskMiGongData("a10q1",nil,2)--�ڸ���������������ʱ ���Թ�2
SetTaskMiGongDataByLv(85,3)
----------------------SetZhongShenData(className1,className2)--����� className1=�߽��������� �ַ����� className2=�ͽ��������� �ַ����� 
SetZhongShenData("Lunaris","Gruthkul")--������ӰŮ��֮�������֮ĸ ��³˿��֮��

--�QC�O��
SetSaveIndex("����|��ָ|צ|ذ��|����|���ֽ�|���ָ�|���ִ�|����ذ��|����|����|����|Ь��|ͷ��|�鱦","3")--��u�QC

--�QC�b��M�� (������}���С���{��)
SetChangeLimitCnt("����|�·�|ͷ��|����|Ь��",2)
SetChangeLimitCnt("����",4)
SetChangeLimitCnt("����|��ָ",20)

--------------------�����ٶ�
g_jiaoYiAddSellGoodsTime=1--������ ����ʱ�Ѷ����ŵ��������ĵȴ�ʱ�� ��λΪ���� Ĭ��Ϊ250

------------------��}���ֻӰ�������֣����@�e�������O�����N����Ӱ푁G��
--SetSaveIndex(saveType,pageName,goodsName,goodsClassName,wordName,wordClassName,pageType)--���ô��ҳ�� 
--saveType ��Ʒ���� �ַ����� ֧���������� ������nil ����������|�ֿ� --saveType ���� ֧���������� ����������|�ֿ� ����ҩ��|ħ��ҩ��|����ҩ��|ͨ��|����|��ָ|צ|ذ��|����|���ֽ�|ϸ��|���ָ�|���ִ�|����ذ��|����|ս��|��|����|˫�ֽ�|˫�ָ�|˫�ִ�|�������ܱ�ʯ|�������ܱ�ʯ|����|����|����|Ь��|�·�|ͷ��|��|С��ʥ��|����ʥ��|����ʥ��|�ɶѵ�ͨ��|������Ʒ|����|����ҩ��|����ҩ��|����ͼ||���|��ͼ��Ƭ|����װ��|�̳���Ʒ|�鱦|���˿�|�Թ���Ʒ|�Թ���Ʒ|����Թ���Ʒ|��϶֮ʯ|����ʯ|����֮��|����װ����Ƭ|��Ԩ�鱦|��Խͨ��|����̽��������Ƕ��ͨ��|����ʯ|��Ƭ|����֮��|����ذ��|ս��|����̽���ɶѵ��ɲ���ͨ��|
--pageName �ֿ�ҳ���� �ַ����� ���������м���|����
--goodsName ��Ʒ�� �ַ����� ������nil
--goodsClassName ��Ʒ���� �ַ����� ������nil
--wordName ��׺�� �ַ����� ������nil
--wordClassName ��׺���� �ַ����� ������nil
--pageType �ֿ�ҳ���� ��ֵ�� �����nil��0 Ϊ��ͨ�ֿ� 1Ϊͨ��ҳ 2Ϊ���˿�ҳ  3Ϊ��Ƭҳ



--��}߉݋
--���o��̖�O��5(ͨ؛)2(�؈D)3(��u)4(�s��ٱI���ǈF)

--��}���
SetSaveIndex("�������ܱ�ʯ|�������ܱ�ʯ","4")
SetSaveIndex("ͨ��|�ɶѵ�ͨ��","1")
SetSaveIndex("����ͼ","2")
SetSaveIndex("���˿�","4")
SetSaveIndex("��Ƭ|��ͼ��Ƭ","4")
SetSaveIndex("����|��ָ|ذ��|����|���ֽ�|ϸ��|���ָ�|���ִ�|����ذ��|����|ս��|��|����|˫�ֽ�|˫�ָ�|˫�ִ�|����|����|Ь��|ͷ��|�·�|��|����|צ","3|4")
SetSaveIndex("�������ܱ�ʯ|�������ܱ�ʯ|�鱦","4")
SetSaveIndex("����ҩ��|ħ��ҩ��|����ҩ��|����ҩ��","4")
SetSaveIndex("��ͼ","4")
SetSaveIndex("���s","4")





--��}���

--ͨ؛�^
--ͨ؛��ȡ����顸1��
--SetSaveIndex(nil,"1","����ʯ","Metadata/Items/Currency/CurrencyRerollRare")
--SetSaveIndex(nil,"1","�[�����ʯ","Metadata/Items/Currency/CurrencyRerollRareVeiled")
--SetSaveIndex(nil,"1","���m�µ�ħ�R","Metadata/Items/Currency/CurrencyDuplicate")
--SetSaveIndex(nil,"1","�c��ʯ","Metadata/Items/Currency/CurrencyUpgradeToRare")
--SetSaveIndex(nil,"1","�C��ʯ","Metadata/Items/Currency/CurrencyUpgradeRandomly")
--SetSaveIndex(nil,"1","���ʯ","Metadata/Items/Currency/CurrencyPassiveRefund")
--SetSaveIndex(nil,"1","���Nʯ","Metadata/Items/Currency/CurrencyAtlasPassiveRefund")
--SetSaveIndex(nil,"1","͑׃ʯ","Metadata/Items/Currency/CurrencyUpgradeToMagic")
--SetSaveIndex(nil,"1","����ʯ","Metadata/Items/Currency/CurrencyRerollMagic")
--SetSaveIndex(nil,"1","���Tʯ","Metadata/Items/Currency/CurrencyConvertToNormal")
--SetSaveIndex(nil,"1","���ʯ","Metadata/Items/Currency/CurrencyAddModToRare")
--SetSaveIndex(nil,"1","����ʯ","Metadata/Items/Currency/CurrencyUpgradeMagicToRare")
--SetSaveIndex(nil,"1","����ʯ","Metadata/Items/Currency/CurrencyAddModToMagic")
--SetSaveIndex(nil,"1","��������","Metadata/Items/Currency/CurrencyFlaskQuality")
--SetSaveIndex(nil,"1","��ʯ���Ķ��R","Metadata/Items/Currency/CurrencyGemQuality")
--SetSaveIndex(nil,"1","��ɫʯ","Metadata/Items/Currency/CurrencyRerollSocketColours")
--SetSaveIndex(nil,"1","朽Yʯ","Metadata/Items/Currency/CurrencyRerollSocketLinks")
--SetSaveIndex(nil,"1","����ʯ","Metadata/Items/Currency/CurrencyRerollSocketNumbers")
--SetSaveIndex(nil,"1","�ߠ�����","Metadata/Items/Currency/CurrencyCorrupt")
--SetSaveIndex(nil,"1","���}ʯ","Metadata/Items/Currency/CurrencyModValues")
--SetSaveIndex(nil,"1","�}��","Metadata/Items/Currency/CurrencyRerollDefences")
--SetSaveIndex(nil,"1","�u�D�","Metadata/Items/Currency/CurrencyMapQuality")
--SetSaveIndex(nil,"1","͑׃ʯ��Ƭ","Metadata/Items/Currency/CurrencyUpgradeToMagicShard")
--SetSaveIndex(nil,"1","����ʯ��Ƭ","Metadata/Items/Currency/CurrencyRerollMagicShard")
--SetSaveIndex(nil,"1","�c��ʯ��Ƭ","Metadata/Items/Currency/CurrencyUpgradeToRareShard")
--SetSaveIndex(nil,"1","����ʯ��Ƭ","Metadata/Items/Currency/CurrencyRerollMagicShard")
--SetSaveIndex(nil,"1","�oЧʯ","Metadata/Items/Currency/CurrencyRemoveMod")
--SetSaveIndex(nil,"1","����ʯ��Ƭ","Metadata/Items/Currency/CurrencyRerollMagicShard")
--SetSaveIndex(nil,"1","���`ʯ","Metadata/Items/Currency/CurrencyUpgradeToRareAndSetSockets")
--SetSaveIndex(nil,"1","��ƽʯ","Metadata/Items/Currency/CurrencyRerollMapType")
--SetSaveIndex(nil,"1","���Iʯ","	Metadata/Items/Currency/CurrencyUpgradeMapTier")
--SetSaveIndex(nil,"1","����ʯ","Metadata/Items/Currency/CurrencyStrongboxQuality")
--SetSaveIndex(nil,"1","���ܵĹ���ʯ","	Metadata/Items/Currency/CurrencyStrongboxQualityInfused")
--SetSaveIndex(nil,"1","�oЧʯ��Ƭ","Metadata/Items/Currency/CurrencyRemoveModShard")
--SetSaveIndex(nil,"1","���`ʯ��Ƭ","Metadata/Items/Currency/CurrencyUpgradeToRareAndSetSocketsShard")
--SetSaveIndex(nil,"1","��ƽʯ��Ƭ","Metadata/Items/Currency/CurrencyRerollMapTypeShard")
--SetSaveIndex(nil,"1","���Iʯ��Ƭ","Metadata/Items/Currency/CurrencyUpgradeMapTierShard")
--SetSaveIndex(nil,"1","����ʯ��Ƭ","Metadata/Items/Currency/CurrencyStrongboxQualityShard")
--SetSaveIndex(nil,"1","��׃ʯ��Ƭ","Metadata/Items/Currency/CurrencyRerollUniqueShard")
--SetSaveIndex(nil,"1","����ʯ��Ƭ","Metadata/Items/Currency/CurrencyRerollRareShard")
--SetSaveIndex(nil,"1","ħ�R��Ƭ","Metadata/Items/Currency/CurrencyDuplicateShard")
--SetSaveIndex(nil,"1","���ʯ��Ƭ","Metadata/Items/Currency/CurrencyAddModToRareShard")
--SetSaveIndex(nil,"1","����ʯ��Ƭ","Metadata/Items/Currency/CurrencyUpgradeMagicToRareShard")
--SetSaveIndex(nil,"1","�M˹��֮�R","Metadata/Items/Currency/CurrencyAddGemExperience")
--SetSaveIndex(nil,"1","�cȼʯ","Metadata/Items/Currency/CurrencyEnkindlingOrb")
--SetSaveIndex(nil,"1","��עʯ","Metadata/Items/Currency/CurrencyInstillingOrb")
--SetSaveIndex(nil,"1","�o��Ƭ","Metadata/Items/Currency/CurrencyArmourQuality")
--SetSaveIndex(nil,"1","ĥ��ʯ","Metadata/Items/Currency/CurrencyWeaponQuality")
--ͨ؛ʰȡ�^
SetGoodsCaoZuo(nil,"0|2","����ʯ","Metadata/Items/Currency/CurrencyRerollRare")
SetGoodsCaoZuo(nil,"0|2","�[�����ʯ","Metadata/Items/Currency/CurrencyRerollRareVeiled")
SetGoodsCaoZuo(nil,"0|2","���m�µ�ħ�R","Metadata/Items/Currency/CurrencyDuplicate")
SetGoodsCaoZuo(nil,"0|2","�c��ʯ","Metadata/Items/Currency/CurrencyUpgradeToRare")
SetGoodsCaoZuo(nil,"0|2","�C��ʯ","Metadata/Items/Currency/CurrencyUpgradeRandomly")
SetGoodsCaoZuo(nil,"0|2","���ʯ","Metadata/Items/Currency/CurrencyPassiveRefund")
SetGoodsCaoZuo(nil,"0|2","���Nʯ","Metadata/Items/Currency/CurrencyAtlasPassiveRefund")
SetGoodsCaoZuo(nil,"0|2","͑׃ʯ","Metadata/Items/Currency/CurrencyUpgradeToMagic")
SetGoodsCaoZuo(nil,"0|2","����ʯ","Metadata/Items/Currency/CurrencyRerollMagic")
SetGoodsCaoZuo(nil,"0|2","���Tʯ","Metadata/Items/Currency/CurrencyConvertToNormal")
SetGoodsCaoZuo(nil,"0|2","���ʯ","Metadata/Items/Currency/CurrencyAddModToRare")
SetGoodsCaoZuo(nil,"0|2","����ʯ","Metadata/Items/Currency/CurrencyUpgradeMagicToRare")
SetGoodsCaoZuo(nil,"0|2","����ʯ","Metadata/Items/Currency/CurrencyAddModToMagic")
SetGoodsCaoZuo(nil,"0|2","��������","Metadata/Items/Currency/CurrencyFlaskQuality")
SetGoodsCaoZuo(nil,"0|2","��ʯ���Ķ��R","Metadata/Items/Currency/CurrencyGemQuality")
SetGoodsCaoZuo(nil,"0|2","��ɫʯ","Metadata/Items/Currency/CurrencyRerollSocketColours")
SetGoodsCaoZuo(nil,"0|2","朽Yʯ","Metadata/Items/Currency/CurrencyRerollSocketLinks")
SetGoodsCaoZuo(nil,"0|2","����ʯ","Metadata/Items/Currency/CurrencyRerollSocketNumbers")
SetGoodsCaoZuo(nil,"0|2","�ߠ�����","Metadata/Items/Currency/CurrencyCorrupt")
SetGoodsCaoZuo(nil,"0|2","���}ʯ","Metadata/Items/Currency/CurrencyModValues")
SetGoodsCaoZuo(nil,"0|2","�}��","Metadata/Items/Currency/CurrencyRerollDefences")
SetGoodsCaoZuo(nil,"0|2","�u�D�","Metadata/Items/Currency/CurrencyMapQuality")
SetGoodsCaoZuo(nil,"0|2","͑׃ʯ��Ƭ","Metadata/Items/Currency/CurrencyUpgradeToMagicShard")
SetGoodsCaoZuo(nil,"0|2","����ʯ��Ƭ","Metadata/Items/Currency/CurrencyRerollMagicShard")
SetGoodsCaoZuo(nil,"0|2","�c��ʯ��Ƭ","Metadata/Items/Currency/CurrencyUpgradeToRareShard")
SetGoodsCaoZuo(nil,"0|2","����ʯ��Ƭ","Metadata/Items/Currency/CurrencyRerollMagicShard")
SetGoodsCaoZuo(nil,"0|2","�oЧʯ","Metadata/Items/Currency/CurrencyRemoveMod")
SetGoodsCaoZuo(nil,"0|2","����ʯ��Ƭ","Metadata/Items/Currency/CurrencyRerollMagicShard")
SetGoodsCaoZuo(nil,"0|2","���`ʯ","Metadata/Items/Currency/CurrencyUpgradeToRareAndSetSockets")
SetGoodsCaoZuo(nil,"0|2","��ƽʯ","Metadata/Items/Currency/CurrencyRerollMapType")
SetGoodsCaoZuo(nil,"0|2","���Iʯ","	Metadata/Items/Currency/CurrencyUpgradeMapTier")
SetGoodsCaoZuo(nil,"0|2","����ʯ","Metadata/Items/Currency/CurrencyStrongboxQuality")
SetGoodsCaoZuo(nil,"0|2","���ܵĹ���ʯ","	Metadata/Items/Currency/CurrencyStrongboxQualityInfused")
SetGoodsCaoZuo(nil,"0|2","�oЧʯ��Ƭ","Metadata/Items/Currency/CurrencyRemoveModShard")
SetGoodsCaoZuo(nil,"0|2","���`ʯ��Ƭ","Metadata/Items/Currency/CurrencyUpgradeToRareAndSetSocketsShard")
SetGoodsCaoZuo(nil,"0|2","��ƽʯ��Ƭ","Metadata/Items/Currency/CurrencyRerollMapTypeShard")
SetGoodsCaoZuo(nil,"0|2","���Iʯ��Ƭ","Metadata/Items/Currency/CurrencyUpgradeMapTierShard")
SetGoodsCaoZuo(nil,"0|2","����ʯ��Ƭ","Metadata/Items/Currency/CurrencyStrongboxQualityShard")
SetGoodsCaoZuo(nil,"0|2","��׃ʯ��Ƭ","Metadata/Items/Currency/CurrencyRerollUniqueShard")
SetGoodsCaoZuo(nil,"0|2","����ʯ��Ƭ","Metadata/Items/Currency/CurrencyRerollRareShard")
SetGoodsCaoZuo(nil,"0|2","ħ�R��Ƭ","Metadata/Items/Currency/CurrencyDuplicateShard")
SetGoodsCaoZuo(nil,"0|2","���ʯ��Ƭ","Metadata/Items/Currency/CurrencyAddModToRareShard")
SetGoodsCaoZuo(nil,"0|2","����ʯ��Ƭ","Metadata/Items/Currency/CurrencyUpgradeMagicToRareShard")
SetGoodsCaoZuo(nil,"0|2","�M˹��֮�R","Metadata/Items/Currency/CurrencyAddGemExperience")
SetGoodsCaoZuo(nil,"0|2","�o��Ƭ","Metadata/Items/Currency/CurrencyArmourQuality")
SetGoodsCaoZuo(nil,"0|2","ĥ��ʯ","Metadata/Items/Currency/CurrencyWeaponQuality")






--ռλ�õ��s�Ҫ��������һ�l�Լ��h��
SetGoodsCaoZuo(nil,"0|1|4",nil,nil,nil,nil,nil,nil,"3")--ʰȡ ���� ���۳�ɫ��Ʒ
SetGoodsCaoZuo(nil,nil,"֪ʶ����","Metadata/Items/Currency/CurrencyIdentification",nil,nil,nil,40)--���˾Ͳ�����
SetGoodsCaoZuo(nil,nil,"���;���","Metadata/Items/Currency/CurrencyPortal",nil,nil,nil,40)--���˾Ͳ�����
SetGoodsCaoZuo(nil,"0|1",nil,nil,nil,nil,nil,nil,"0|1|2",6)--6��װ���ü���
SetGoodsCaoZuo(nil,"0|1",nil,nil,nil,nil,nil,nil,"0|1|2",nil,6)--6����װ���ü���
SetGoodsCaoZuo("�鱦|��Ԩ�鱦","0|1|4",nil,nil,nil,nil,nil,nil,"2")--ʰȡ ���� ���ۻ�ɫ��Ʒ�鱦
SetGoodsCaoZuo(nil,"0|2","��������","Metadata/Items/Currency/CurrencyFlaskQuality")--
SetGoodsCaoZuo(nil,"3","������Ƭ","Metadata/Items/Currency/CurrencyIdentificationShard")--������Ƭ��
SetGoodsCaoZuo(nil,"1|3",nil,"Metadata/Items/Metamorphosis/MetamorphosisBrain")--�ħ�X�費��
SetGoodsCaoZuo(nil,"1|3",nil,"Metadata/Items/Metamorphosis/MetamorphosisEye")--�ħ�۾�����
SetGoodsCaoZuo(nil,"1|3",nil,"Metadata/Items/Metamorphosis/MetamorphosisLiver")--�ħ���K����
SetGoodsCaoZuo(nil,"1|3",nil,"Metadata/Items/Metamorphosis/MetamorphosisLung")--�ħ���K����
SetGoodsCaoZuo(nil,"1|3",nil,"Metadata/Items/Metamorphosis/MetamorphosisHeart")--�ħ���K����



--ʰȡ�O���^
--SetGoodsCaoZuo(goodsType,czType,name,className,wordName,wordClassName,pingzhi,cnt,color,socketCnt,lineCnt,checkCangKu,sanSeLian,nType,funcCheck)-- ����Ҫ��������Ʒ
--goodsType �ַ����� ��������Ʒ���ͺ����������� nil ֧���������� ����������|�ֿ�
--saveType ����  ����������|�ֿ� 
--czType:�ַ����� 0Ϊʰ 1�� 2�� 3�� 4���� �ɶ���м���|����
--name �ַ����� ��Ʒ������ �������� nil
--className �ַ����� ��Ʒ������ �������� nil
--wordName �ַ����� ��Ʒ�Ĵ�׺�� �������� nil
--wordClassName �ַ����� ��Ʒ�Ĵ�׺���� �������� nil
--pingzhi ������ ��Ʒ��Ʒ�� �������� nil
--cnt ������ �������� �������� nil
--color �ַ����� ��ɫ 0�� 1�� 2�� 3�� �����|���� nilΪ����
--socketCnt ������ �ܶ����� �������� nil
--lineCnt ������ �������� �������� nil
--checkCangKu ���㱣������ʱ�Ƿ����ֿ��ڵ�����Ҳ�����ȥ nil��falseΪ������ֿ� true Ϊ��Ҫ����
--sanSeLian �Ƿ���ɫ���� nilΪ���� falseΪ����ɫ���� trueΪ��ɫ����
--nType=��Ч���� ������ 0��nil����Ϊһֱ��Ч 1Ϊ��ͼʱ����Ч 2Ϊ���ʱ����Ч
--funcCheck ���˺�����������Ԥ���Ľӿڣ�������Ҫ�����������nil
--֧Ԯ���
----����ҩ��|ħ��ҩ��|����ҩ��|ͨ��|����|��ָ|צ|ذ��|����|���ֽ�|ϸ��|���ָ�|���ִ�|����ذ��|����|ս��|��|����|˫�ֽ�|˫�ָ�|˫�ִ�|�������ܱ�ʯ|�������ܱ�ʯ|����|����
--|����|Ь��|�·�|ͷ��|��|С��ʥ��|����ʥ��|����ʥ��|�ɶѵ�ͨ��|������Ʒ|����|����ҩ��|����ҩ��|����ͼ||���|��ͼ��Ƭ|����װ��|�̳���Ʒ|�鱦|���˿�|�Թ���Ʒ|�Թ���Ʒ|
--����Թ���Ʒ|��϶֮ʯ|����ʯ|����֮��|����װ����Ƭ|��Ԩ�鱦|��Խͨ��|����̽��������Ƕ��ͨ��|����ʯ|��Ƭ|����֮��|����ذ��|ս��|����̽���ɶѵ��ɲ���ͨ��| 




--ʰȡ�O���^
SetGoodsCaoZuo("ͨ��|�ɶѵ�ͨ��|����ͼ|���˿�|��Ƭ","0|2")--����������ü��
--SetGoodsCaoZuo("�������ܱ�ʯ|�������ܱ�ʯ","0|2",nil,nil,nil,nil,5)--ʰȡƷ�ʳ���5�ļ��ܱ�ʯ
--SetGoodsCaoZuo("��϶֮ʯ","0|2")

--�����TƱ
--SetGoodsCaoZuo(nil,"0|2","���A���ܻҠa","Metadata/Items/Currency/CurrencyEldritchEmber1")
--SetGoodsCaoZuo(nil,"0|2","���A���ܻҠa","Metadata/Items/Currency/CurrencyEldritchEmber2")
--SetGoodsCaoZuo(nil,"0|2","�ꂥ���ܻҠa","Metadata/Items/Currency/CurrencyEldritchEmber3")
--SetGoodsCaoZuo(nil,"0|2","׿Խ���ܻҠa","Metadata/Items/Currency/CurrencyEldritchEmber4")
--SetGoodsCaoZuo(nil,"0|2","���A�����`Һ","Metadata/Items/Currency/CurrencyEldritchIchor1")
--SetGoodsCaoZuo(nil,"0|2","���A���ܻҠa","Metadata/Items/Currency/CurrencyEldritchIchor2")
--SetGoodsCaoZuo(nil,"0|2","�ꂥ���ܻҠa","Metadata/Items/Currency/CurrencyEldritchIchor3")
--SetGoodsCaoZuo(nil,"0|2","׿Խ���ܻҠa","Metadata/Items/Currency/CurrencyEldritchIchor4")

--�������
SetGoodsCaoZuo(nil,"0|2","�}��ʿ�ĳ��ʯ","Metadata/Items/AtlasExiles/AddModToRareCrusader")
SetGoodsCaoZuo(nil,"0|2","���H�ߵĳ��ʯ","Metadata/Items/AtlasExiles/AddModToRareRedeemer")
SetGoodsCaoZuo(nil,"0|2","���C�ߵĳ��ʯ","Metadata/Items/AtlasExiles/AddModToRareHunter")
SetGoodsCaoZuo(nil,"0|2","����܊�ĳ��ʯ","Metadata/Items/AtlasExiles/AddModToRareWarlord")

--������֮��
SetGoodsCaoZuo(nil,"0|2","������֮��","Metadata/Items/AtlasExiles/ApplyInfluence")

--ጽ�֮���� 3
SetSaveIndex(nil,"3","ጽ�֮��������","Metadata/Items/MapFragments/Maven/MavenMapVoid1")
SetSaveIndex(nil,"3","ጽ�֮����Ť��","Metadata/Items/MapFragments/Maven/MavenMapVoid2")
SetSaveIndex(nil,"3","ጽ�֮�����z��","Metadata/Items/MapFragments/Maven/MavenMapVoid3")
SetSaveIndex(nil,"3","ጽ�֮�����[��","Metadata/Items/MapFragments/Maven/MavenMapVoid4")
SetSaveIndex(nil,"3","ጽ�֮�����֑�","Metadata/Items/MapFragments/Maven/MavenMapVoid5")
SetSaveIndex(nil,"3","ጽ�֮������������","Metadata/Items/MapFragments/Maven/MavenMapVoid6")
SetSaveIndex(nil,"3","ጽ�֮����ݛ�D","Metadata/Items/MapFragments/Maven/MavenMapAtlas1")

--�Q���������}
SetGoodsCaoZuo(nil,"0|1",nil,nil,nil,nil,nil,nil,"0|1|2",6)--���������u��
SetGoodsCaoZuo(nil,"0|1",nil,nil,nil,nil,nil,nil,"0|1|2",nil,6)--���B���}�u��


--��헲����Ė|�����ķ�ͨ�ò�����Ʒ
SetGoodsCaoZuo(nil,"0|1|4",nil,nil,nil,nil,nil,nil,"3")--ʰȡ ���� ���۳�ɫ��Ʒ
SetGoodsCaoZuo(nil,nil,"֪ʶ����","Metadata/Items/Currency/CurrencyIdentification",nil,nil,nil,40)--���˾Ͳ�����
SetGoodsCaoZuo(nil,nil,"���;���","Metadata/Items/Currency/CurrencyPortal",nil,nil,nil,40)--���˾Ͳ�����
--SetGoodsCaoZuo(nil,nil,"֪ʶ����","Metadata/Items/Currency/CurrencyIdentification")
--SetGoodsCaoZuo(nil,nil,"���;���","Metadata/Items/Currency/CurrencyPortal")

--ʰȡ�ǈF�錚����}��桸4��
--SetGoodsCaoZuo(nil,"0|2","�����ǈF�錚","Metadata/Items/Jewels/JewelPassiveTreeExpansionLarge")
--SetGoodsCaoZuo(nil,"0|2","�����ǈF�錚","Metadata/Items/Jewels/JewelPassiveTreeExpansionMedium")
--SetGoodsCaoZuo(nil,"0|2","С���ǈF�錚","Metadata/Items/Jewels/JewelPassiveTreeExpansionSmall")
--SetSaveIndex(nil,"4","�����ǈF�錚","Metadata/Items/Jewels/JewelPassiveTreeExpansionLarge")
--SetSaveIndex(nil,"4","�����ǈF�錚","Metadata/Items/Jewels/JewelPassiveTreeExpansionMedium")
--SetSaveIndex(nil,"4","С���ǈF�錚","Metadata/Items/Jewels/JewelPassiveTreeExpansionSmall")

--ֵ�X�ļ���(���ɡ��x�衢����)����ȡ����顸4��
SetSaveIndex(nil,"4",nil,nil,nil,"Enlighten Support",nil,nil)
SetSaveIndex(nil,"4",nil,nil,nil,"Empower Support",nil,nil)
SetSaveIndex(nil,"4",nil,nil,nil,"Enhance Support",nil,nil)
SetGoodsCaoZuo(nil,"0|2",nil,nil,nil,"Enlighten Support",nil,nil)
SetGoodsCaoZuo(nil,"0|2",nil,nil,nil,"Empower Support",nil,nil)
SetGoodsCaoZuo(nil,"0|2",nil,nil,nil,"Enhance Support",nil,nil)

--ʰȡ�u�������@
SetGoodsCaoZuo(nil,"0|1",nil,nil,nil,nil,nil,nil,"0|1|2",6)--6��װ���ü���
SetGoodsCaoZuo(nil,"0|1",nil,nil,nil,nil,nil,nil,"0|1|2",nil,6)--6����װ���ü���
SetGoodsCaoZuo("צ","0|1|4",nil,nil,nil,nil,5,nil,"2")--���������Ļ�צ��
SetGoodsCaoZuo("����","0|1|4",nil,nil,nil,nil,5,nil,"2")--���������Ļ�צ��
SetGoodsCaoZuo("���ֽ�","0|1|4",nil,nil,nil,nil,5,nil,"2")--���������Ļ�צ��
SetGoodsCaoZuo("ذ��","0|1|4",nil,nil,nil,nil,5,nil,"2")--���������Ļ�צ��
SetGoodsCaoZuo("���ָ�","0|1|4",nil,nil,nil,nil,5,nil,"2")--���������Ļ�צ��
SetGoodsCaoZuo("���ִ�","0|1|4",nil,nil,nil,nil,5,nil,"2")--���������Ļ�צ��
SetGoodsCaoZuo("����","0|1|4",nil,nil,nil,nil,5,nil,"2")--���������Ļ�צ��
SetGoodsCaoZuo("��","0|1|4",nil,nil,nil,nil,5,nil,"2")--���������Ļ�צ��
SetGoodsCaoZuo("ϸ��","0|1|4",nil,nil,nil,nil,5,nil,"2")--���������Ļ�צ��


--ʰȡ����ȡ��Ƭף������ȥ���顸1���}���
--SetGoodsCaoZuo(nil,"0|2","�Ğ�����ף��","Metadata/Items/Currency/CurrencyBreachUpgradeUniqueChaos")
--SetGoodsCaoZuo(nil,"0|2","���S��ף��","Metadata/Items/Currency/CurrencyBreachUpgradeUniqueLightning")
--SetGoodsCaoZuo(nil,"0|2","���ֵ�ף��","Metadata/Items/AtlasExiles/ApplyInfluence")
--SetGoodsCaoZuo(nil,"0|2","��������ף��","Metadata/Items/Currency/CurrencyBreachUpgradeUniqueCold")
--SetGoodsCaoZuo(nil,"0|2","�i����ף��","Metadata/Items/Currency/CurrencyBreachUpgradeUniqueFire")
--SetSaveIndex(nil,"1","�Ğ�����ף��","Metadata/Items/Currency/CurrencyBreachUpgradeUniqueChaos")
--SetSaveIndex(nil,"1","���S��ף��","Metadata/Items/Currency/CurrencyBreachUpgradeUniqueLightning")
--SetSaveIndex(nil,"1","���ֵ�ף��","Metadata/Items/AtlasExiles/ApplyInfluence")
--SetSaveIndex(nil,"1","��������ף��","Metadata/Items/Currency/CurrencyBreachUpgradeUniqueCold")
--SetSaveIndex(nil,"1","������ף��","Metadata/Items/Currency/CurrencyBreachUpgradeUniqueFire")

--SetSaveIndex(nil,"1","�Ğ�����Ƭ","Metadata/Items/Currency/CurrencyBreachChaosShard")
--SetSaveIndex(nil,"1","���S��Ƭ","Metadata/Items/Currency/CurrencyBreachLightningShard")
--SetSaveIndex(nil,"1","������Ƭ","Metadata/Items/Currency/CurrencyBreachColdShard")
--SetSaveIndex(nil,"1","���������Ƭ","Metadata/Items/Currency/CurrencyBreachPhysicalShard")
--SetSaveIndex(nil,"1","������Ƭ","Metadata/Items/Currency/CurrencyBreachFireShard")

--SetSaveIndex(nil,"1","���a������Ƭ","Metadata/Items/Currency/CurrencyLegionKaruiShard")
--SetSaveIndex(nil,"1","���a�R����˹��Ƭ","Metadata/Items/Currency/CurrencyLegionMarakethShard")
--SetSaveIndex(nil,"1","���a����ۇ���Ƭ","Metadata/Items/Currency/CurrencyLegionEternalEmpireShard")
--SetSaveIndex(nil,"1","���a�}����Ƭ","Metadata/Items/Currency/CurrencyLegionTemplarShard")
--SetSaveIndex(nil,"1","���a�ߠ���Ƭ","Metadata/Items/Currency/CurrencyLegionVaalShard")

--SetSaveIndex(nil,"1","�����Ƭ","Metadata/Items/Currency/CurrencyAfflictionShard")

--SetSaveIndex(nil,"1","׿Խ�ɲ���","Metadata/Items/Currency/ScoutingReports/AtlasScoutingReportUnique")
--SetSaveIndex(nil,"1","�����ɲ���","Metadata/Items/Currency/ScoutingReports/AtlasScoutingReportBreachstone")
--SetSaveIndex(nil,"1","�ߠ��ɲ���","Metadata/Items/Currency/ScoutingReports/AtlasScoutingReportCorrupted")
--SetSaveIndex(nil,"1","̽�U�҂ɲ���","Metadata/Items/Currency/ScoutingReports/AtlasScoutingReportExplorers")



--�Sԣ�ƽMʰȡ����ȡ�����顸1�����
SetSaveIndex(nil,"1","�Sԣ�ƽM","Metadata/Items/DivinationCards/DivinationCardDeck")
SetGoodsCaoZuo(nil,"0|2","�Sԣ�ƽM","Metadata/Items/DivinationCards/DivinationCardDeck")

--ʰȡ��ȡ������}��������顸1�����
--SetSaveIndex(nil,"1","����","Metadata/Items/Currency/CurrencyRefreshGambler")
--SetGoodsCaoZuo(nil,"0|2","����","Metadata/Items/Currency/CurrencyRefreshGambler")
--SetSaveIndex(nil,"1","���᪄��","Metadata/Items/Currency/CurrencyRefreshSaga")
--SetGoodsCaoZuo(nil,"0|2","���᪄��","Metadata/Items/Currency/CurrencyRefreshSaga")
--SetSaveIndex(nil,"1","������T","Metadata/Items/Currency/CurrencyRefreshBarter")
--SetGoodsCaoZuo(nil,"0|2","������T","Metadata/Items/Currency/CurrencyRefreshBarter")
--SetSaveIndex(nil,"1","�U����","Metadata/Items/Currency/CurrencyRefreshDealer")
--SetGoodsCaoZuo(nil,"0|2","�U����","Metadata/Items/Currency/CurrencyRefreshDealer")




--������������顸4���}�����
SetSaveIndex(nil,"4","����֮���ﾫ��","Metadata/Items/Currency/CurrencyEssenceHatred1")
SetSaveIndex(nil,"4","����֮��૾���","Metadata/Items/Currency/CurrencyEssenceHatred2")
SetSaveIndex(nil,"4","����֮��������","Metadata/Items/Currency/CurrencyEssenceHatred3")
SetSaveIndex(nil,"4","����֮��������","Metadata/Items/Currency/CurrencyEssenceHatred4")
SetSaveIndex(nil,"4","����֮��������","Metadata/Items/Currency/CurrencyEssenceHatred5")
SetSaveIndex(nil,"4","����֮��Х����","Metadata/Items/Currency/CurrencyEssenceHatred6")
SetSaveIndex(nil,"4","����֮�ƿվ���","Metadata/Items/Currency/CurrencyEssenceHatred7")
SetSaveIndex(nil,"4","��ʹ֮���ﾫ��","Metadata/Items/Currency/CurrencyEssenceWoe1")
SetSaveIndex(nil,"4","��ʹ֮��૾���","Metadata/Items/Currency/CurrencyEssenceWoe2")
SetSaveIndex(nil,"4","��ʹ֮��������","Metadata/Items/Currency/CurrencyEssenceWoe3")
SetSaveIndex(nil,"4","��ʹ֮��������","Metadata/Items/Currency/CurrencyEssenceWoe4")
SetSaveIndex(nil,"4","��ʹ֮��������","Metadata/Items/Currency/CurrencyEssenceWoe5")
SetSaveIndex(nil,"4","��ʹ֮��Х����","Metadata/Items/Currency/CurrencyEssenceWoe6")
SetSaveIndex(nil,"4","��ʹ֮�ƿվ���","Metadata/Items/Currency/CurrencyEssenceWoe7")
SetSaveIndex(nil,"4","̰��֮���ﾫ��","Metadata/Items/Currency/CurrencyEssenceGreed1")
SetSaveIndex(nil,"4","̰��֮��૾���","Metadata/Items/Currency/CurrencyEssenceGreed2")
SetSaveIndex(nil,"4","̰��֮��������","Metadata/Items/Currency/CurrencyEssenceGreed3")
SetSaveIndex(nil,"4","̰��֮��������","Metadata/Items/Currency/CurrencyEssenceGreed4")
SetSaveIndex(nil,"4","̰��֮��������","Metadata/Items/Currency/CurrencyEssenceGreed5")
SetSaveIndex(nil,"4","̰��֮��Х����","Metadata/Items/Currency/CurrencyEssenceGreed6")
SetSaveIndex(nil,"4","̰��֮�ƿվ���","Metadata/Items/Currency/CurrencyEssenceGreed7")
SetSaveIndex(nil,"4","����֮���ﾫ��","Metadata/Items/Currency/CurrencyEssenceContempt1")
SetSaveIndex(nil,"4","����֮��૾���","Metadata/Items/Currency/CurrencyEssenceContempt2")
SetSaveIndex(nil,"4","����֮��������","Metadata/Items/Currency/CurrencyEssenceContempt3")
SetSaveIndex(nil,"4","����֮��������","Metadata/Items/Currency/CurrencyEssenceContempt4")
SetSaveIndex(nil,"4","����֮��������","Metadata/Items/Currency/CurrencyEssenceContempt5")
SetSaveIndex(nil,"4","����֮��Х����","Metadata/Items/Currency/CurrencyEssenceContempt6")
SetSaveIndex(nil,"4","����֮�ƿվ���","Metadata/Items/Currency/CurrencyEssenceContempt7")
SetSaveIndex(nil,"4","��ϧ֮��૾���","Metadata/Items/Currency/CurrencyEssenceSorrow1")
SetSaveIndex(nil,"4","��ϧ֮��������","Metadata/Items/Currency/CurrencyEssenceSorrow2")
SetSaveIndex(nil,"4","��ϧ֮��������","Metadata/Items/Currency/CurrencyEssenceSorrow3")
SetSaveIndex(nil,"4","��ϧ֮��������","Metadata/Items/Currency/CurrencyEssenceSorrow4")
SetSaveIndex(nil,"4","��ϧ֮��Х����","Metadata/Items/Currency/CurrencyEssenceSorrow5")
SetSaveIndex(nil,"4","��ϧ֮�ƿվ���","Metadata/Items/Currency/CurrencyEssenceSorrow6")
SetSaveIndex(nil,"4","��ŭ֮��૾���","Metadata/Items/Currency/CurrencyEssenceAnger1")
SetSaveIndex(nil,"4","��ŭ֮��������","Metadata/Items/Currency/CurrencyEssenceAnger2")
SetSaveIndex(nil,"4","��ŭ֮��������","Metadata/Items/Currency/CurrencyEssenceAnger3")
SetSaveIndex(nil,"4","��ŭ֮��������","Metadata/Items/Currency/CurrencyEssenceAnger4")
SetSaveIndex(nil,"4","��ŭ֮��Х����","Metadata/Items/Currency/CurrencyEssenceAnger5")
SetSaveIndex(nil,"4","��ŭ֮�ƿվ���","Metadata/Items/Currency/CurrencyEssenceAnger6")
SetSaveIndex(nil,"4","��ĥ֮��૾���","Metadata/Items/Currency/CurrencyEssenceTorment1")
SetSaveIndex(nil,"4","��ĥ֮��������","Metadata/Items/Currency/CurrencyEssenceTorment2")
SetSaveIndex(nil,"4","��ĥ֮��������","Metadata/Items/Currency/CurrencyEssenceTorment3")
SetSaveIndex(nil,"4","��ĥ֮��������","Metadata/Items/Currency/CurrencyEssenceTorment4")
SetSaveIndex(nil,"4","��ĥ֮��Х����","Metadata/Items/Currency/CurrencyEssenceTorment5")
SetSaveIndex(nil,"4","��ĥ֮�ƿվ���","Metadata/Items/Currency/CurrencyEssenceTorment6")
SetSaveIndex(nil,"4","�־�֮��૾���","Metadata/Items/Currency/CurrencyEssenceFear1")
SetSaveIndex(nil,"4","�־�֮��������","Metadata/Items/Currency/CurrencyEssenceFear2")
SetSaveIndex(nil,"4","�־�֮��������","Metadata/Items/Currency/CurrencyEssenceFear3")
SetSaveIndex(nil,"4","�־�֮��������","Metadata/Items/Currency/CurrencyEssenceFear4")
SetSaveIndex(nil,"4","�־�֮��Х����","Metadata/Items/Currency/CurrencyEssenceFear5")
SetSaveIndex(nil,"4","�־�֮�ƿվ���","Metadata/Items/Currency/CurrencyEssenceFear6")
SetSaveIndex(nil,"4","����֮��������","Metadata/Items/Currency/CurrencyEssenceSuffering1")
SetSaveIndex(nil,"4","����֮��������","Metadata/Items/Currency/CurrencyEssenceSuffering2")
SetSaveIndex(nil,"4","����֮��������","Metadata/Items/Currency/CurrencyEssenceSuffering3")
SetSaveIndex(nil,"4","����֮��Х����","Metadata/Items/Currency/CurrencyEssenceSuffering4")
SetSaveIndex(nil,"4","����֮�ƿվ���","Metadata/Items/Currency/CurrencyEssenceSuffering5")
SetSaveIndex(nil,"4","��Ű֮��������","Metadata/Items/Currency/CurrencyEssenceRage1")
SetSaveIndex(nil,"4","��Ű֮��������","Metadata/Items/Currency/CurrencyEssenceRage2")
SetSaveIndex(nil,"4","��Ű֮��������","Metadata/Items/Currency/CurrencyEssenceRage3")
SetSaveIndex(nil,"4","��Ű֮��Х����","Metadata/Items/Currency/CurrencyEssenceRage4")
SetSaveIndex(nil,"4","��Ű֮�ƿվ���","Metadata/Items/Currency/CurrencyEssenceRage5")
SetSaveIndex(nil,"4","����֮��������","Metadata/Items/Currency/CurrencyEssenceWrath1")
SetSaveIndex(nil,"4","����֮��������","Metadata/Items/Currency/CurrencyEssenceWrath2")
SetSaveIndex(nil,"4","����֮��������","Metadata/Items/Currency/CurrencyEssenceWrath3")
SetSaveIndex(nil,"4","����֮��Х����","Metadata/Items/Currency/CurrencyEssenceWrath4")
SetSaveIndex(nil,"4","����֮�ƿվ���","Metadata/Items/Currency/CurrencyEssenceWrath5")
SetSaveIndex(nil,"4","�ɻ�֮��������","Metadata/Items/Currency/CurrencyEssenceDoubt1")
SetSaveIndex(nil,"4","�ɻ�֮��������","Metadata/Items/Currency/CurrencyEssenceDoubt2")
SetSaveIndex(nil,"4","�ɻ�֮��������","Metadata/Items/Currency/CurrencyEssenceDoubt3")
SetSaveIndex(nil,"4","�ɻ�֮��Х����","Metadata/Items/Currency/CurrencyEssenceDoubt4")
SetSaveIndex(nil,"4","�ɻ�֮�ƿվ���","Metadata/Items/Currency/CurrencyEssenceDoubt5")
SetSaveIndex(nil,"4","�尾֮��������","Metadata/Items/Currency/CurrencyEssenceAnguish1")
SetSaveIndex(nil,"4","�尾֮��������","Metadata/Items/Currency/CurrencyEssenceAnguish2")
SetSaveIndex(nil,"4","�尾֮��Х����","Metadata/Items/Currency/CurrencyEssenceAnguish3")
SetSaveIndex(nil,"4","�尾֮�ƿվ���","Metadata/Items/Currency/CurrencyEssenceAnguish4")
SetSaveIndex(nil,"4","���֮��������","Metadata/Items/Currency/CurrencyEssenceLoathing1")
SetSaveIndex(nil,"4","���֮��������","Metadata/Items/Currency/CurrencyEssenceLoathing2")
SetSaveIndex(nil,"4","���֮��Х����","Metadata/Items/Currency/CurrencyEssenceLoathing3")
SetSaveIndex(nil,"4","���֮�ƿվ���","Metadata/Items/Currency/CurrencyEssenceLoathing4")
SetSaveIndex(nil,"4","�̶�֮��������","Metadata/Items/Currency/CurrencyEssenceSpite1")
SetSaveIndex(nil,"4","�̶�֮�޺𾫻�","Metadata/Items/Currency/CurrencyEssenceSpite2")
SetSaveIndex(nil,"4","�̶�֮��Х����","Metadata/Items/Currency/CurrencyEssenceSpite3")
SetSaveIndex(nil,"4","�̶�֮�ƿվ���","Metadata/Items/Currency/CurrencyEssenceSpite4")
SetSaveIndex(nil,"4","����֮��������","Metadata/Items/Currency/CurrencyEssenceZeal1")
SetSaveIndex(nil,"4","����֮�޺𾫻�","Metadata/Items/Currency/CurrencyEssenceZeal2")
SetSaveIndex(nil,"4","����֮��Х����","Metadata/Items/Currency/CurrencyEssenceZeal3")
SetSaveIndex(nil,"4","����֮�ƿվ���","Metadata/Items/Currency/CurrencyEssenceZeal4")
SetSaveIndex(nil,"4","���֮��������","Metadata/Items/Currency/CurrencyEssenceMisery1")
SetSaveIndex(nil,"4","���֮��Х����","Metadata/Items/Currency/CurrencyEssenceMisery2")
SetSaveIndex(nil,"4","���֮�ƿվ���","Metadata/Items/Currency/CurrencyEssenceMisery3")
SetSaveIndex(nil,"4","�ɵ�֮��������","Metadata/Items/Currency/CurrencyEssenceDread1")
SetSaveIndex(nil,"4","�ɵ�֮��Х����","Metadata/Items/Currency/CurrencyEssenceDread2")
SetSaveIndex(nil,"4","�ɵ�֮�ƿվ���","Metadata/Items/Currency/CurrencyEssenceDread3")
SetSaveIndex(nil,"4","����֮��������","Metadata/Items/Currency/CurrencyEssenceScorn1")
SetSaveIndex(nil,"4","����֮��Х����","Metadata/Items/Currency/CurrencyEssenceScorn2")
SetSaveIndex(nil,"4","����֮�ƿվ���","Metadata/Items/Currency/CurrencyEssenceScorn3")
SetSaveIndex(nil,"4","�ɶ�֮��������","Metadata/Items/Currency/CurrencyEssenceEnvy1")
SetSaveIndex(nil,"4","�ɶ�֮��Х����","Metadata/Items/Currency/CurrencyEssenceEnvy2")
SetSaveIndex(nil,"4","�ɶ�֮�ƿվ���","Metadata/Items/Currency/CurrencyEssenceEnvy3")
SetSaveIndex(nil,"4","���侫��","Metadata/Items/Currency/CurrencyEssenceHysteria1")
SetSaveIndex(nil,"4","���Ҿ���","Metadata/Items/Currency/CurrencyEssenceInsanity1")
SetSaveIndex(nil,"4","���־���","Metadata/Items/Currency/CurrencyEssenceHorror1")
SetSaveIndex(nil,"4","��������","Metadata/Items/Currency/CurrencyEssenceDelirium1")





--��ƿ�^
--ʰȡ��ƿ
--����
--SetGoodsCaoZuo(nil,"0|2","��͸��ƿ","Metadata/Items/Currency/Mushrune1")
--SetGoodsCaoZuo(nil,"0|2","�����ƿ","Metadata/Items/Currency/Mushrune0|2")
--SetGoodsCaoZuo(nil,"0|2","������ƿ","Metadata/Items/Currency/Mushrune3")
--SetGoodsCaoZuo(nil,"0|2","��G��ƿ","Metadata/Items/Currency/Mushrune4")
--SetGoodsCaoZuo(nil,"0|2","��G��ƿ","Metadata/Items/Currency/Mushrune5")
--SetGoodsCaoZuo(nil,"0|2","���{��ƿ","Metadata/Items/Currency/Mushrune6")
--SetGoodsCaoZuo(nil,"0|2","������ƿ","Metadata/Items/Currency/Mushrune6b")
--SetGoodsCaoZuo(nil,"0|2","�g����ƿ","Metadata/Items/Currency/Mushrune7")
--SetGoodsCaoZuo(nil,"0|2","�p�t��ƿ","Metadata/Items/Currency/Mushrune8")
--SetGoodsCaoZuo(nil,"0|2","�����ƿ","Metadata/Items/Currency/Mushrune9")
SetGoodsCaoZuo(nil,"0|2","�����ƿ","Metadata/Items/Currency/Mushrune10")
SetGoodsCaoZuo(nil,"0|2","���y��ƿ","Metadata/Items/Currency/Mushrune11")
SetGoodsCaoZuo(nil,"0|2","���S��ƿ","Metadata/Items/Currency/Mushrune10|2")
SetGoodsCaoZuo(nil,"0|2","�@Ⱦ��ƿ","Metadata/Items/Currency/MushruneCorrupt")
--��ƿ��ȡ�����顸3�������
--����
--SetSaveIndex(nil,"3","��͸��ƿ","Metadata/Items/Currency/Mushrune1")
--SetSaveIndex(nil,"3","�����ƿ","Metadata/Items/Currency/Mushrune2")
--SetSaveIndex(nil,"3","������ƿ","Metadata/Items/Currency/Mushrune3")
--SetSaveIndex(nil,"3","��G��ƿ","Metadata/Items/Currency/Mushrune4")
--SetSaveIndex(nil,"3","��G��ƿ","Metadata/Items/Currency/Mushrune5")
--SetSaveIndex(nil,"3","���{��ƿ","Metadata/Items/Currency/Mushrune6")
--SetSaveIndex(nil,"3","������ƿ","Metadata/Items/Currency/Mushrune6b")
--SetSaveIndex(nil,"3","�g����ƿ","Metadata/Items/Currency/Mushrune7")
--SetSaveIndex(nil,"3","�p�t��ƿ","Metadata/Items/Currency/Mushrune8")
--SetSaveIndex(nil,"3","�����ƿ","Metadata/Items/Currency/Mushrune9")
SetSaveIndex(nil,"3","�����ƿ","Metadata/Items/Currency/Mushrune10")
SetSaveIndex(nil,"3","���y��ƿ","Metadata/Items/Currency/Mushrune11")
SetSaveIndex(nil,"3","���S��ƿ","Metadata/Items/Currency/Mushrune12")
SetSaveIndex(nil,"3","�@Ⱦ��ƿ","Metadata/Items/Currency/MushruneCorrupt")


--�}���x�^
--��ȡ�}���x
--����
--SetGoodsCaoZuo(nil,"0|2","Metadata/Items/Scarabs/ScarabLegion1")--�}���x���n�g���y
--SetGoodsCaoZuo(nil,"0|2","Metadata/Items/Scarabs/ScarabLegion2")--�}���x���A�����y
--SetGoodsCaoZuo(nil,"0|2","Metadata/Items/Scarabs/ScarabLegion3")--�}���x��僽���y
--SetGoodsCaoZuo(nil,"0|2","Metadata/Items/Scarabs/ScarabLegion4")--�}���x��չ����y
--SetGoodsCaoZuo(nil,"0|2","Metadata/Items/Scarabs/ScarabHarbinger1")--�}���x���n�g���I
--SetGoodsCaoZuo(nil,"0|2","Metadata/Items/Scarabs/ScarabHarbinger2")--�}���x���A�����I
--SetGoodsCaoZuo(nil,"0|2","Metadata/Items/Scarabs/ScarabHarbinger3")--�}���x��僽����I
--SetGoodsCaoZuo(nil,"0|2","Metadata/Items/Scarabs/ScarabHarbinger4")--�}���x��չ�����I
--SetGoodsCaoZuo(nil,"0|2","Metadata/Items/Scarabs/ScarabBlight1")--�}���x���n�g����
--SetGoodsCaoZuo(nil,"0|2","Metadata/Items/Scarabs/ScarabBlight2")--�}���x���A������
--SetGoodsCaoZuo(nil,"0|2","Metadata/Items/Scarabs/ScarabBlight3")--�}���x��僽����
--SetGoodsCaoZuo(nil,"0|2","Metadata/Items/Scarabs/ScarabBlight4")--�}���x��չ�����
--SetGoodsCaoZuo(nil,"0|2","Metadata/Items/Scarabs/ScarabSulphite1")--�}���x���n�g����
--SetGoodsCaoZuo(nil,"0|2","Metadata/Items/Scarabs/ScarabSulphite2")--�}���x���A������
--SetGoodsCaoZuo(nil,"0|2","Metadata/Items/Scarabs/ScarabSulphite3")--�}���x��僽�����
--SetGoodsCaoZuo(nil,"0|2","Metadata/Items/Scarabs/ScarabSulphite4")--�}���x��չ������
--SetGoodsCaoZuo(nil,"0|2","Metadata/Items/Scarabs/ScarabBreach1")--�}���x���n�g�Ѻ�
--SetGoodsCaoZuo(nil,"0|2","Metadata/Items/Scarabs/ScarabBreach2")--�}���x���A���Ѻ�
--SetGoodsCaoZuo(nil,"0|2","Metadata/Items/Scarabs/ScarabBreach3")--�}���x��僽��Ѻ�
--SetGoodsCaoZuo(nil,"0|2","Metadata/Items/Scarabs/ScarabBreach4")--�}���x��չ���Ѻ�
--SetGoodsCaoZuo(nil,"0|2","Metadata/Items/Scarabs/ScarabMaps1")--�}���x���n�g�u�D
--SetGoodsCaoZuo(nil,"0|2","Metadata/Items/Scarabs/ScarabMaps2")--�}���x���A���u�D
--SetGoodsCaoZuo(nil,"0|2","Metadata/Items/Scarabs/ScarabMaps3")--�}���x��僽��u�D
--SetGoodsCaoZuo(nil,"0|2","Metadata/Items/Scarabs/ScarabMaps4")--�}���x��չ���u�D
--SetGoodsCaoZuo(nil,"0|2","Metadata/Items/Scarabs/ScarabUniques1")--�}���x���n�g�}��
--SetGoodsCaoZuo(nil,"0|2","Metadata/Items/Scarabs/ScarabUniques2")--�}���x���A���}��
--SetGoodsCaoZuo(nil,"0|2","Metadata/Items/Scarabs/ScarabUniques3")--�}���x��僽��}��
--SetGoodsCaoZuo(nil,"0|2","Metadata/Items/Scarabs/ScarabUniques4")--�}���x��չ���}��
--SetGoodsCaoZuo(nil,"0|2","Metadata/Items/Scarabs/ScarabBeasts1")--�}���x���n�g�F�C
--SetGoodsCaoZuo(nil,"0|2","Metadata/Items/Scarabs/ScarabBeasts2")--�}���x���A���F�C
--SetGoodsCaoZuo(nil,"0|2","Metadata/Items/Scarabs/ScarabBeasts3")--�}���x��僽�F�C
--SetGoodsCaoZuo(nil,"0|2","Metadata/Items/Scarabs/ScarabBeasts4")--�}���x��չ��F�C
--SetGoodsCaoZuo(nil,"0|2","Metadata/Items/Scarabs/ScarabShaperRares1")--�}���x���n�g����
--SetGoodsCaoZuo(nil,"0|2","Metadata/Items/Scarabs/ScarabShaperRares2")--�}���x���A������
--SetGoodsCaoZuo(nil,"0|2","Metadata/Items/Scarabs/ScarabShaperRares3")--�}���x��僽�����
--SetGoodsCaoZuo(nil,"0|2","Metadata/Items/Scarabs/ScarabShaperRares4")--�}���x��չ������
--SetGoodsCaoZuo(nil,"0|2","Metadata/Items/Scarabs/ScarabElderRares1")--�}���x���n�g����
--SetGoodsCaoZuo(nil,"0|2","Metadata/Items/Scarabs/ScarabElderRares2")--�}���x���A������
--SetGoodsCaoZuo(nil,"0|2","Metadata/Items/Scarabs/ScarabElderRares3")--�}���x��僽�����
--SetGoodsCaoZuo(nil,"0|2","Metadata/Items/Scarabs/ScarabElderRares4")--�}���x��չ������
--SetGoodsCaoZuo(nil,"0|2","Metadata/Items/Scarabs/ScarabDivinationCards1")--�}���x���n�g���\
--SetGoodsCaoZuo(nil,"0|2","Metadata/Items/Scarabs/ScarabDivinationCards2")--�}���x���A�����\
--SetGoodsCaoZuo(nil,"0|2","Metadata/Items/Scarabs/ScarabDivinationCards3")--�}���x��僽����\
--SetGoodsCaoZuo(nil,"0|2","Metadata/Items/Scarabs/ScarabDivinationCards4") --�}���x��չ�����\
--SetGoodsCaoZuo(nil,"0|2","Metadata/Items/Scarabs/ScarabTorment1")--�}���x���n�g��ʹ
--SetGoodsCaoZuo(nil,"0|2","Metadata/Items/Scarabs/ScarabTorment2")--�}���x���A����ʹ
--SetGoodsCaoZuo(nil,"0|2","Metadata/Items/Scarabs/ScarabTorment3")--�}���x��僽��ʹ
--SetGoodsCaoZuo(nil,"0|2","Metadata/Items/Scarabs/ScarabTorment4")--�}���x��չ���ʹ
--SetGoodsCaoZuo(nil,"0|2","Metadata/Items/Scarabs/ScarabStrongbox1")--�}���x���n�g����
--SetGoodsCaoZuo(nil,"0|2","Metadata/Items/Scarabs/ScarabStrongbox2")--�}���x���A������
--SetGoodsCaoZuo(nil,"0|2","Metadata/Items/Scarabs/ScarabStrongbox3")--�}���x��僽����
--SetGoodsCaoZuo(nil,"0|2","Metadata/Items/Scarabs/ScarabStrongbox4")--�}���x��չ�����
--SetGoodsCaoZuo(nil,"0|2","Metadata/Items/Scarabs/ScarabPerandus1")--�}���x���n�g���m��˹
--SetGoodsCaoZuo(nil,"0|2","Metadata/Items/Scarabs/ScarabPerandus2")--�}���x���A�����m��˹
--SetGoodsCaoZuo(nil,"0|2","Metadata/Items/Scarabs/ScarabPerandus3")--�}���x��僽����m��˹
--SetGoodsCaoZuo(nil,"0|2","Metadata/Items/Scarabs/ScarabPerandus4")--�}���x��չ�����m��˹
--SetGoodsCaoZuo(nil,"0|2","Metadata/Items/Scarabs/ScarabMetamorph1")--�}���x���n�g�ħ
--SetGoodsCaoZuo(nil,"0|2","Metadata/Items/Scarabs/ScarabMetamorph2")--�}���x���A���ħ
--SetGoodsCaoZuo(nil,"0|2","Metadata/Items/Scarabs/ScarabMetamorph3")--�}���x��僽��ħ
--SetGoodsCaoZuo(nil,"0|2","Metadata/Items/Scarabs/ScarabMetamorph4")--�}���x��չ���ħ
--SetGoodsCaoZuo(nil,"0|2","Metadata/Items/Scarabs/ScarabAbyss1")--�}���x���n�g��Y
--SetGoodsCaoZuo(nil,"0|2","Metadata/Items/Scarabs/ScarabAbyss2")--�}���x���A����Y
--SetGoodsCaoZuo(nil,"0|2","Metadata/Items/Scarabs/ScarabAbyss3")--�}���x��僽���Y
--SetGoodsCaoZuo(nil,"0|2","Metadata/Items/Scarabs/ScarabAbyss4")--�}���x��չ����Y
--���}���x�������顸1�����
--����
--SetSaveIndex(nil,"1","Metadata/Items/Scarabs/ScarabLegion1")--�}���x���n�g���y
--SetSaveIndex(nil,"1","Metadata/Items/Scarabs/ScarabLegion2")--�}���x���A�����y
--SetSaveIndex(nil,"1","Metadata/Items/Scarabs/ScarabLegion3")--�}���x��僽���y
--SetSaveIndex(nil,"1","Metadata/Items/Scarabs/ScarabLegion4")--�}���x��չ����y
--SetSaveIndex(nil,"1","Metadata/Items/Scarabs/ScarabHarbinger1")--�}���x���n�g���I
--SetSaveIndex(nil,"1","Metadata/Items/Scarabs/ScarabHarbinger2")--�}���x���A�����I
--SetSaveIndex(nil,"1","Metadata/Items/Scarabs/ScarabHarbinger3")--�}���x��僽����I
--SetSaveIndex(nil,"1","Metadata/Items/Scarabs/ScarabHarbinger4")--�}���x��չ�����I
--SetSaveIndex(nil,"1","Metadata/Items/Scarabs/ScarabBlight1")--�}���x���n�g����
--SetSaveIndex(nil,"1","Metadata/Items/Scarabs/ScarabBlight2")--�}���x���A������
--SetSaveIndex(nil,"1","Metadata/Items/Scarabs/ScarabBlight3")--�}���x��僽����
--SetSaveIndex(nil,"1","Metadata/Items/Scarabs/ScarabBlight4")--�}���x��չ�����
--SetSaveIndex(nil,"1","Metadata/Items/Scarabs/ScarabSulphite1")--�}���x���n�g����
--SetSaveIndex(nil,"1","Metadata/Items/Scarabs/ScarabSulphite2")--�}���x���A������
--SetSaveIndex(nil,"1","Metadata/Items/Scarabs/ScarabSulphite3")--�}���x��僽�����
--SetSaveIndex(nil,"1","Metadata/Items/Scarabs/ScarabSulphite4")--�}���x��չ������
--SetSaveIndex(nil,"1","Metadata/Items/Scarabs/ScarabBreach1")--�}���x���n�g�Ѻ�
--SetSaveIndex(nil,"1","Metadata/Items/Scarabs/ScarabBreach2")--�}���x���A���Ѻ�
--SetSaveIndex(nil,"1","Metadata/Items/Scarabs/ScarabBreach3")--�}���x��僽��Ѻ�
--SetSaveIndex(nil,"1","Metadata/Items/Scarabs/ScarabBreach4")--�}���x��չ���Ѻ�
--SetSaveIndex(nil,"1","Metadata/Items/Scarabs/ScarabMaps1")--�}���x���n�g�u�D
--SetSaveIndex(nil,"1","Metadata/Items/Scarabs/ScarabMaps2")--�}���x���A���u�D
--SetSaveIndex(nil,"1","Metadata/Items/Scarabs/ScarabMaps3")--�}���x��僽��u�D
--SetSaveIndex(nil,"1","Metadata/Items/Scarabs/ScarabMaps4")--�}���x��չ���u�D
--SetSaveIndex(nil,"1","Metadata/Items/Scarabs/ScarabUniques1")--�}���x���n�g�}��
--SetSaveIndex(nil,"1","Metadata/Items/Scarabs/ScarabUniques2")--�}���x���A���}��
--SetSaveIndex(nil,"1","Metadata/Items/Scarabs/ScarabUniques3")--�}���x��僽��}��
--SetSaveIndex(nil,"1","Metadata/Items/Scarabs/ScarabUniques4")--�}���x��չ���}��
--SetSaveIndex(nil,"1","Metadata/Items/Scarabs/ScarabBeasts1")--�}���x���n�g�F�C
--SetSaveIndex(nil,"1","Metadata/Items/Scarabs/ScarabBeasts2")--�}���x���A���F�C
--SetSaveIndex(nil,"1","Metadata/Items/Scarabs/ScarabBeasts3")--�}���x��僽�F�C
--SetSaveIndex(nil,"1","Metadata/Items/Scarabs/ScarabBeasts4")--�}���x��չ��F�C
--SetSaveIndex(nil,"1","Metadata/Items/Scarabs/ScarabShaperRares1")--�}���x���n�g����
--SetSaveIndex(nil,"1","Metadata/Items/Scarabs/ScarabShaperRares2")--�}���x���A������
--SetSaveIndex(nil,"1","Metadata/Items/Scarabs/ScarabShaperRares3")--�}���x��僽�����
--SetSaveIndex(nil,"1","Metadata/Items/Scarabs/ScarabShaperRares4")--�}���x��չ������
--SetSaveIndex(nil,"1","Metadata/Items/Scarabs/ScarabElderRares1")--�}���x���n�g����
--SetSaveIndex(nil,"1","Metadata/Items/Scarabs/ScarabElderRares2")--�}���x���A������
--SetSaveIndex(nil,"1","Metadata/Items/Scarabs/ScarabElderRares3")--�}���x��僽�����
--SetSaveIndex(nil,"1","Metadata/Items/Scarabs/ScarabElderRares4")--�}���x��չ������
--SetSaveIndex(nil,"1","Metadata/Items/Scarabs/ScarabDivinationCards1")--�}���x���n�g���\
--SetSaveIndex(nil,"1","Metadata/Items/Scarabs/ScarabDivinationCards2")--�}���x���A�����\
--SetSaveIndex(nil,"1","Metadata/Items/Scarabs/ScarabDivinationCards3")--�}���x��僽����\
--SetSaveIndex(nil,"1","Metadata/Items/Scarabs/ScarabDivinationCards4") --�}���x��չ�����\
--SetSaveIndex(nil,"1","Metadata/Items/Scarabs/ScarabTorment1")--�}���x���n�g��ʹ
--SetSaveIndex(nil,"1","Metadata/Items/Scarabs/ScarabTorment2")--�}���x���A����ʹ
--SetSaveIndex(nil,"1","Metadata/Items/Scarabs/ScarabTorment3")--�}���x��僽��ʹ
--SetSaveIndex(nil,"1","Metadata/Items/Scarabs/ScarabTorment4")--�}���x��չ���ʹ
--SetSaveIndex(nil,"1","Metadata/Items/Scarabs/ScarabStrongbox1")--�}���x���n�g����
--SetSaveIndex(nil,"1","Metadata/Items/Scarabs/ScarabStrongbox2")--�}���x���A������
--SetSaveIndex(nil,"1","Metadata/Items/Scarabs/ScarabStrongbox3")--�}���x��僽����
--SetSaveIndex(nil,"1","Metadata/Items/Scarabs/ScarabStrongbox4")--�}���x��չ�����
--SetSaveIndex(nil,"1","Metadata/Items/Scarabs/ScarabPerandus1")--�}���x���n�g���m��˹
--SetSaveIndex(nil,"1","Metadata/Items/Scarabs/ScarabPerandus2")--�}���x���A�����m��˹
--SetSaveIndex(nil,"1","Metadata/Items/Scarabs/ScarabPerandus3")--�}���x��僽����m��˹
--SetSaveIndex(nil,"1","Metadata/Items/Scarabs/ScarabPerandus4")--�}���x��չ�����m��˹
--SetSaveIndex(nil,"1","Metadata/Items/Scarabs/ScarabMetamorph1")--�}���x���n�g�ħ
--SetSaveIndex(nil,"1","Metadata/Items/Scarabs/ScarabMetamorph2")--�}���x���A���ħ
--SetSaveIndex(nil,"1","Metadata/Items/Scarabs/ScarabMetamorph3")--�}���x��僽��ħ
--SetSaveIndex(nil,"1","Metadata/Items/Scarabs/ScarabMetamorph4")--�}���x��չ���ħ
--SetSaveIndex(nil,"1","Metadata/Items/Scarabs/ScarabAbyss1")--�}���x���n�g��Y
--SetSaveIndex(nil,"1","Metadata/Items/Scarabs/ScarabAbyss2")--�}���x���A����Y
--SetSaveIndex(nil,"1","Metadata/Items/Scarabs/ScarabAbyss3")--�}���x��僽���Y
--SetSaveIndex(nil,"1","Metadata/Items/Scarabs/ScarabAbyss4")--�}���x��չ����Y


--հ����^
--��ȡ�d����
--����
--SetGoodsCaoZuo(nil,"0|2","����֮�d����","Metadata/Items/Currency/CurrencyAfflictionOrbCurrency")
--SetGoodsCaoZuo(nil,"0|2","׿Խ֮�d����","Metadata/Items/Currency/CurrencyAfflictionOrbUniques")
--SetGoodsCaoZuo(nil,"0|2","���g֮�d����","Metadata/Items/Currency/CurrencyAfflictionOrbGems")
--SetGoodsCaoZuo(nil,"0|2","�F��֮�d����","Metadata/Items/Currency/CurrencyAfflictionOrbWeapons")
--SetGoodsCaoZuo(nil,"0|2","�o��֮�d����","Metadata/Items/Currency/CurrencyAfflictionOrbArmour")
--SetGoodsCaoZuo(nil,"0|2","�u�D֮�d����","Metadata/Items/Currency/CurrencyAfflictionOrbMaps")
--SetGoodsCaoZuo(nil,"0|2","�Ʒ֮�d����","Metadata/Items/Currency/CurrencyAfflictionOrbTrinkets")
--SetGoodsCaoZuo(nil,"0|2","��Y֮�d����","Metadata/Items/Currency/CurrencyAfflictionOrbAbyss")
--SetGoodsCaoZuo(nil,"0|2","������֮�d����","Metadata/Items/Currency/CurrencyAfflictionOrbPerandus")
--SetGoodsCaoZuo(nil,"0|2","�A��֮�d����","Metadata/Items/Currency/CurrencyAfflictionOrbHarbinger")
--SetGoodsCaoZuo(nil,"0|2","�ޝ�֮�d����","Metadata/Items/Currency/CurrencyAfflictionOrbBreach")
--SetGoodsCaoZuo(nil,"0|2","���Z֮�d����","Metadata/Items/Currency/CurrencyAfflictionOrbEssences")
--SetGoodsCaoZuo(nil,"0|2","��Ƭ֮�d����","Metadata/Items/Currency/CurrencyAfflictionOrbFragments")
--SetGoodsCaoZuo(nil,"0|2","�w��֮�d����","Metadata/Items/Currency/CurrencyAfflictionOrbCurrency")
--SetGoodsCaoZuo(nil,"0|2","ʯ��֮�d����","Metadata/Items/Currency/CurrencyAfflictionOrbFossils")
--SetGoodsCaoZuo(nil,"0|2","�}��֮�d����","Metadata/Items/Currency/CurrencyAfflictionOrbDivinationCards")
--SetGoodsCaoZuo(nil,"0|2","�d����","Metadata/Items/Currency/CurrencyAfflictionOrbGeneric")
--SetGoodsCaoZuo(nil,"0|2","��ʼ֮�d����","Metadata/Items/Currency/CurrencyAfflictionOrbTalismans")
--SetGoodsCaoZuo(nil,"0|2","����֮�d����","Metadata/Items/Currency/CurrencyAfflictionOrbLabyrinth")
--SetGoodsCaoZuo(nil,"0|2","���a֮�d����","Metadata/Items/Currency/CurrencyAfflictionOrbIncubators")
--SetGoodsCaoZuo(nil,"0|2","����֮�d����","Metadata/Items/Currency/CurrencyAfflictionOrbBlight")
--SetGoodsCaoZuo(nil,"0|2","׃�B֮�d����","Metadata/Items/Currency/CurrencyAfflictionOrbMetamorphosis")
--���d����������顸4�����
--SetGoodsCaoZuo(nil,"4","����֮�d����","Metadata/Items/Currency/CurrencyAfflictionOrbCurrency")
--SetGoodsCaoZuo(nil,"4","׿Խ֮�d����","Metadata/Items/Currency/CurrencyAfflictionOrbUniques")
--SetGoodsCaoZuo(nil,"4","���g֮�d����","Metadata/Items/Currency/CurrencyAfflictionOrbGems")
--SetGoodsCaoZuo(nil,"4","�F��֮�d����","Metadata/Items/Currency/CurrencyAfflictionOrbWeapons")
--SetGoodsCaoZuo(nil,"4","�o��֮�d����","Metadata/Items/Currency/CurrencyAfflictionOrbArmour")
--SetGoodsCaoZuo(nil,"4","�u�D֮�d����","Metadata/Items/Currency/CurrencyAfflictionOrbMaps")
--SetGoodsCaoZuo(nil,"4","�Ʒ֮�d����","Metadata/Items/Currency/CurrencyAfflictionOrbTrinkets")
--SetGoodsCaoZuo(nil,"4","��Y֮�d����","Metadata/Items/Currency/CurrencyAfflictionOrbAbyss")
--SetGoodsCaoZuo(nil,"4","������֮�d����","Metadata/Items/Currency/CurrencyAfflictionOrbPerandus")
--SetGoodsCaoZuo(nil,"4","�A��֮�d����","Metadata/Items/Currency/CurrencyAfflictionOrbHarbinger")
--SetGoodsCaoZuo(nil,"4","�ޝ�֮�d����","Metadata/Items/Currency/CurrencyAfflictionOrbBreach")
--SetGoodsCaoZuo(nil,"4","���Z֮�d����","Metadata/Items/Currency/CurrencyAfflictionOrbEssences")
--SetGoodsCaoZuo(nil,"4","��Ƭ֮�d����","Metadata/Items/Currency/CurrencyAfflictionOrbFragments")
--SetGoodsCaoZuo(nil,"4","�w��֮�d����","Metadata/Items/Currency/CurrencyAfflictionOrbCurrency")
--SetGoodsCaoZuo(nil,"4","ʯ��֮�d����","Metadata/Items/Currency/CurrencyAfflictionOrbFossils")
--SetGoodsCaoZuo(nil,"4","�}��֮�d����","Metadata/Items/Currency/CurrencyAfflictionOrbDivinationCards")
--SetGoodsCaoZuo(nil,"4","�d����","Metadata/Items/Currency/CurrencyAfflictionOrbGeneric")
--SetGoodsCaoZuo(nil,"4","��ʼ֮�d����","Metadata/Items/Currency/CurrencyAfflictionOrbTalismans")
--SetGoodsCaoZuo(nil,"4","����֮�d����","Metadata/Items/Currency/CurrencyAfflictionOrbLabyrinth")
--SetGoodsCaoZuo(nil,"4","���a֮�d����","Metadata/Items/Currency/CurrencyAfflictionOrbIncubators")
--SetGoodsCaoZuo(nil,"4","����֮�d����","Metadata/Items/Currency/CurrencyAfflictionOrbBlight")
--SetGoodsCaoZuo(nil,"4","׃�B֮�d����","Metadata/Items/Currency/CurrencyAfflictionOrbMetamorphosis")



--�߻����^
--��ȡ�߻���
--����
--SetGoodsCaoZuo(nil,"0|2","���ܵĴ߻���","Metadata/Items/Currency/CurrencyJewelleryQualityCaster")
--SetGoodsCaoZuo(nil,"0|2","�����Ĵ߻���","Metadata/Items/Currency/CurrencyJewelleryQualityElemental")
--SetGoodsCaoZuo(nil,"0|2","ұ倵Ĵ߻���","Metadata/Items/Currency/CurrencyJewelleryQualityDefense")
--SetGoodsCaoZuo(nil,"0|2","���|�Ĵ߻���","Metadata/Items/Currency/CurrencyJewelleryQualityAttribute")
--SetGoodsCaoZuo(nil,"0|2","��ĥ�Ĵ߻���","Metadata/Items/Currency/CurrencyJewelleryQualityAttack")
--SetGoodsCaoZuo(nil,"0|2","�����Ĵ߻���","Metadata/Items/Currency/CurrencyJewelleryQualityResource")
--SetGoodsCaoZuo(nil,"0|2","�ච�Ĵ߻���","Metadata/Items/Currency/CurrencyJewelleryQualityResistance")
--SetGoodsCaoZuo(nil,"0|2","��׃�Ĵ߻���","Metadata/Items/Currency/CurrencyJewelleryQualityCritical")
--SetGoodsCaoZuo(nil,"0|2","���ԵĴ߻���","Metadata/Items/Currency/CurrencyJewelleryQualityPhysicalChaos")
--SetGoodsCaoZuo(nil,"0|2","���ٵĴ߻���","Metadata/Items/Currency/CurrencyJewelleryQualitySpeed")
--���߻����������顸�s������ 
--����
--SetSaveIndex(nil,"�s��","���ܵĴ߻���","Metadata/Items/Currency/CurrencyJewelleryQualityCaster",nil,nil,nil,nil)
--SetSaveIndex(nil,"�s��","�����Ĵ߻���","Metadata/Items/Currency/CurrencyJewelleryQualityElemental",nil,nil,nil,nil)
--SetSaveIndex(nil,"�s��","ұ倵Ĵ߻���","Metadata/Items/Currency/CurrencyJewelleryQualityDefense",nil,nil,nil,nil)
--SetSaveIndex(nil,"�s��","���|�Ĵ߻���","Metadata/Items/Currency/CurrencyJewelleryQualityAttribute",nil,nil,nil,nil)
--SetSaveIndex(nil,"�s��","��ĥ�Ĵ߻���","Metadata/Items/Currency/CurrencyJewelleryQualityAttack",nil,nil,nil,nil)
--SetSaveIndex(nil,"�s��","�����Ĵ߻���","Metadata/Items/Currency/CurrencyJewelleryQualityResource",nil,nil,nil,nil)
--SetSaveIndex(nil,"�s��","�ච�Ĵ߻���","Metadata/Items/Currency/CurrencyJewelleryQualityResistance",nil,nil,nil,nil)
--SetSaveIndex(nil,"�s��","��׃�Ĵ߻���","Metadata/Items/Currency/CurrencyJewelleryQualityCritical",nil,nil,nil,nil)
--SetSaveIndex(nil,"�s��","���ԵĴ߻���","Metadata/Items/Currency/CurrencyJewelleryQualityPhysicalChaos",nil,nil,nil,nil)
--SetSaveIndex(nil,"�s��","���ٵĴ߻���","Metadata/Items/Currency/CurrencyJewelleryQualitySpeed",nil,nil,nil,nil)















--������������u��
SetGoodsCaoZuo(nil,"0|1|4",nil,nil,nil,nil,nil,nil,"3")
--�������ʰȡ����ȡ����顸4��
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







------------------��C��O��
g_yijieNoWhiteMonster=false		--���ʱ�Ƿ񲻴�׹� trueΪ���� nil��falseΪ��
g_yijieNoWhiteBox=true		--���ʱ�Ƿ񲻿������� trueΪ���� nil��falseΪ��
g_useYiJieWanChengDuLv=75	--ʹ�����������ɶ��Ǹ����õĵȼ������δ������ˢȫͼ
g_yiJieWanChengDu=0.8		--�����ɶ� ��ɶ��پͻ�ȥ Ϊ1��1���µ�С��
g_yongHengShiBeiLv=90		--���ڵ��ڶ��ټ�������ʯ�� 
g_needTaFangLv=90			--���ڵ��ڶ��ټ�������
g_needLianMoLv=90			--���ڵ��ڶ��ټ�����ħ
g_attackFreezeMonsterLv=90	--���ڵ��ڶ��ټ��������
g_needChuanYueLv=100			--���ڵ��ڶ��ټ���Խ��
g_needLieXiLv=90			--��춵��ڶ��ټ���ʱ���ѷ��
g_needMiWuLv=90				--���ڵ��ڶ��ټ�������
g_needZaFenLv=90           --���ڵ��ڶ��ټ���ը��


g_youXianMapLv= 85
SetYiJieShuaTuModeByMapCnt(60,nil,2)--�ֿ��е�ͼ������20 ������ˢ ֱͨboss
SetYiJieShuaTuModeByMapCnt(20,0.6,0)--�ֿ��е�ͼ������10 ˢ6�� ��Ҫ����BOSS
-- SetYiJieShuaTuModeByMapCnt(0,1,nil)--�ֿ��е�ͼ������0 ˢȫͼ


--���^�V������ĈD����ʽ����:
-- SetNoUseMapShuXing(className)--���ò�ʹ�ô���ĳ�����Եĵ�ͼ,���� classNameΪ��������
SetNoUseMapShuXing("map_monsters_reflect_%_physical_damage")--���ò�������������
SetNoUseMapShuXing("map_monsters_reflect_%_elemental_damage")--���ò���ħ����������
SetNoUseMapShuXing("map_players_no_regeneration_including_es")--�޷��ظ�

--�؈D��

SetNotMapGoMap("2_9_1",1)	--�]�ЈD��ˢˮ�������O��һ�ٴΣ�Ҫ�O���״ο�����

g_yiJieLv=69				--�׵Ȳ�ˢ�D���Ҷ��O��75��
g_checkSellMapCnt=80		--�؈D���^�׏��_ʼ�u�D
g_destroyNoUseMap=true		--�N����ʹ�õĵ؈D������Ԫ���ﷴ
g_mapUseFuHaoLv=nil		--���ڵ��ڶ��ټ�����ͼʹ�ø���ʯ nilΪ��Զ��ʹ��
g_mapUseZengFuLv=70			--���ڵ��ڶ��ټ�����ͼʹ������ʯ nilΪ��Զ��ʹ��
g_mapUseDianJingLv=70		--���ڵ��ڶ��ټ��԰�ͼʹ�õ��ʯ nilΪ��Զ��ʹ��
g_mapUseTuiBianLv=nil		--���ڵ��ڶ��ټ��԰�ͼʹ���ɱ�ʯ nilΪ��Զ��ʹ��
g_mapUseJiHuiLv=nil			--���ڵ��ڶ��ټ��԰�ͼʹ�û���ʯ nilΪ��Զ��ʹ��
g_mapUseWaErLv=nil			--���ڵ��ڶ��ټ��԰ס�����ͼʹ���߶����� nilΪ��Զ��ʹ��
g_mapUseDingZiLv=16			--���ڵ��ڶ��ټ�ʹ����ͼ�� nilΪ��Զ��ʹ��
g_noUseMapLv=nil			--��ʹ�á�������ٽ׼����ϵĵ�ͼ nil��0Ϊ���� �������ȵĵ�ͼ���� (������D�Ŀ��@߅!!!)

g_mapUseOrangeMap=false		--�������D

--SetYouXianUseMapData(name,className,color)--��������ʹ�õ�����ͼ 
--name �ַ����� ��ͼ�� 
--className �ַ����� ��ͼ���� 
--color �ַ����� ��ɫ 0��1��2��3�� �м���|����
--SetYouXianUseMapData("Σ�ǏV��","Metadata/Items/Maps/MapWorldsCitySquare","0|1|2")
--SetYouXianUseMapData("�p�t���","Metadata/Items/Maps/MapWorldsCrimsonTemple","0|1|2")
SetYouXianUseMapData("�����L��","Metadata/Items/Maps/MapWorldsArcade","0|1|2")
SetYouXianUseMapData("Σ����Ū","Metadata/Items/Maps/MapWorldsAlleyways","0|1|2")
SetYouXianUseMapData("ƽ����Į","Metadata/Items/Maps/MapWorldsMesa","0|1|2")
SetYouXianUseMapData("����Ĺ��","Metadata/Items/Maps/MapWorldsCemetery","0|2")
SetYouXianUseMapData("��ӰĹ��","Metadata/Items/Maps/MapWorldsGraveyard","0|2")
SetYouXianUseMapData("������Ĺ","Metadata/Items/Maps/MapWorldsCursedCrypt","0|2")
SetYouXianUseMapData("��ɳ���^","Metadata/Items/Maps/MapWorldsBeach","0|1|2")
SetYouXianUseMapData("�ě���Ұ","Metadata/Items/Maps/MapAtlasSulphurWastes","0|1|2")
SetYouXianUseMapData("�����ֹ�","Metadata/Items/Maps/MapWorldsJungleValley","0|1|2")
SetYouXianUseMapData("܊е��","Metadata/Items/Maps/MapWorldsArmoury","0|2")
SetYouXianUseMapData("�����Ҟ�","Metadata/Items/Maps/MapWorldsStrand","0|2")
SetYouXianUseMapData("Ǭ���ֵ�","Metadata/Items/Maps/MapWorldsPeninsula","0|2")
SetYouXianUseMapData("�b����","Metadata/Items/Maps/MapWorldsCage","0|2")
SetYouXianUseMapData("����ɽ��","Metadata/Items/Maps/MapWorldsGorge","0|2")
SetYouXianUseMapData("�����תz","Metadata/Items/Maps/MapWorldsDungeon","0|2")
SetYouXianUseMapData("�Oԭ��ñ","Metadata/Items/Maps/MapWorldsIceberg","0|2")
SetYouXianUseMapData("��������","Metadata/Items/Maps/MapWorldsWharf","0|2")
SetYouXianUseMapData("�ھ��","Metadata/Items/Maps/MapAtlasExcavation","0|2")
SetYouXianUseMapData("�I����Ѩ","Metadata/Items/Maps/MapWorldsUndergroundSea","0|2")
SetYouXianUseMapData("��ľ�ֵ�","Metadata/Items/Maps/MapWorldsAshenWood","0|2")
SetYouXianUseMapData("ؚ�֮��","Metadata/Items/Maps/MapWorldsDesert","0|2")
SetYouXianUseMapData("���E��Ĺ","Metadata/Items/Maps/MapWorldsBoneCrypt","0|2")
SetYouXianUseMapData("�ű����S","Metadata/Items/Maps/MapWorldsArsenal","0|2")
SetYouXianUseMapData("�ĵ�","Metadata/Items/Maps/MapWorldsWasteland","0|2")
SetYouXianUseMapData("���g֮ͥ","Metadata/Items/Maps/MapTier13_2","0|1|2")
SetYouXianUseMapData("�h���м�","Metadata/Items/Maps/MapWorldsBazaar","0|2")
SetYouXianUseMapData("ĺ�⺣��","Metadata/Items/Maps/MapWorldsShore","0|2")
SetYouXianUseMapData("�@��Է","Metadata/Items/Maps/MapWorldsPark","0|2")
SetYouXianUseMapData("�@�֘䅲","Metadata/Items/Maps/MapWorldsThicket","0|2")
SetYouXianUseMapData("����ħ��","Metadata/Items/Maps/MapWorldsSprings","0|2")
SetYouXianUseMapData("����Ĺ��","Metadata/Items/Maps/MapWorldsCemetery","0|2")
SetYouXianUseMapData("�xꎪz��","Metadata/Items/Maps/MapWorldsPen","0|2")
SetYouXianUseMapData("�Ļ�լۡ","Metadata/Items/Maps/MapWorldsHauntedMansion","0|2")
SetYouXianUseMapData("����Ĺ�V","Metadata/Items/Maps/MapWorldsArachnidTomb","0|2")
SetYouXianUseMapData("���։VĹ","Metadata/Items/Maps/MapWorldsBarrows","0|2")
SetYouXianUseMapData("������","Metadata/Items/Maps/MapWorldsLaboratory","0|2")
SetYouXianUseMapData("�o����Ұ","Metadata/Items/Maps/MapWorldsFields","0|2")
SetYouXianUseMapData("��������","Metadata/Items/Maps/MapTier9_4","0|2")
SetYouXianUseMapData("�o�O��Ĺ","Metadata/Items/Maps/MapAtlasResidence","0|2")
SetYouXianUseMapData("��ɽ����","Metadata/Items/Maps/MapAtlasVolcano","0|2")
SetYouXianUseMapData("���L�{��","Metadata/Items/Maps/MapWorldsCoves","0|2")
SetYouXianUseMapData("ħ�`�êz","Metadata/Items/Maps/MapWorldsPhantasmagoria","0|2")

--�Q�D
SetSellGoodsData("�ھ��","Metadata/Items/Maps/MapWorldsExcavation",3,"0|1|2")
SetSellGoodsData("�^������","Metadata/Items/Maps/MapWorldsLighthouse",3,"0|1|2")
SetSellGoodsData("��犘�","Metadata/Items/Maps/MapWorldsBelfry",3,"0|1|2")
SetSellGoodsData("�����ӵ�","Metadata/Items/Maps/MapWorldsMarshes",3,"0|1|2")
SetSellGoodsData("ĹӰ����","Metadata/Items/Maps/MapWorldsScriptorium",3,"0|1|2")
SetSellGoodsData("����ˮ��","Metadata/Items/Maps/MapWorldsStagnation",3,"0|1|2")
SetSellGoodsData("�o����Ұ","Metadata/Items/Maps/MapWorldsFields",3,"0|1|2")
SetSellGoodsData("Σ����Ū","Metadata/Items/Maps/MapWorldsAlleyways",3,"0|1|2")
SetSellGoodsData("�Ⱦ����","Metadata/Items/Maps/MapWorldsMoonTemple",3,"0|1|2")
SetSellGoodsData("���","Metadata/Items/Maps/MapWorldsForkingRiver",3,"0|1|2")
SetSellGoodsData("�z�E�U��","Metadata/Items/Maps/MapWorldsCastleRuins",3,"0|1|2")
SetSellGoodsData("�����Ҟ�","Metadata/Items/Maps/MapWorldsStrand",3,"0|1|2")
SetSellGoodsData("�ҝ{�ۺ�","Metadata/Items/Maps/MapWorldsLavaLake",3,"0|1|2")
SetSellGoodsData("¶̨���@","Metadata/Items/Maps/MapWorldsTerrace",3,"0|1|2")
SetSellGoodsData("�o�O��Ĺ","Metadata/Items/Maps/MapWorldsMausoleum",3,"0|1|2")
SetSellGoodsData("����֮��","Metadata/Items/Maps/MapWorldsPalace",3,"0|1|2")
SetSellGoodsData("�L���z�E","Metadata/Items/Maps/MapWorldsOvergrownRuin",3,"0|1|2")
SetSellGoodsData("Զ���м�","Metadata/Items/Maps/MapWorldsBazaar",3,"0|1|2")
SetSellGoodsData("������Ѩ","Metadata/Items/Maps/MapWorldsUndergroundSea",3,"0|1|2")
SetSellGoodsData("ƽ����Į","Metadata/Items/Maps/MapWorldsMesa",3,"0|1|2")
SetSellGoodsData("����֮��","Metadata/Items/Maps/MapWorldsPalace",3,"0|1|2")
SetSellGoodsData("���ֿ��","Metadata/Items/Maps/MapWorldsFloodedMine",3,"0|1|2")
SetSellGoodsData("���","Metadata/Items/Maps/MapWorldsForkingRiver",3,"0|1|2")
SetSellGoodsData("����","Metadata/Items/Maps/MapWorldsColdRiver",3,"0|1|2")
SetSellGoodsData("���볲Ѩ","Metadata/Items/Maps/MapWorldsArachnidNest",3,"0|1|2")
SetSellGoodsData("�����๵","Metadata/Items/Maps/MapWorldsWastePool",3,"0|1|2")
SetSellGoodsData("�����ص�","Metadata/Items/Maps/MapWorldsShrine",3,"0|1|2")
SetSellGoodsData("ʥ��","Metadata/Items/Maps/MapWorldsBasilica",3,"0|1|2")
SetSellGoodsData("����֮ͥ","Metadata/Items/Maps/MapWorldsCourtyard",3,"0|1|2")
SetSellGoodsData("ĺ�⺣̲","Metadata/Items/Maps/MapWorldsShore",3,"0|1|2")
SetSellGoodsData("��ɫޒ��","Metadata/Items/Maps/MapWorldsPromenade",3,"0|1|2")
SetSellGoodsData("����Ͽ��","Metadata/Items/Maps/MapWorldsCoves",3,"0|1|2")
SetSellGoodsData("��ɳ̲ͷ","Metadata/Items/Maps/MapWorldsBeach",3,"0|1|2")
SetSellGoodsData("������ˮ��","Metadata/Items/Maps/MapWorldsToxicSewer",3,"0|1|2")
SetSellGoodsData("����֮��","Metadata/Items/Maps/MapWorldsLavaChamber",3,"0|1|2")
SetSellGoodsData("濾����","Metadata/Items/Maps/MapWorldsMoonTemple",3,"0|1|2")
SetSellGoodsData("�ۻ���̲","Metadata/Items/Maps/MapWorldsEstuary",3,"0|1|2")
SetSellGoodsData("�������","Metadata/Items/Maps/MapWorldsColosseum",3,"0|1|2")
SetSellGoodsData("������Ĺ","Metadata/Items/Maps/MapWorldsMausoleum",3,"0|1|2")
SetSellGoodsData("��������","Metadata/Items/Maps/MapWorldsThicket",3,"0|1|2")
SetSellGoodsData("ħӰĹ��","Metadata/Items/Maps/MapWorldsNecropolis",3,"0|1|2")
SetSellGoodsData("�������","Metadata/Items/Maps/MapWorldsTower",3,"0|1|2")
SetSellGoodsData("���֮��","Metadata/Items/Maps/MapWorldsTemple",3,"0|1|2")
SetSellGoodsData("��ƶ����","Metadata/Items/Maps/MapWorldsGhetto",3,"0|1|2")
SetSellGoodsData("�������","Metadata/Items/Maps/MapWorldsMuseum",3,"0|1|2")
SetSellGoodsData("�Ų����^","Metadata/Items/Maps/MapWorldsCage",3,"0|1|2")
SetSellGoodsData("ʧ��ǉ]","Metadata/Items/Maps/MapWorldsPort",3,"0|1|2")
SetSellGoodsData("ħ�`�êz","Metadata/Items/Maps/MapWorldsPhantasmagoria",3,"0|1|2")
SetSellGoodsData("���E��Ĺ","Metadata/Items/Maps/MapWorldsBoneCrypt",3,"0|1|2")
SetSellGoodsData("ꎰ�Ĺ�V","Metadata/Items/Maps/MapWorldsSepulchre",3,"0|1|2")
SetSellGoodsData("���L��ԭ","Metadata/Items/Maps/MapWorldsPlateau",3,"0|1|2")
SetSellGoodsData("��ɽ�׿�","Metadata/Items/Maps/MapWorldsCaldera",3,"0|1|2")
SetSellGoodsData("���L�{��","Metadata/Items/Maps/MapWorldsCoves",3,"0|1|2")
SetSellGoodsData("���볲Ѩ","Metadata/Items/Maps/MapWorldsSpiderLair",3,"0|1|2")
SetSellGoodsData("ĺ�⺣��","Metadata/Items/Maps/MapWorldsShore",3,"0|1|2")
SetSellGoodsData("�I��ɽ��","Metadata/Items/Maps/MapWorldsAtoll",3,"0|1|2")
SetSellGoodsData("�ߠ�������","Metadata/Items/Maps/MapWorldsVaalPyramid",3,"0|1|2")
SetSellGoodsData("���볲Ѩ","Metadata/Items/Maps/MapWorldsArachnidNest",3,"0|1|2")
SetSellGoodsData("���鱤��","Metadata/Items/Maps/MapWorldsCoralRuins",3,"0|1|2")
SetSellGoodsData("��������","Metadata/Items/Maps/MapWorldsResidence",3,"0|1|2")
SetSellGoodsData("�o�O��Ĺ","Metadata/Items/Maps/MapWorldsMausoleum",3,"0|1|2")
SetSellGoodsData("�@�֘䅲","Metadata/Items/Maps/MapWorldsThicket",3,"0|1|2")
SetSellGoodsData("����}","Metadata/Items/Maps/MapWorldsSilo",3,"0|1|2")
SetSellGoodsData("���g�ص�","Metadata/Items/Maps/MapWorldsShrine",3,"0|1|2")
SetSellGoodsData("���g֮ͥ","Metadata/Items/Maps/MapWorldsCourtyard",3,"0|1|2")
SetSellGoodsData("�Z��֮��","Metadata/Items/Maps/MapWorldsTemple",3,"0|1|2")
SetSellGoodsData("������","Metadata/Items/Maps/MapWorldsLaboratory",3,"0|1|2")
SetSellGoodsData("ŭ��֮��","Metadata/Items/Maps/MapWorldsPier",3,"0|1|2")
SetSellGoodsData("�Κ�����","Metadata/Items/Maps/MapWorldsBog",3,"0|1|2")
SetSellGoodsData("������Z","Metadata/Items/Maps/MapWorldsAcidLakes",3,"0|1|2")
SetSellGoodsData("�������","Metadata/Items/Maps/MapWorldsIvoryTemple",3,"0|1|2")
SetSellGoodsData("Ѫ���ӝ�","Metadata/Items/Maps/MapWorldsPrimordialPool",3,"0|1|2")
SetSellGoodsData("Ǭ��","Metadata/Items/Maps/MapWorldsDrySea",3,"0|1|2")
SetSellGoodsData("�����ֹ�","Metadata/Items/Maps/MapWorldsInfestedValley",3,"0|1|2")
SetSellGoodsData("Ѫ��ꇵ�","Metadata/Items/Maps/MapWorldsTortureChamber",3,"0|1|2")
SetSellGoodsData("���ֹ��@","Metadata/Items/Maps/MapWorldsOrchard",3,"0|1|2")
SetSellGoodsData("ĺɫɳ��","Metadata/Items/Maps/MapWorldsDunes",3,"0|1|2")
SetSellGoodsData("�I�F��Ѩ","Metadata/Items/Maps/MapWorldsLair",3,"0|1|2")
SetSellGoodsData("ĺɫɳ��","Metadata/Items/Maps/MapWorldsDunes",3,"0|1|2")

--SetSellGoodsData(name,className,cnt,color)--�Q�D�� (�Ϸ��O��Ҫ�Q�ŕ��Q����Ҫ���װV���})
--name=��Ʒ�� className=��Ʒ���� ��ʶ����Ʒ�� ʶ�𲻵���ʶ������ cnt=������ȥ�� color=��ɫ 0�� 1�� 2�� �����|����
----SetSellGoodsData("�����ֹ�","Metadata/Items/Maps/MapWorldsJungleValley",3,"0|1|2|")
----SetSellGoodsData("霪z����","Metadata/Items/Maps/MapAtlasTower",3,"0|1|2")
----SetSellGoodsData("ĺ�⺣��","Metadata/Items/Maps/MapAtlasShore",3,"0|1|2")
----SetSellGoodsData("����֮��","Metadata/Items/Maps/MapWorldsSpiderForest",6,"0|1|2")
----SetSellGoodsData("��ԭС��","Metadata/Items/Maps/MapWorldsFrozenCabins",3,"0|1|2|")
----SetSellGoodsData("���`�WԺ","Metadata/Items/Maps/MapAtlasAcademy",3,"0|1|2|")
----SetSellGoodsData("�Ļ�O��","Metadata/Items/Maps/MapWorldsCells",3,"0|1|2|")
----SetSellGoodsData("��ɫޒ��","Metadata/Items/Maps/MapWorldsPromenade",3,"0|1|2|")
----SetSellGoodsData("���g�ص�","Metadata/Items/Maps/MapWorldsShrine",3,"0|1|2|")
----SetSellGoodsData("Ԏ�H����","Metadata/Items/Maps/MapWorldsGeode",3,"0|1|2|")
----SetSellGoodsData("����֮��","Metadata/Items/Maps/MapAtlasPalace",3,"0|1|2|")
----SetSellGoodsData("Ѫ��ꇵ�","Metadata/Items/Maps/MapWorldsTortureChamber",3,"0|1|2|")
----SetSellGoodsData("�Ԍm���@","Metadata/Items/Maps/MapAtlasTerrace",3,"0|1|2|")
----SetSellGoodsData("�F�n���S","Metadata/Items/Maps/MapAtlasFactory",3,"0|1|2|")
----SetSellGoodsData("���","Metadata/Items/Maps/MapWorldsForkingRiver",3,"0|1|2|")
----SetSellGoodsData("�����ֹ�","Metadata/Items/Maps/MapWorldsInfestedValley",3,"0|1|2|")
----SetSellGoodsData("�I�F��Ѩ","Metadata/Items/Maps/MapAtlasLair",3,"0|1|2|")
----SetSellGoodsData("�ص�֮��","Metadata/Items/Maps/MapAtlasUndergroundRiver",3,"0|1|2|")
----SetSellGoodsData("���ƚ���","Metadata/Items/Maps/MapWorldsTribunal",3,"0|1|2|")
----SetSellGoodsData("�İ���Ѩ","Metadata/Items/Maps/MapAtlasGrotto",3,"0|1|2|")
----SetSellGoodsData("����ču","Metadata/Items/Maps/MapAtlasTropicalIsland",3,"0|1|2|")
----SetSellGoodsData("�^������","Metadata/Items/Maps/MapWorldsLighthouse",3,"0|1|2|")
----SetSellGoodsData("���g֮ͥ","Metadata/Items/Maps/MapTier13_2",6,"0|1|2")
----SetSellGoodsData("��������","Metadata/Items/Maps/MapWorldsWharf",3,"0|1|2|")
----SetSellGoodsData("ŭ��֮��","Metadata/Items/Maps/MapWorldsPier",3,"0|1|2|")
----SetSellGoodsData("��ɳ���^","Metadata/Items/Maps/MapWorldsBeach",3,"0|1|2|")
----SetSellGoodsData("�ě���Ұ","Metadata/Items/Maps/MapAtlasSulphurWastes",3,"0|1|2|")
----SetSellGoodsData("��Ӱ�e��","Metadata/Items/Maps/MapWorldsVilla",3,"0|1|2|")
----SetSellGoodsData("���ֹ��@","Metadata/Items/Maps/MapWorldsOrchard",3,"0|1|2|")
----SetSellGoodsData("������Ĺ","Metadata/Items/Maps/MapWorldsCursedCrypt",9,"0|1|2|")
----SetSellGoodsData("܊е��","Metadata/Items/Maps/MapWorldsArmoury",3,"0|1|2|")
----SetSellGoodsData("������","Metadata/Items/Maps/MapWorldsLaboratory",3,"0|1|2|")
----SetSellGoodsData("�I������","Metadata/Items/Maps/MapWorldsRamparts",3,"0|1|2|")
----SetSellGoodsData("�I����Ѩ","Metadata/Items/Maps/MapWorldsUndergroundSea",9,"0|1|2|")
----SetSellGoodsData("��ľ�ֵ�","Metadata/Items/Maps/MapWorldsAshenWood",9,"0|1|2|")
----SetSellGoodsData("�o�O��Ĺ","Metadata/Items/Maps/MapWorldsMausoleum",3,"0|1|2|")
----SetSellGoodsData("�Ļ�լۡ","Metadata/Items/Maps/MapWorldsHauntedMansion",3,"0|1|2|")
----SetSellGoodsData("�o����Ұ","Metadata/Items/Maps/MapWorldsFields",3,"0|1|2|")
----SetSellGoodsData("����ɽ��","Metadata/Items/Maps/MapWorldsGorge",3,"0|1|2|")
----SetSellGoodsData("�����Ҟ�","Metadata/Items/Maps/MapWorldsStrand",9,"0|1|2|")
----SetSellGoodsData("Ǭ���ֵ�","Metadata/Items/Maps/MapWorldsPeninsula",3,"0|1|2|")
----SetSellGoodsData("����ħ��","Metadata/Items/Maps/MapWorldsSprings",9,"0|1|2|")
----SetSellGoodsData("ؚ�֮��","Metadata/Items/Maps/MapWorldsDesert",3,"0|1|2|")
----SetSellGoodsData("Σ����Ū","Metadata/Items/Maps/MapWorldsAlleyways",9,"0|1|2|")
----SetSellGoodsData("��ӰĹ��","Metadata/Items/Maps/MapWorldsGraveyard",9,"0|1|2|")
----SetSellGoodsData("�ű����S","Metadata/Items/Maps/MapWorldsArsenal",9,"0|1|2|")
----SetSellGoodsData("ƽ픻�Į","Metadata/Items/Maps/MapWorldsMesa",3,"0|1|2|")
----SetSellGoodsData("���L�{��","Metadata/Items/Maps/MapWorldsCoves",3,"0|1|2|")
----SetSellGoodsData("�Κ�����","Metadata/Items/Maps/MapWorldsBog",3,"0|1|2|")
----SetSellGoodsData("�ĵ�","Metadata/Items/Maps/MapWorldsWasteland",3,"0|1|2|")
----SetSellGoodsData("��犘�","Metadata/Items/Maps/MapWorldsBelfry",3,"0|1|2|")
----SetSellGoodsData("�Ų����^","Metadata/Items/Maps/MapWorldsMuseum",3,"0|1|2|")
----SetSellGoodsData("������","Metadata/Items/Maps/MapWorldsArena",3,"0|1|2|")
----SetSellGoodsData("����Ĺ��","Metadata/Items/Maps/MapWorldsCemetery",3,"0|1|2|")
----SetSellGoodsData("ħ������","Metadata/Items/Maps/MapWorldsVault",3,"0|1|2|")
----SetSellGoodsData("Σ�Cˮ��","Metadata/Items/Maps/MapWorldsWaterways",3,"0|1|2|")
----SetSellGoodsData("�Ⱦ����","Metadata/Items/Maps/MapWorldsMoonTemple",3,"0|1|2|")
----SetSellGoodsData("�ߠ�������","Metadata/Items/Maps/MapWorldsVaalPyramid",3,"0|1|2|")
----SetSellGoodsData("�L���z�E","Metadata/Items/Maps/MapWorldsOvergrownRuin",3,"0|1|2|")
----SetSellGoodsData("�h���м�","Metadata/Items/Maps/MapWorldsBazaar",9,"0|1|2|")
----SetSellGoodsData("ĺɫɳ��","Metadata/Items/Maps/MapWorldsDunes",9,"0|1|2|")
----SetSellGoodsData("�Z��֮��","Metadata/Items/Maps/MapWorldsTemple",3,"0|1|2|")
----SetSellGoodsData("�h��Σ��","Metadata/Items/Maps/MapWorldsAncientCity",3,"0|1|2|")
----SetSellGoodsData("������ˮ��","Metadata/Items/Maps/MapWorldsToxicSewer",3,"0|1|2|")
----SetSellGoodsData("��ɽ����","Metadata/Items/Maps/MapWorldsVolcano",9,"3|1|2|")
----SetSellGoodsData("�ŵ�����","Metadata/Items/Maps/MapWorldsRelicChambers",3,"0|1|2|")
----SetSellGoodsData("�����L��","Metadata/Items/Maps/MapWorldsArcade",9,"0|1|2|")
----SetSellGoodsData("�b����","Metadata/Items/Maps/MapWorldsCage",3,"0|1|2|")
----SetSellGoodsData("�xꎪz��","Metadata/Items/Maps/MapWorldsPen",3,"0|1|2|")
----SetSellGoodsData("�Ͼ��Vɽ","Metadata/Items/Maps/MapWorldsCrystalOre",3,"0|1|2|")
----SetSellGoodsData("��������","Metadata/Items/Maps/MapWorldsDefiledCathedral",3,"0|1|2|")
----SetSellGoodsData("�޿�","Metadata/Items/Maps/MapWorldsPit",3,"0|1|2|")
----SetSellGoodsData("����Ĺ�V","Metadata/Items/Maps/MapWorldsArachnidTomb",9,"0|1|2|")
----SetSellGoodsData("��������","Metadata/Items/Maps/MapWorldsWastePool",3,"0|1|2|")
----SetSellGoodsData("Ԏ�H����","Metadata/Items/Maps/MapWorldsGeode",3,"0|1|2|")
----SetSellGoodsData("���E��Ĺ","Metadata/Items/Maps/MapWorldsBoneCrypt",3,"0|1|2|")
----SetSellGoodsData("����֮��","Metadata/Items/Maps/MapWorldsLavaChamber",3,"0|1|2|")
----SetSellGoodsData("���։VĹ","Metadata/Items/Maps/MapWorldsBarrows",9,"0|1|2|")
----SetSellGoodsData("ħ�`�êz","Metadata/Items/Maps/MapWorldsPhantasmagoria",3,"0|1|2|")
----SetSellGoodsData("���`�WԺ","Metadata/Items/Maps/MapWorldsAcademy",3,"0|1|2|")
----SetSellGoodsData("霪z����","Metadata/Items/Maps/MapWorldsTower",3,"0|1|2|")
----SetSellGoodsData("��ɽ�׿�","Metadata/Items/Maps/MapWorldsCaldera",3,"0|1|2|")
----SetSellGoodsData("ʧ���Ժ","Metadata/Items/Maps/MapWorldsCourthouse",3,"0|1|2|")
----SetSellGoodsData("ĺɫɳ��","Metadata/Items/Maps/MapAtlasDunesShaped",3,"0|1|2|")

--����һЩ�}�s���ΈD���iѪ����


--SetCompoundDivinationCard(name,className,nType) --Ҫ�ϳɵĿ�����ֻ�O�����^���õ� name=��Ƭ�� className=��Ƭ���� nType=�ϳɳ��� nil����Ϊ���ۺ�ʱ���ϳ� 0Ϊû��ˢ���ź� 1Ϊֻ��ˢ���ź�
SetCompoundDivinationCard("�ڰ�����","Metadata/Items/DivinationCards/DivinationCardThreeFacesInTheDark")
SetCompoundDivinationCard("�m�������֮��","Metadata/Items/DivinationCards/DivinationCardLantadorsLostLove")
SetCompoundDivinationCard("ޱ���ŵ�����","Metadata/Items/DivinationCards/DivinationCardViniasToken")
SetCompoundDivinationCard("�鱦��","Metadata/Items/DivinationCards/DivinationCardTheGemcutter")
SetCompoundDivinationCard("��������","Metadata/Items/DivinationCards/DivinationCardChaoticDisposition")
SetCompoundDivinationCard("����","Metadata/Items/DivinationCards/DivinationCardEmperorsLuck")
SetCompoundDivinationCard("��������","Metadata/Items/DivinationCards/DivinationCardLuckyConnections")
SetCompoundDivinationCard("����֮��","Metadata/Items/DivinationCards/DivinationCardRainOfChaos")
SetCompoundDivinationCard("�|��֮��","Metadata/Items/DivinationCards/DivinationCardCovetedPossession")
SetCompoundDivinationCard("��ؔ����","Metadata/Items/DivinationCards/DivinationCardAbandonedWealth")
SetCompoundDivinationCard("������","Metadata/Items/DivinationCards/DivinationCardTheInventor")
SetCompoundDivinationCard("��ϲ��","Metadata/Items/DivinationCards/DivinationCardJackInTheBox")
SetCompoundDivinationCard("����","Metadata/Items/DivinationCards/DivinationCardTheUnion")
SetCompoundDivinationCard("Թ��","Metadata/Items/DivinationCards/DivinationCardTheWrath")
SetCompoundDivinationCard("�ֱ�","Metadata/Items/DivinationCards/DivinationCardTheCatalyst")
SetCompoundDivinationCard("����ר��","Metadata/Items/DivinationCards/DivinationCardTheSurvivalist")
SetCompoundDivinationCard("�ҳ�","Metadata/Items/DivinationCards/DivinationCardLoyalty")
SetCompoundDivinationCard("��ͼʦ","Metadata/Items/DivinationCards/DivinationCardTheCartographer")
SetCompoundDivinationCard("����֮��","Metadata/Items/DivinationCards/DivinationCardTheSephirot")
SetCompoundDivinationCard("�}ͽ֮ؔ","Metadata/Items/DivinationCards/DivinationCardTheSaintsTreasure")
SetCompoundDivinationCard("�o��","Metadata/Items/DivinationCards/DivinationCardNoTraces")
SetCompoundDivinationCard("��","Metadata/Items/DivinationCards/DivinationCardTheInnocent")
SetCompoundDivinationCard("����","Metadata/Items/DivinationCards/DivinationCardTheFool")
SetCompoundDivinationCard("��ͽ","Metadata/Items/DivinationCards/DivinationCardTheGambler")
SetCompoundDivinationCard("������ʦ","Metadata/Items/DivinationCards/DivinationCardTheMasterArtisan")
SetCompoundDivinationCard("����","Metadata/Items/DivinationCards/DivinationCardTheLover")
SetCompoundDivinationCard("����","Metadata/Items/DivinationCards/DivinationCardTheOpulecent")
SetCompoundDivinationCard("ǫѷ","Metadata/Items/DivinationCards/DivinationCardHumility",0)
SetCompoundDivinationCard("����","Metadata/Items/DivinationCards/DivinationCardThePuzzle")

--��Ƭ��������һ��ֻ�����õ�


--����ռ���g���ױ��}������
SetGoodsCaoZuo(nil,"1|3",nil,"Metadata/Items/Metamorphosis/MetamorphosisBrain")--�ħ�X�費��
SetGoodsCaoZuo(nil,"1|3",nil,"Metadata/Items/Metamorphosis/MetamorphosisEye")--�ħ�۾�����
SetGoodsCaoZuo(nil,"1|3",nil,"Metadata/Items/Metamorphosis/MetamorphosisLiver")--�ħ���K����
SetGoodsCaoZuo(nil,"1|3",nil,"Metadata/Items/Metamorphosis/MetamorphosisLung")--�ħ���K����
SetGoodsCaoZuo(nil,"1|3",nil,"Metadata/Items/Metamorphosis/MetamorphosisHeart")--�ħ���K����

--�������P
--AddYouXianGongPingBuyGoods(name,className,wordName,wordClassName,needYanShi)���ȶȞ�������
--name �ַ����� ���ȹ������Ʒ�� ����nil���ԣ���һ��Ҫ�����������
--className �ַ����� ���ȹ������Ʒ���� ������nil���ԣ���һ��Ҫ�����������
--wordName �ַ����� ��׺�� ������nil
--wordClassName �ַ����� ��׺���� ������nil
--needYanShi �߼��� ����ʱ�Ƿ���ʱ trueΪ��ʱ false��nilΪ����ʱ
AddYouXianGongPingBuyGoods("�����µ�ħ��","Metadata/Items/Currency/CurrencyDuplicate",nil,nil,true)
AddYouXianGongPingBuyGoods(nil,nil,nil,"The Squire")--"�����"
AddYouXianGongPingBuyGoods(nil,nil,nil,"Mageblood")--"ħѪ"
AddYouXianGongPingBuyGoods(nil,nil,nil,"Headhunter",true)--"�C��"
AddYouXianGongPingBuyGoods(nil,nil,nil,"Badge of the Brotherhood",true)--"����֮��"
AddYouXianGongPingBuyGoods(nil,nil,nil,"Bottled Faith",true)--"ƿ������"
AddYouXianGongPingBuyGoods(nil,nil,nil,"Unnatural Instinct",true)--"���"
AddYouXianGongPingBuyGoods(nil,nil,nil,"Void Battery",true)--"����ħ��"
AddYouXianGongPingBuyGoods(nil,nil,nil,"Maloney's Mechanism",true)--"�R����ęC�P"
AddYouXianGongPingBuyGoods(nil,nil,nil,"Asenath's Gentle Touch",true)--"��ِ�Ƚz�İ���֮�Z"
AddYouXianGongPingBuyGoods(nil,nil,nil,"Machina Mitts",true)--"ԎӋħ��"
AddYouXianGongPingBuyGoods(nil,nil,nil,"Farrul's Fur",true)--"�M���_����"
AddYouXianGongPingBuyGoods(nil,nil,nil,"Shroud of the Lightless",true)--"�ް��ČƲ�"
AddYouXianGongPingBuyGoods(nil,nil,nil,"The Halcyon",true)--"̫ƽ"
AddYouXianGongPingBuyGoods(nil,nil,nil,"Arakaali's Fang",true)--"��������֮��"
AddYouXianGongPingBuyGoods(nil,nil,nil,"Unending Hunger",true)--"�o�M����"
AddYouXianGongPingBuyGoods(nil,nil,nil,"Inspired Learning",true)--"��֪�ğ���"
AddYouXianGongPingBuyGoods(nil,nil,nil,"Berek's Respite",true)--"ؐ�׿˵Ļ��c��֮��"
AddYouXianGongPingBuyGoods(nil,nil,nil,"AtzirisMirrorFated",true)--"Ů���I��"
AddYouXianGongPingBuyGoods("�����µ�ħ����Ƭ","Metadata/Items/Currency/CurrencyDuplicateShard",nil,nil,true)
AddYouXianGongPingBuyGoods("���t","Metadata/Items/DivinationCards/DivinationCardTheDoctor",nil,nil,true)
AddYouXianGongPingBuyGoods("ħ��","Metadata/Items/DivinationCards/DivinationCardTheFiend",nil,nil,true)
AddYouXianGongPingBuyGoods("����˼","Metadata/Items/DivinationCards/DivinationCardUnrequitedLove",nil,nil,true)
AddYouXianGongPingBuyGoods("����","Metadata/Items/DivinationCards/DivinationCardHouseOfMirrors",nil,nil,true)
AddYouXianGongPingBuyGoods("��ħ","Metadata/Items/DivinationCards/DivinationCardTheDemon",nil,nil,true)
AddYouXianGongPingBuyGoods("�o����H","Metadata/Items/DivinationCards/DivinationCardSuccorOfTheSinless",nil,nil,true)
AddYouXianGongPingBuyGoods("�䳲֪�R","Metadata/Items/DivinationCards/DivinationCardTheHiveOfKnowledge",nil,nil,true)
AddYouXianGongPingBuyGoods("��ِ�Ƚzٛ�Y","Metadata/Items/DivinationCards/DivinationCardGiftOfAsenath",nil,nil,true)
AddYouXianGongPingBuyGoods("�ۂ��әC","Metadata/Items/DivinationCards/DivinationCardTheGreatestIntentions",nil,nil,true)
AddYouXianGongPingBuyGoods("�L���p�_","Metadata/Items/DivinationCards/DivinationCardTheLongCon",nil,nil,true)
AddYouXianGongPingBuyGoods("����ؔ��","Metadata/Items/DivinationCards/DivinationCardBrothersStash",nil,nil,true)
AddYouXianGongPingBuyGoods("����ע��","Metadata/Items/DivinationCards/DivinationCardFatefulMeeting",nil,nil,true)
AddYouXianGongPingBuyGoods("����ѧ��","Metadata/Items/DivinationCards/DivinationCardTheAstromancer",nil,nil,true)
AddYouXianGongPingBuyGoods("���֮��","Metadata/Items/DivinationCards/DivinationCardLoveThroughIce",nil,nil,true)
AddYouXianGongPingBuyGoods("����","Metadata/Items/DivinationCards/DivinationCardThePatient",nil,nil,true)
AddYouXianGongPingBuyGoods("������","Metadata/Items/DivinationCards/DivinationCardTheNurse",nil,nil,true)
AddYouXianGongPingBuyGoods("ͯ��܊","Metadata/Items/DivinationCards/DivinationCardTheScout",nil,nil,true)
AddYouXianGongPingBuyGoods("����","Metadata/Items/DivinationCards/DivinationCardTheHoarder",nil,nil,true)
AddYouXianGongPingBuyGoods("��������","Metadata/Items/DivinationCards/DivinationCardAbandonedWealth",nil,nil,true)
AddYouXianGongPingBuyGoods("ʥ��֮��","Metadata/Items/DivinationCards/DivinationCardTheSaintsTreasure",nil,nil,true)
AddYouXianGongPingBuyGoods("����ʫ��","Metadata/Items/DivinationCards/DivinationCardTheIronBard",nil,nil,true)
AddYouXianGongPingBuyGoods("��ʿ֮��","Metadata/Items/DivinationCards/DivinationCardTheSamuraisEye",nil,nil,true)
AddYouXianGongPingBuyGoods("����֮��","Metadata/Items/DivinationCards/DivinationCardBeautyThroughDeath",nil,nil,true)
AddYouXianGongPingBuyGoods("�������","Metadata/Items/DivinationCards/DivinationCardSevenYearsBadLuck",nil,nil,true)
AddYouXianGongPingBuyGoods("���ʯ","Metadata/Items/Currency/CurrencyAddModToRare",nil,nil,true)
AddYouXianGongPingBuyGoods("Զ��ʯ","Metadata/Items/Currency/CurrencyRerollUnique",nil,nil,true)
AddYouXianGongPingBuyGoods("��ʥʯ","Metadata/Items/Currency/CurrencyModValues",nil,nil,true)
AddYouXianGongPingBuyGoods("���˵Ľ���","Metadata/Items/DivinationCards/DivinationCardAlluringBounty",nil,nil,true)
AddYouXianGongPingBuyGoods("����Ĵ���","Metadata/Items/DivinationCards/DivinationCardPrideOfTheFirstOnes",nil,nil,true)
AddYouXianGongPingBuyGoods("����֮��","Metadata/Items/DivinationCards/DivinationCardTheSephirot",nil,nil,true)
AddYouXianGongPingBuyGoods("��������","Metadata/Items/DivinationCards/DivinationCardTheWretched",nil,nil,true)
AddYouXianGongPingBuyGoods("�ڰ�����","Metadata/Items/DivinationCards/DivinationCardThreeFacesInTheDark",nil,nil,true)
AddYouXianGongPingBuyGoods("��������","Metadata/Items/DivinationCards/DivinationCardChaoticDisposition",nil,nil,true)
AddYouXianGongPingBuyGoods("Թ��","Metadata/Items/DivinationCards/DivinationCardTheWrath",nil,nil,true)
AddYouXianGongPingBuyGoods("�Sԣ�ƽM","Metadata/Items/DivinationCards/DivinationCardDeck",nil,nil,true)
AddYouXianGongPingBuyGoods("����ʯ","Metadata/Items/Currency/CurrencyRerollRare",nil,nil,true)
AddYouXianGongPingBuyGoods("���ʯ","Metadata/Items/Currency/CurrencyUpgradeToRare",nil,nil,true)
AddYouXianGongPingBuyGoods("����ʯ","Metadata/Items/Currency/CurrencyUpgradeMagicToRare",nil,nil,true)
AddYouXianGongPingBuyGoods("��ͼ��","Metadata/Items/Currency/CurrencyMapQuality",nil,nil,true)
AddYouXianGongPingBuyGoods("���ʯ","Metadata/Items/Currency/CurrencyPassiveRefund",nil,nil,true)
AddYouXianGongPingBuyGoods("����ʯ","Metadata/Items/Currency/CurrencyConvertToNormal",nil,nil,true)
AddYouXianGongPingBuyGoods("��ʯ�����⾵","Metadata/Items/Currency/CurrencyGemQuality",nil,nil,true)
AddYouXianGongPingBuyGoods("����ʯ","Metadata/Items/Currency/CurrencyRerollSocketLinks",nil,nil,true)
AddYouXianGongPingBuyGoods("����ʯ","Metadata/Items/Currency/CurrencyRerollMagic",nil,nil,true)

g_needShiLianDaShiLv=75--��75����������ʦ
SetNeedShiLianReward("�����µ�ħ��","Metadata/Items/Currency/CurrencyDuplicate")
SetNeedShiLianReward(nil,nil,nil,"The Squire")--"�����"
SetNeedShiLianReward(nil,nil,nil,"Mageblood")--"ħѪ"
SetNeedShiLianReward(nil,nil,nil,"Headhunter")--"�C��"
SetNeedShiLianReward(nil,nil,nil,"Badge of the Brotherhood")--"����֮��"
SetNeedShiLianReward(nil,nil,nil,"Bottled Faith")--"ƿ������"
SetNeedShiLianReward(nil,nil,nil,"Unnatural Instinct")--"���"
SetNeedShiLianReward(nil,nil,nil,"Void Battery")--"����ħ��"
SetNeedShiLianReward(nil,nil,nil,"Maloney's Mechanism")--"�R����ęC�P"
SetNeedShiLianReward(nil,nil,nil,"Asenath's Gentle Touch")--"��ِ�Ƚz�İ���֮�Z"
SetNeedShiLianReward(nil,nil,nil,"Machina Mitts")--"ԎӋħ��"
SetNeedShiLianReward(nil,nil,nil,"Farrul's Fur")--"�M���_����"
SetNeedShiLianReward(nil,nil,nil,"Shroud of the Lightless")--"�ް��ČƲ�"
SetNeedShiLianReward(nil,nil,nil,"The Halcyon")--"̫ƽ"
SetNeedShiLianReward(nil,nil,nil,"Arakaali's Fang")--"��������֮��"
SetNeedShiLianReward(nil,nil,nil,"Unending Hunger")--"�o�M����"
SetNeedShiLianReward(nil,nil,nil,"Inspired Learning")--"��֪�ğ���"
SetNeedShiLianReward(nil,nil,nil,"Berek's Respite")--"ؐ�׿˵Ļ��c��֮��"
SetNeedShiLianReward(nil,nil,nil,"AtzirisMirrorFated")--"Ů���I��"
SetNeedShiLianReward(nil,nil,nil,"ItemAbleToBecomesUniqueWhenChanceOrbApplied")--"��ȸ׃�P��"
SetNeedShiLianReward(nil,nil,nil,"RollingSixSocketBodyArmourLinksAllSockets")--"���\�B�Y"
SetNeedShiLianReward(nil,nil,nil,"RareSuturedAberrationDropsMaligarosVirtuosity")--"����֮��"
SetNeedShiLianReward("�����µ�ħ����Ƭ","Metadata/Items/Currency/CurrencyDuplicateShard")
SetNeedShiLianReward("���t","Metadata/Items/DivinationCards/DivinationCardTheDoctor")
SetNeedShiLianReward("ħ��","Metadata/Items/DivinationCards/DivinationCardTheFiend")
SetNeedShiLianReward("����˼","Metadata/Items/DivinationCards/DivinationCardUnrequitedLove")
SetNeedShiLianReward("����","Metadata/Items/DivinationCards/DivinationCardHouseOfMirrors")
SetNeedShiLianReward("��ħ","Metadata/Items/DivinationCards/DivinationCardTheDemon")
SetNeedShiLianReward("�o����H","Metadata/Items/DivinationCards/DivinationCardSuccorOfTheSinless")
SetNeedShiLianReward("�䳲֪�R","Metadata/Items/DivinationCards/DivinationCardTheHiveOfKnowledge")
SetNeedShiLianReward("��ِ�Ƚzٛ�Y","Metadata/Items/DivinationCards/DivinationCardGiftOfAsenath")
SetNeedShiLianReward("�ۂ��әC","Metadata/Items/DivinationCards/DivinationCardTheGreatestIntentions")
SetNeedShiLianReward("�L���p�_","Metadata/Items/DivinationCards/DivinationCardTheLongCon")
SetNeedShiLianReward("����ؔ��","Metadata/Items/DivinationCards/DivinationCardBrothersStash")
SetNeedShiLianReward("����ע��","Metadata/Items/DivinationCards/DivinationCardFatefulMeeting")
SetNeedShiLianReward("����ѧ��","Metadata/Items/DivinationCards/DivinationCardTheAstromancer")
SetNeedShiLianReward("���֮��","Metadata/Items/DivinationCards/DivinationCardLoveThroughIce")
SetNeedShiLianReward("����","Metadata/Items/DivinationCards/DivinationCardThePatient")
SetNeedShiLianReward("������","Metadata/Items/DivinationCards/DivinationCardTheNurse")
SetNeedShiLianReward("ͯ��܊","Metadata/Items/DivinationCards/DivinationCardTheScout")
SetNeedShiLianReward("����","Metadata/Items/DivinationCards/DivinationCardTheHoarder")
SetNeedShiLianReward("��������","Metadata/Items/DivinationCards/DivinationCardAbandonedWealth")
SetNeedShiLianReward("ʥ��֮��","Metadata/Items/DivinationCards/DivinationCardTheSaintsTreasure")
SetNeedShiLianReward("����ʫ��","Metadata/Items/DivinationCards/DivinationCardTheIronBard")
SetNeedShiLianReward("��ʿ֮��","Metadata/Items/DivinationCards/DivinationCardTheSamuraisEye")
SetNeedShiLianReward("����֮��","Metadata/Items/DivinationCards/DivinationCardBeautyThroughDeath")
SetNeedShiLianReward("�������","Metadata/Items/DivinationCards/DivinationCardSevenYearsBadLuck")
SetNeedShiLianReward("���ʯ","Metadata/Items/Currency/CurrencyAddModToRare")
SetNeedShiLianReward("Զ��ʯ","Metadata/Items/Currency/CurrencyRerollUnique")
SetNeedShiLianReward("��ʥʯ","Metadata/Items/Currency/CurrencyModValues")
SetNeedShiLianReward("���˵Ľ���","Metadata/Items/DivinationCards/DivinationCardAlluringBounty")
SetNeedShiLianReward("����Ĵ���","Metadata/Items/DivinationCards/DivinationCardPrideOfTheFirstOnes")
SetNeedShiLianReward("����֮��","Metadata/Items/DivinationCards/DivinationCardTheSephirot")
SetNeedShiLianReward("��������","Metadata/Items/DivinationCards/DivinationCardTheWretched")
SetNeedShiLianReward("�ڰ�����","Metadata/Items/DivinationCards/DivinationCardThreeFacesInTheDark")
SetNeedShiLianReward("��������","Metadata/Items/DivinationCards/DivinationCardChaoticDisposition")
SetNeedShiLianReward("Թ��","Metadata/Items/DivinationCards/DivinationCardTheWrath")
SetNeedShiLianReward("�Sԣ�ƽM","Metadata/Items/DivinationCards/DivinationCardDeck")
SetNeedShiLianReward("����ʯ","Metadata/Items/Currency/CurrencyRerollRare")
SetNeedShiLianReward("���ʯ","Metadata/Items/Currency/CurrencyUpgradeToRare")
SetNeedShiLianReward("����ʯ","Metadata/Items/Currency/CurrencyUpgradeMagicToRare")
SetNeedShiLianReward("��ͼ��","Metadata/Items/Currency/CurrencyMapQuality")
SetNeedShiLianReward("���ʯ","Metadata/Items/Currency/CurrencyPassiveRefund")
SetNeedShiLianReward("����ʯ","Metadata/Items/Currency/CurrencyConvertToNormal")
SetNeedShiLianReward("��ʯ�����⾵","Metadata/Items/Currency/CurrencyGemQuality")
SetNeedShiLianReward("����ʯ","Metadata/Items/Currency/CurrencyRerollSocketLinks")
SetNeedShiLianReward("����ʯ","Metadata/Items/Currency/CurrencyRerollMagic")

--�ٱI���P
--SetCheckHeistData(5*60,1000,nil,60,true,65,73,78,65,nil,6) --����ȥ�ᱦ 
--SetSaveIndex("��Լ","1")--�趨��Լ������Щ�ֿ�ҳ
--SetGoodsCaoZuo("��Լ","0|2",nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,function(r)return r.lv>60 end)--����60������Լ�ż��
--SetGoodsCaoZuo(nil,"0","�ͽ�����ӡ��","Metadata/Items/Heist/HeistCoin")--ֻ�񲻴�ᱦ��
--SetGoodsCaoZuo(nil,"0|2","�ͽ�����ӡ��","Metadata/Items/Heist/HeistCoin",nil,nil,nil,500)--������500�͸�Ϊ���
--�����Ҫ�ᱦ�ҽ��׸��ֿ�žͼ�����������
--SetJiaoYiGoods(nil,"�ͽ�����ӡ��","Metadata/Items/Heist/HeistCoin",nil,nil,nil,nil,nil,nil,5000)--����1000���ᱦ�� ������Ľ��׸��ֿ��


--SetHeistData(openChest,saveData,runPickData)--���öᱦ��صĲ���
SetHeistData("RewardChestCurrency|RewardCurrency|RewardChestTrinkets|RewardChestDivination|RewardChestDelirium|RewardChestBlight|RewardChestLegion|RewardChestUnique|RewardChestGeneric|RewardChestAbyss|RewardChestHarbinger|RewardChestFossil",--������ �� ͨ�����ӡ�ͨ������1����������
"���ʯ,Metadata/Items/Currency/CurrencyAddModToRare,1|�����µ�ħ��,Metadata/Items/Currency/CurrencyDuplicate,1","���ʯ,Metadata/Items/Currency/CurrencyAddModToRare|�����µ�ħ��,Metadata/Items/Currency/CurrencyDuplicate")


