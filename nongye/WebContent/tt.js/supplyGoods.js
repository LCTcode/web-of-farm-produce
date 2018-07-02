var addressInit = function(_goods, _goods_type, _keywords,  defaultgoods, defaultgoods_type, defaultkeywords)   //不是很理解这里传递参数为什么有“_”??? ，后来想到这样的书写意义是什么，后来琢磨一下，浏览器的执行是书写先后执行，我们将js外部引用，在开头，先执行此js ，此时dom要获取的id还没有创建，这样写是为了区分开待会传的id 值，执行顺序：外部js html 执行addressinnit()方法， 此方法已经在js 中创建，此时回头执行，就跟onclick="addressInnit()"一样，只是这里不需要点击，我们将参数的“_”去掉也没事，但是却在传值上可能产生误会。
{ 
var goods = document.getElementById(_goods); 
var goods_type = document.getElementById(_goods_type); 
var keywords = document.getElementById(_keywords); 
   
function UserSelect(User, str) 
{ 
for(var i=0; i<User.options.length; i++) 
{ 
if(User.options[i].value == str) 
{ 
User.selectedIndex = i; 
return; 
} 
} 
} 
function UserAddOption(User, str, obj) 
{ 
var option = document.createElement("OPTION");  //动态创建options节点。 
User.options.add(option); 
option.innerText = str; 
option.value = str; 
option.obj = obj; 
} 

function changegoods_type() 
{ 
keywords.options.length = 0; 
if(goods_type.selectedIndex == -1)return; 
var item = goods_type.options[goods_type.selectedIndex].obj; 
for(var i=0; i<item.keywordsList.length; i++) 
{ 
UserAddOption(keywords, item.keywordsList[i], null); 
} 
UserSelect(keywords, defaultkeywords); 
} 
function changegoods()     
{ 
goods_type.options.length = 0; 
goods_type.onchange = null; 
if(goods.selectedIndex == -1)return;    //判断我们是否在第一个栏已经有选择，
var item = goods.options[goods.selectedIndex].obj;  //获取我们在第一个栏的选择的值。
for(var i=0; i<item.goods_typeList.length; i++) 
{ 
UserAddOption(goods_type, item.goods_typeList[i].name, item.goods_typeList[i]); // 动态创建第二个栏，也就是城市栏的option 及其value。
} 
UserSelect(goods_type, defaultgoods_type);  //判断我们在goods_type 是否选择，，
changegoods_type(); 
goods_type.onchange = changegoods_type;  
} 

for(var i=0; i<goodsList.length; i++) 
{ 
UserAddOption(goods, goodsList[i].name, goodsList[i]); //看到这里就虚服了，执行这个方法，动态创建option 节点，根据传的id值判断在那里创建，之后显示name，，并显示其value 执行 i 次，    
} 
UserSelect(goods, defaultgoods);  //执行select方法，此方法作用是？我觉得是判断选择，当我们选择时，看上面的方法，selctIndex=1；此时在changeprovice中就会又一个判断，若=-1 return，否则执行以下，也就是执行完changeprovice.
changegoods(); 
goods.onchange = changegoods; 
} 

