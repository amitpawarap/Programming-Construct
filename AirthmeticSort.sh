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
