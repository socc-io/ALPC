
# 남길 파일 한개를 받는다 $1 (했음) 
target=$1

#
# 현재 폴더에서 파일들을 읽어옴 (했음)
files=`find . -name "*" -and -not -name  $target -and -not -name "."`

echo $files

#######읽어온 파일들을 하나하나 어떻게 비교하는지 모르겠어요....ls나 find쓰면 파일들의 '목록'만 나오는건데..!#######

# 읽어온 파일들과 $1 과  용량이 같으면  내용 비교 
#                        용량이 다르면  패스


for x in $files; do
    echo $x
    cat $x
done

#target_vol =$(du -b $1)

# if ["$target_vol" == "??"];
# then 
#   for 
#    do
#        echo "delete"
        #rm ..
#    done
#else
#    echo "no delete"
# fi


# 용량을 얻는 방법 du -b 파일명
# 내용을 읽는 방법 cat 파일명
#
# 비교하는 방법은 bash if[ -eq ]
# if [ "$x" == "valid" ]; then
#  echo "x has the value 'valid'"
#  fi

# 내용이 같으면, 같은것은 지운다 rm 



