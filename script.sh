cur_dir=$PWD
src_dirs=(mmcls mmdet mmseg)

for src_dir in ${src_dirs[@]};do
    mkdir ${src_dir}-out
done;


for src_dir in ${src_dirs[@]};do
    files=$(ls ${src_dir})
    for file in ${files}; do
        echo doing ${cur_dir}/${src_dir}/${file}
        python transfer.py ${cur_dir}/${src_dir}/${file} -o ${cur_dir}/${src_dir}-out/${file} 
    done;
done;