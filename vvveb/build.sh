#!/bin/bash

for f in public/themes/*
do
	if [ -e ./$f/gulpfile.js ]
	then
		echo $f
		#npm i --prefix $f
		#npm run gulp --prefix $f
	fi
done	

for f in public/admin/themes/*
do
	#echo ./$f/gulpfile.js;
	if [ -e ./$f/gulpfile.js ]
	then
		echo $f
		#npm i --prefix $f
		#npm run gulp --prefix $f
	fi
done

sudo rm -rf storage/compiled-templates/app_*  storage/compiled-templates/admin_* storage/cache/* public/page-cache/* public/assets-cache/* vvveb.zip

zip -9 -r vvveb.zip ./  ./public/themes/landing/ ./public/themes/blog-default/ -x '*/node_modules/*' -x '.git/*' -x '.codelite/*' -x '/config/db.php'  -x '*/src/*' -x '*/scss/*' -x '*/resources/svg/*/*/*.svg'  -x '/public/themes/*' -x '/public/resources/*' 
# add themes
zip -9 -r vvveb.zip ./public/themes/landing/ ./public/themes/blog-default/ ./public/themes/reporter/ -x '*/node_modules/*' -x '*/backup/*' -x '.git/*' -x '.codelite/*' -x '*/src/*' -x '*/scss/*' -x '*/resources/svg/*/*/*.svg' 
