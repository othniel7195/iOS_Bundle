#!/bin/sh

productDir=${BUILT_PRODUCTS_DIR} #

Contents=${CONTENTS_FOLDER_PATH} #project.app/Contents

echo "productDir:${productDir}"

cd ${productDir}

echo `ls`

for file in `ls`; do
	if [ "$file" == "ImageB.bundle" ]; then
		
		ImageBBundlePath=${productDir}"/${file}"
		echo "ImageBBundlePath:${ImageBBundlePath}"

		if [ -d ${ImageBBundlePath} ]; then

			mainBundlePath=${productDir}"/${Contents}/"
			echo "mainBundlePath:${mainBundlePath}"

			cd ${ImageBBundlePath}
			echo `ls`

			for  file1 in `ls`; do

				if echo "$file1" | grep -E "png|nib" ; then
					
					echo "匹配到的资源:$file1"
					# cp -rf  强强行递归复制文件或目录，不论目标文件或目录是否已存在 源目录 -> 目标目录
					cp -rf $file1 ${mainBundlePath}
				fi

			done
			
		fi
	fi
done



