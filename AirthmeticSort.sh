#Airthmetic Sort  operation
#!/bin/bash -x

#Taking inputs
read -p "Enter value of a:" a
read -p "Enter value of b:" b
read -p "Enter value of c:" c

#Compute a+b*c
TOTAL1=$(($a + $b * $c))
echo "compute a+b*c:-"$TOTAL1

#Compute a*b+c
TOTAL2=$(($a * $b + $c))
echo "Compute a*b+c:-"$TOTAL2

#Compute c+a/b
TOTAL3=$(($c + $a / $b))
echo "Compute c+a/b:-"$TOTAL3

#Compute a%b+c
TOTAL4=$(($a % $b + $c))
echo "Compute a%b+c:-"$TOTAL4

#Result store into dictionary
DICT[TOTAL1]=$TOTAL1
DICT[TOTAL2]=$TOTAL2
DICT[TOTAL3]=$TOTAL3
DICT[TOTAL4]=$TOTAL4

#result store Dictionary to array
ARR[0]=${DICT[TOTAL1]}
ARR[1]=${DICT[TOTAL2]}
ARR[2]=${DICT[TOTAL3]}
ARR[3]=${DICT[TOTAL4]}


#Sort into Decending order
for ((ENTRY=0 ; ENTRY<4 ; ENTRY++))
do

        for ((ELEMENT=0 ; ELEMENT<4-ENTRY-1 ; ELEMENT++))
        do
                if ((${ARR[ELEMENT]} < ${ARR[$((ELEMENT+1))]} ))
                then
                        TEMP=${ARR[ELEMENT]}
                        ARR[$ELEMENT]=${ARR[$((ELEMENT+1))]}
                        ARR[$((ELEMENT+1))]=$TEMP
                fi
        done
done

echo "Decending Array:"
for ((ELEMENT=0; ELEMENT<4; ELEMENT++))
do
        echo ${ARR[ELEMENT]}
done

#Sort into Ascending Order.
for ((ENTRY=0 ; ENTRY<4 ; ENTRY++))
do

        for ((ELEMENT=0 ; ELEMENT<4-ENTRY-1 ; ELEMENT++))
        do
                if ((${ARR[ELEMENT]} > ${ARR[$((ELEMENT+1))]} ))
                then
                        TEMP=${ARR[ELEMENT]}
                        ARR[$ELEMENT]=${ARR[$((ELEMENT+1))]}
                        ARR[$((ELEMENT+1))]=$TEMP
                fi
        done
done

echo "Ascending Array:"
for ((ELEMENT=0; ELEMENT<4; ELEMENT++))
do
        echo ${ARR[ELEMENT]}
done

