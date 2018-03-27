#!/usr/bin/env bash

MY_GEM_NAME=$(basename $(pwd) | sed 's@.gem$@@g')
MY_GEM_CLASS=$(ruby -e "print('${MY_GEM_NAME}'.capitalize.gsub(/_./) { |x| x[1].upcase  })")

find . -type d -name \*MY_GEM_NAME\* | awk "{ source=\$1; sub(/MY_GEM_NAME/, \"${MY_GEM_NAME}\", source); print \"mv \" \$1 \" \" source }" | bash
find . -name \*MY_GEM_NAME\* | awk "{ source=\$1; sub(/MY_GEM_NAME/, \"${MY_GEM_NAME}\", source); print \"mv \" \$1 \" \" source }" | bash
find -type f -exec sed -i'' "s@#MY_GEM_NAME#@${MY_GEM_NAME}@g" {} \;
find -type f -exec sed -i'' "s@#MY_GEM_CLASS#@${MY_GEM_CLASS}@g" {} \;
rm -rf init.sh

git remote set-url origin git@github.com:ajgon/${MY_GEM_NAME}.gem
git add -A
git commit --amend -an --no-edit

