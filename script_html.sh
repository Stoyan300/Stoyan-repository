#!/bin/bash
if  grep '2020' index.html
then
        sed -i -e 's/2020/2021/g' index.html
fi
