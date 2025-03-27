
function onKeyFrameFlag_po_24199_monster_qq358332886(obj, flagIndex)
{
	if (!obj || flagIndex != 1) return false;

	local parentObj = obj.getParent();
	local apPath = "qq358332886_monster_appendage/monster_appendage/";
	switch (obj.getZPos())
	{
	case 1: apPath += "ap_monster_358332886_1.nut"; break;//�����
	case 2: apPath += "ap_monster_358332886_2.nut"; break;//?������
	case 3: apPath += "ap_monster_358332886_3.nut"; break;//������?��߱
	case 4: apPath += "ap_monster_358332886_4.nut"; break;//������١�̫����
	case 5: apPath += "ap_monster_358332886_5.nut"; break;//�������ӥ����
	case 6: apPath += "ap_monster_358332886_6.nut"; break;//�������ӥت����
	case 7: apPath += "ap_monster_358332886_7.nut"; break;//�������ӥ?����
	case 8: apPath += "ap_monster_358332886_8.nut"; break;//�������ӥ߾������
	case 9: apPath += "ap_monster_358332886_9.nut"; break;//�������ӥ̫��ʫ
	case 10: apPath += "ap_monster_358332886_10.nut"; break;//�������?���
	case 11: apPath += "ap_monster_358332886_11.nut"; break;//تͣ��ڪ
	case 12: apPath += "ap_monster_358332886_12.nut"; break;//����յ����
	case 13: apPath += "ap_monster_358332886_13.nut"; break;//��������к
	case 14: apPath += "ap_monster_358332886_14.nut"; break;//�������(���������������ڪ)
	case 15: apPath += "ap_monster_358332886_15.nut"; break;//�������(���������������ڪ)
	case 16: apPath += "ap_monster_358332886_16.nut"; break;//�������(���������������ڪ)
	case 17: apPath += "ap_monster_358332886_17.nut"; break;//�������(���������������ڪ)
	case 18: apPath += "ap_monster_358332886_18.nut"; break;//�������
	case 19: apPath += "ap_monster_358332886_19.nut"; break;//�������
	case 20: apPath += "ap_monster_358332886_20.nut"; break;//������غӹ��
	case 21: apPath += "ap_monster_358332886_21.nut"; break;//������غӹ����ҷ⮣�
	case 22: apPath += "ap_monster_358332886_22.nut"; break;//������غӹ����ҷ⮣�
	case 23: apPath += "ap_monster_358332886_23.nut"; break;//������غӹ������ޫ?��
	case 24: apPath += "ap_monster_358332886_24.nut"; break;//������غӹ���������꣩
	case 25: apPath += "ap_monster_358332886_25.nut"; break;//�������ӥ��ت��
	case 26: apPath += "ap_monster_358332886_26.nut"; break;//��������к
	case 27: apPath += "ap_monster_358332886_27.nut"; break;//���������ߵ��̫
	case 28: apPath += "ap_monster_358332886_28.nut"; break;//��?��ݾ������ߵ��̫
	case 29: apPath += "ap_monster_358332886_29.nut"; break;//�������ӥ����
	case 30: apPath += "ap_monster_358332886_30.nut"; break;//�������ӥ��������
	case 31: apPath += "ap_monster_358332886_31.nut"; break;//�������
	case 101: apPath += "ap_monster_358332886_101.nut"; break;//������Ѧˣ����
	case 102: apPath += "ap_monster_358332886_102.nut"; break;//��?������
	case 103: apPath += "ap_monster_358332886_103.nut"; break;//��?����?����
	case 104: apPath += "ap_monster_358332886_104.nut"; break;//?������ٵ
	case 105: apPath += "ap_monster_358332886_105.nut"; break;//���?������ٵ
	case 106: apPath += "ap_monster_358332886_106.nut"; break;//˼�����
	case 107: apPath += "ap_monster_358332886_107.nut"; break;//������յ?��
	case 108: apPath += "ap_monster_358332886_108.nut"; break;//������ʥ?����
	case 109: apPath += "ap_monster_358332886_109.nut"; break;//����������
	case 110: apPath += "ap_monster_358332886_110.nut"; break;//?����Ү���
	case 111: apPath += "ap_monster_358332886_111.nut"; break;//ͷ���զ��إҽ�� Mark-II
	case 112: apPath += "ap_monster_358332886_112.nut"; break;//ͷ���զ��إҽ�� Mark-II BackArm L
	case 113: apPath += "ap_monster_358332886_113.nut"; break;//ͷ���զ��إҽ�� Mark-II BackArm R
	case 114: apPath += "ap_monster_358332886_114.nut"; break;//ͷ���զ��إҽ�� Mark-II Arm L/R
	case 115: apPath += "ap_monster_358332886_115.nut"; break;//����������
	case 116: apPath += "ap_monster_358332886_116.nut"; break;//��������
	case 117: apPath += "ap_monster_358332886_117.nut"; break;//�������յ
	case 118: apPath += "ap_monster_358332886_118.nut"; break;//��������������1
	case 119: apPath += "ap_monster_358332886_119.nut"; break;//��������������
	case 120: apPath += "ap_monster_358332886_120.nut"; break;//�������?����
	case 121: apPath += "ap_monster_358332886_121.nut"; break;//�������ͯ���
	case 122: apPath += "ap_monster_358332886_122.nut"; break;//?�����Ү��
	case 123: apPath += "ap_monster_358332886_123.nut"; break;//����ؼ������
	case 124: apPath += "ap_monster_358332886_124.nut"; break;//���������ҽ����
	case 125: apPath += "ap_monster_358332886_125.nut"; break;//������к
	case 126: apPath += "ap_monster_358332886_126.nut"; break;//������к
	case 127: apPath += "ap_monster_358332886_127.nut"; break;//�������
	case 128: apPath += "ap_monster_358332886_128.nut"; break;//������ت : �����
	case 129: apPath += "ap_monster_358332886_129.nut"; break;//��������ت
	case 130: apPath += "ap_monster_358332886_130.nut"; break;//����ت��
	}

	if (apPath != "qq358332886_monster_appendage/monster_appendage/")
	{
		CNSquirrelAppendage.sq_AppendAppendage(parentObj, parentObj, -1, false, apPath, true);
	}

	return true;
}