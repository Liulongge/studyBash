# source 脚本作用：
# 1.刷新当前的shell环境
# 2.在当前环境使用source执行Shell脚本
# 3.从脚本中导入环境中一个Shell函数
# 4.从另一个Shell脚本中读取变量


FILE_TEST01_NAME="test01"

source ./test02.sh

VALUE="after source test02.sh"

echo "###### 运行 test01.sh ######"

function func01()
{
    echo "###### 运行 test02.sh func01 ######"
}

func01

func02

echo "FILE_TEST02_NAME="${FILE_TEST02_NAME}

# 结果如下：
# 在test01.sh bash 中通过 source 命令运行了 test02.sh
# 在source 之前的全局变量 将会被 test02.sh(子bash)继承
# 同时，子bush在的 全部变量也会对 父bash可见

###### 运行test02.sh ######
# FILE_TEST01_NAME=test01
# VALUE=
# ###### 运行 test01.sh ######
# ###### 运行 test02.sh func01 ######
# ###### 运行 test02.sh func02 ######
# FILE_TEST02_NAME=test02