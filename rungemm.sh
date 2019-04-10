#time . rungemm.sh 5 512 1 1

if [ "$#" -ne 4 ]; then
    echo "syntax: . rungemm.sh #gemms size repeats cuda_devs"
    return 1;
fi

for ((i=0;i<$1;i++))
do
    n=$(($i%$4))
    echo "$i on $n"
    CUDA_VISIBLE_DEVICES=$n ./gemm $2 $3 &
done
wait
#./gemm 32768 1
