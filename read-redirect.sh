#!/bin/bash

tty=`tty` # 명령어 실행 결과를 대입
while read question # while에 read 명령어 지정한 뒤 done 직후 리다이렉트를 사용
do
  echo $question
  read dir < $tty
  echo "Command: ls $dir"
  ls $dir
done < read-redirect-question.txt