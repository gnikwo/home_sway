FILES=$(find $1 -maxdepth 1 -name "*.jpg" | sort)
while true
do
    for FILE in $FILES
    do
        ogurictl output "*" --image "$FILE";
        sleep $2;
    done
done