var goodsList = [ 
{name:'请选择产品', goods_typeList:[ 
{name:'请选择产品类型', keywordsList:['请选择品种']} 
]}, 
 
{name:'水果', goods_typeList:[ 
{name:'核果仁果类', keywordsList:['苹果','梨','山楂','沙果','蛇果','李子','鲜枣','杏','杨梅','青梅','蜜桃','毛桃','蟠桃','黄桃','油桃','石榴','无花果','潘石榴','黄皮果','人参果','红毛丹','释迦果','黑老虎','罗汉果','美藤果','雪莲果','火参果','海红果','拐枣','构桃','樱桃','枇杷','西梅','金刺梨','乌梅','钙果','鲜玉米']}, 
{name:'热带水果', keywordsList:['芒果','荔枝','龙眼','菠萝','火龙果','香蕉','榴莲','木瓜','莲雾','山竹','叶子','甘蔗','菠萝蜜','牛油果','橄榄','杨桃','柠檬','蛋黄果','余甘果','人心果','诺丽果','香如蜜']}, 
{name:'柑橘类', keywordsList:['柑桔','脐   橙','柚	子','金	桔']}, 
{name:'浆果类', keywordsList:['葡萄','草莓','树莓','圣女果','桑葚','蓝莓','树葡萄','蓝锭果','酸角','沙刺果','马蹄','姑娘果','杈杷果']}, 
{name:'瓜果类', keywordsList:['西瓜','甜瓜','哈密瓜','吊瓜','八月瓜']}, 
]}, 
{name:'蔬菜', goods_typeList:[ 
{name:'水生菜类', keywordsList:['茭白','莲藕','芦笋','水芹','菱角','慈姑','鲜芡实']}, 
{name:'根茎菜类', keywordsList:['萝卜','胡萝卜','竹笋','葛根','韭菜根','魔芋','木薯','凉薯','山药','红薯','紫薯','土豆','芋头','板署']}, 
{name:'叶菜类', keywordsList:['白菜','小白菜','生菜','苋菜','娃娃菜','韭菜','木耳菜','香菜','油麦菜','油菜','空心菜','菠菜','甜菜','黄心菜','萝卜菜','芹菜','莴笋']}, 
{name:'豆菜类', keywordsList:['毛豆','刀豆','四季豆','豆角','扁豆','豌豆','荷兰豆','四棱豆']}, 
{name:'葱姜蒜类', keywordsList:['韭黄','蒜苗','大蒜','生姜','大葱','小葱','蒜苔','洋葱','红葱头','洋姜','葱仔']}, 
{name:'茄果菜类', keywordsList:['辣椒','西红柿','茄子','秋葵','鲜玉米']}, 
{name:'甘蓝类', keywordsList:['花椰菜','西兰花','包菜','芥蓝']}, 
{name:'瓜菜类', keywordsList:['南瓜','丝瓜','冬瓜','黄瓜','苦瓜','佛手瓜','西葫芦','金丝绞瓜']}, 
]}, 
{name:'畜牧水产', goods_typeList:[ 
{name:'禽畜类', keywordsList:['鸡','鸭','鹅','鸽子','牛','羊','猪','兔子','野鸭','山鸡','火鸡','珍珠鸡','乌骨鸡','野猪','豪猪','香猪']}, 
{name:'水产类', keywordsList:['鲈鱼','鲤鱼','泥鳅','银鱼','草鱼','黄鳝','青鱼','鲫鱼','鲢鱼','鲶鱼','石斑鱼','带鱼','黄花鱼','大闸蟹','河蟹','对虾','小龙虾']}, 
{name:'特种类', keywordsList:['蛙','骆驼','蚕','土元','蟑螂','螳螂','蜈蚣','黄粉虫','水蛭','蚯蚓','甲鱼','羊驼','大雁','蜜蜂']}, 
{name:'繁育种苗', keywordsList:['鸡苗','鸭苗','鹅苗','猪苗','鱼苗','乌龟苗','甲鱼苗','虾苗','蟹苗','蛇苗','竹鼠苗','泥鳅苗','黄鳝苗']}, 
]}, 
{name:'粮油米面', goods_typeList:[ 
{name:'五谷杂粮', keywordsList:['红豆','大豆','绿豆','蚕豆','黑豆','大米','小米','玉米粒','大麦','小麦','燕麦','高粱','黑米','糯米','薏米','花生','芝麻','葵花籽','五谷米','稻壳','稻谷']}, 
{name:'粮食加工', keywordsList:['馒头','面粉','豆制品','面条','饺子','汤圆','粉丝']}, 
{name:'食用油', keywordsList:['大豆油','花生油','橄榄油','玉米油','色拉油','红花油','夏威夷果油','杏仁油','花椒油','猪油','芝麻油','椰子油','菜籽油']}, 
{name:'调味品', keywordsList:['盐','味精','鸡精','糖','酱油','醋','耗油','辣椒粉','胡椒','孜然','花椒','桂皮','八角','淀粉']}, 
]}, 
{name:'农副加工', goods_typeList:[ 
{name:'肉蛋奶', keywordsList:['鸡蛋','鸭蛋','鹅蛋','鹌鹑蛋','鸽子蛋','皮蛋','牛肉','羊肉','鸡肉','鸭肉','猪副产品','牛副产品','奶制品']}, 
{name:'水产、肉制品', keywordsList:['水产干货','冷冻水产品','腊肉','香肠制品']}, 
{name:'加工', keywordsList:['火腿制品','丸子制品','卤制品']}, 
{name:'干菜', keywordsList:['脱水蔬菜','干香菇','干菌子','干木耳','百合干']}, 
{name:'坚果', keywordsList:['瓜子','板栗','花生果','麻子','松仁','榛子','巴坦木','杏核','杏仁油','沙漠果','开心果','核桃','腰果']}, 
{name:'休闲速食品', keywordsList:['肉类零食','饼干糕点','休闲零食','蔬果罐头','肉类罐头','速冻蔬果','饮料','米线']}, 
{name:'茶叶', keywordsList:['黑茶','绿茶','毛尖','红茶','普洱','乌龙茶','皇茶','白茶']}, 
{name:'营养滋补品', keywordsList:['蜂蜜','蜂胶','蜂蜡','桃胶','枇杷露','花粉']}, 
{name:'经济作物', keywordsList:['棉花','咖啡豆','蚕丝','竹类加工品','食品加工原料']}, 
]}, 
{name:'苗木花草', goods_typeList:[ 
{name:'苗木', keywordsList:['香樟','红枫','黄杨','樱花','海棠','白蜡','水蜡','雪松','竹子','云杉','红叶石楠','红皮榕','华山松','杉树','流苏树']}, 
{name:'花卉盆栽', keywordsList:['丁香','月季','兰花','牡丹','玫瑰','芍药','水仙','茉莉花','鸡冠花','芙蓉花','仙人掌','芦荟','三角梅','银边草']}, 
]}, 
{name:'农资农机', goods_typeList:[ 
{name:'农资', keywordsList:['牧草','温室组件','其他农资','木质工具','塑料膜','活性花粉','灭虫灯','蜂箱','遮阳网','木材']}, 
{name:'农具', keywordsList:['温室大棚','普通工具','育苗防护资材','畜养殖设备','管道管件','滴灌喷灌','农用动力车','农用拖拉机','果蔬机械','饲料机械','农机配件']}, 
{name:'农机', keywordsList:['农用动力车','农用拖拉机','果蔬机械','饲料机械','农机配件','食品加工机械','农用检测仪器']}, 
]}, 
{name:'种子种苗', goods_typeList:[ 
{name:'蔬菜种子', keywordsList:['豆角种子','花椒种子','香菜种子','韭菜种子','西葫芦种子','高钙菜种子','贡菜种子','苦瓜种子','茄子种子']}, 
{name:'水果类种子', keywordsList:['蓝莓种子','李子种子','脆柿种子','猕猴桃种子','大青枣种子','火龙果种子','柑橘种子']}, 
{name:'粮油类种子', keywordsList:['高粱种子','油菜籽种子','黄豆种子','大麦种子']}, 
{name:'水果种苗', keywordsList:['','','','']}, 
{name:'蔬菜种苗', keywordsList:['其他菜','甜麦菜苗','黄瓜种苗','豌豆苗','青豆苗']}, 
]}
];