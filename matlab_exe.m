%% 取整练习
clear;clc;
a = [3.4 3.6 -2.4 -2.7];
res_round = round(a);
res_fix = fix(a);
res_ceil = ceil(a);
res_floor = floor(a);
disp(['round四舍五入：',num2str(res_round)]);
disp(['fix去除小数部分：',num2str(res_fix)]);
disp(['ceil向上取整：',num2str(res_ceil)]);
disp(['floor向下取整：',num2str(res_floor)]);
%% 复数
clear;clc;
% 构造复数
a1 = complex(2,5);
a2 = 2+5*1i;
if a1 ==  a2
    disp('结果相同');
end
% 求实部虚部
disp(real(a1));
disp(imag(a1));
%模值、幅角
disp(abs(a2));
disp(angle(a2));
% 共轭
disp(conj(a2));
%% 逻辑数值
clear;clc;
a1 = true(3,4);
a2 = false(3);

a3 = [1 2 3;-7 -8 9;0 2 5];
%数值类型转换为逻辑类型，非0为true1
a4  = logical(a3);
%% 函数句柄
clear;clc;
my_fun = @(x,y)sin(x)+3*cos(y);
disp(my_fun(pi/6,pi/3));

a1 = rand(3,4);
my_fun1 = @(x)x^2;
%arrayfun 将a1数据进行my_fun1函数处理，这里为平方处理
a2 = arrayfun(my_fun1,a1);
disp(a1);
disp(a2);
%% 结构体
clear;clc;
%创建结构体
person = struct('name','bob','age',18,'city','beijing');
%访问结构体
disp(person.name);
%修改结构体
person.age = 38;
%结构体矩阵
people(1) = struct('name','a','age',18);
people(2) = struct('name','b','age',28);
%% 元胞数组的使用
clear;clc;
% 创建元胞数组-元胞可以为各种数据类型
my_cell = {1,2,3;'text',rand(3,4),{1;2;3}};
% 元胞的索引访问
% 用小括号索引时显示结果为元胞整体的信息，用花括号时为元胞内容
disp(my_cell(2,1));disp(my_cell(2,2));
disp(my_cell{2,1});disp(my_cell{2,2});
% 元胞内容的修改
my_cell{2,1} = 'change_text';
disp(my_cell{2,1});
%cellfun函数功能类似arrayfun
%可视化
figure(1);
cellplot(my_cell,'legend');
%% 关系运算
clear;clc;
a = [1:3;4:6;5:7];
b = a > 5;
%将a矩阵中大于5的元素改为5
a(b) = 5;
disp(b);
disp(a);
whos
% 矩阵信息
%具体维数
my_size = size(a);
disp(my_size);
%行数和列数中大的那一个数
my_len = length(a);
disp(my_len);
%矩阵大小和数值类型
whos("a");
% 对矩阵的以下操作
%% 对矩阵的操作
clear;clc;
%产生特殊矩阵:全零、全一、单位、0~1随机、标准正态
a1 = zeros(3);
a2 = zeros(4,5);
disp(a1);disp(a2);
%传入参数类型和用法与a1、a2相同
b1 = ones(3);
b2 = eye(3);
b3 = rand(3);
b4 = randn(3);
for i = 1:4
    disp(eval(['b',num2str(i)]));
end
%元素删除--通过将某个元素修改为空格来删除
b4(2,2) = 0; %删除b4中第二行第二列元素
disp(b4);
b4(3,:) = [];%冒号为取所有的意思，这里是删除第三行所有元素
disp('删除第三行所有元素');
disp(b4);
%转置问题---当矩阵中含有复数时 .' 才是真正转置，普通转置会将复数变为共轭
b3(1,2) = 1-2*1i;
disp('普通转置');
disp(b3');
disp('特殊转置');
disp(b3.');
% 求和、积、差分
b5 = round(10*rand(3,4));
disp(b5);
disp('各列求和');disp(sum(b5));%默认第二个参数为1，1表示对各列求和
disp('各行求和');disp(sum(b5,2));%2表示对各行求和
disp('求和');disp(sum(sum(b5)));%对所有元素求和
disp('各列求积');disp(prod(b5));%用法和sum函数相同
%差分详解
c1 = diff(b5,1,1);%第一个参数为待求矩阵；第二个为差分阶数；...
                  % 第三个为维度默认为1，列间差分
c2 = diff(b5,2,1);
c3 = diff(b5,1,2);%行间差分
for i = 1:3
    disp(eval(['c',num2str(i)]));
end