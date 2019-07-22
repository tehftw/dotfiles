#!/bin/bash

colarr=(
'stepcol.kP: #P0P0P0' # k
'stepcol.rP: #P00000' # r
'stepcol.gP: #00P000' # g
'stepcol.yP: #P0P000' # y
'stepcol.bP: #0000P0' # b
'stepcol.cP: #00P000' # c
'stepcol.mP: #P000P0' # m
'stepcol.wP: #P0P0P0' # w
)

for i in 0 1 2 3 4 5 6 7 8 9 a b c d e f
do
	for c in "${colarr[@]}"
	do
		printf "${c}\n" | sed "s/P/${i}/g"
	done
done
