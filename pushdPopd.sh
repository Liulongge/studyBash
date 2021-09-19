echo "当前路径为：" && pwd
pushd ../

echo "当前路径为：" && pwd

pushd ~
echo "当前路径为：" && pwd

popd
echo "当前路径为：" && pwd

popd
echo "当前路径为：" && pwd

echo -e "\e[1;31m This is red text \e[0m"

echo -e "\e[1;32m Green \e[0m"