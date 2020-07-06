#Airthmetic Sort  operation
#!/bin/bash -x

#Taking inputs
read -p "Enter value of a:" a
read -p "Enter value of b:" b
read -p "Enter value of c:" c

#compute a+b*c
TOTAL1=$(($a + $b * $c))
echo "compute a+b*c:-"$TOTAL1
