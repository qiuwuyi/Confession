#!/bin/sh
add()    
{    
   git add .  
}    
commit()
{
   git commit -m $MASSAGE
}
push()
{
   git push origin $BRANCH
}
branch(){
   git branch
}
addRes=`add`
echo $addRes
echo "添加成功"
echo "---------------------------------------------------------"
echo "请填写提交本地内容信息！"
read MASSAGE
echo "正在提交本地仓库请稍等..."
commitRes=`commit`
echo $commitRes
echo "提交本地仓库成功！"
echo "---------------------------------------------------------"
branchRes=`branch`
echo "您当前所在的分支是：${branchRes}"
echo "---------------------------------------------------------"
echo "请填写你要提交到远程的哪个分支！"
read BRANCH
echo "正在提交远程仓库请稍等..."
pushRes=`push`
echo $pushRes
echo "提交远程仓库成功,添加的远程分支是${BRANCH}"
echo "---------------------------------------------------------"
