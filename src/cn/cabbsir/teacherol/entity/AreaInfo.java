package cn.cabbsir.teacherol.entity;

public class AreaInfo {
    public String Judgement(int x,int y) {
        String pro[] = new String[]{"保密", "北京市", "天津市", "上海市", "重庆市", "河北省", "山西省", "辽宁省", "吉林省", "黑龙江省", "江苏省", "浙江省", "安徽省", "福建省", "江西省", "山东省", "河南省", "湖北省", "湖南省", "广东省", "海南省", "四川省", "贵州省", "云南省", "陕西省", "甘肃省", "青海省", "台湾省", "内蒙古自治区", "广西壮族自治区", "西藏自治区", "宁夏回族自治区", "新疆维吾尔自治区", "香港特别行政区", "澳门特别行政区"};
        String city[][] = new String[35][3];
        city[0][0]=("保密");
        city[1][0] = new String("北京市区");
        city[2][0] = new String("天津市区");
        city[3][0] = new String("上海市区");
        city[4][0] = new String("重庆市区");
        city[5] = new String[]{"石家庄", "唐山", "邯郸"};
        city[6] = new String[]{"太原", "大同", "阳泉"};
        city[7] = new String[]{"沈阳", "大连", "鞍山"};
        city[8] = new String[]{"长春", "吉林", "四平"};
        city[9] = new String[]{"哈尔滨", "齐齐哈尔", "鸡西"}; city[10] = new String[]{"南京", "无锡", "徐州"};city[11] = new String[]{"杭州", "宁波", "温州"};
        city[12] = new String[]{"合肥", "芜湖", "淮南"};city[13] = new String[]{"福州", "厦门", "漳州"};city[14] = new String[]{"南昌", "九江", "上饶"};
        city[15] = new String[]{"济南", "青岛", "淄博"};city[16] = new String[]{"郑州", "开封", "洛阳"};city[17] = new String[]{"武汉", "黄石", "十堰"};
        city[18] = new String[]{"长沙", "株洲", "湘潭"};city[19] = new String[]{"广州", "深圳", "珠海"};city[20] = new String[]{"海口", "三亚", "三沙"};
        city[21] = new String[]{"成都", "绵阳", "自贡"};city[22] = new String[]{"贵州", "遵义", "六盘水"};city[23] = new String[]{"昆明", "曲靖", "玉溪"};
        city[24] = new String[]{"西安", "宝鸡", "咸阳"};city[25] = new String[]{"兰州", "嘉峪关", "金昌"};city[26] = new String[]{"西宁", "海东", "海北"};
        city[27] = new String[]{"台北", "新北", "桃园"};city[28][0] = new String("内蒙古市区");city[29][0] = new String("广西市区");
        city[30][0] = new String("西藏市区");city[31][0] = new String("宁夏市区");city[32][0] = new String("新疆市区");
        city[33][0] = new String("香港");city[34][0] = new String("澳门");
        //测试代码
        System.out.println(pro[x]+","+city[x][y]);
        return (pro[x]+","+city[x][y]);
    }
}
