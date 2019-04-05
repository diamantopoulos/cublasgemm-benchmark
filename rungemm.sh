for ((i=0;i<$1;i++))
do
    echo "$i"
    ./gemm $2 $3 &
done
wait
#./gemm 32768 1
