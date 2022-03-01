#/!bin/bash

>fkdrop.txt
>drop.txt
>create.txt
>load.txt
>pk.txt
>fk.txt

echo "*** ETL UNIX PROJECT ***"

# Dropping Foreign Keys
sql < /home/Project/SQL/Script/fkdrop.sql &>fkdrop.txt

error1=`cat fkdrop.txt|grep -o altered|wc -l`

if [ $error1 -eq 10 ]; then
        echo "Foreign keys dropped successfully"
else
        echo "Failed to drop foreign keys"
fi

echo "--- Please Wait ---"
echo $error1


# Dropping Tables
sql < /home/Project/SQL/Script/drop.sql &>drop.txt

error2=`cat drop.txt|grep -o dropped|wc -l`

if [ $error2 -eq 11 ]; then
        echo "Tables dropped successfully"
else
        echo "Failed to drop tables"
fi

echo "--- Please Wait ---"
echo $error2


# Creating Tables
sql < /home/Project/SQL/Script/create.sql &>create.txt

error3=`cat create.txt|grep -o create|wc -l`

if [ $error3 -eq 11 ]; then
        echo "Tables created successfully"
else
        echo "Failed to create tables"
fi

echo "--- Please Wait ---"
echo $error3


# Loading Data into Tables
for i in categories customers employees employeesterritories orderdetails orders products region shippers suppliers territories
do
sqlldr userid=shubham_sl/shubham_sl data=/home/Project/SQL/Data/$i.csv control=/home/Project/SQL/Control/$i.ctl &>> load.txt

if [ $? -eq 0 ]; then
	echo "Data loaded sucessfully"
else
	echo "Failed to load data"
fi
done

echo "--- Please Wait ---"
echo $error4


# Applying Primary Keys
sql < /home/Project/SQl/Script/pk.sql &>pk.txt

error5=`cat pk.txt|grep -o altered|wc -l`

if [ $error5 -eq 11 ]; then
        echo "Primary keys applied successfully"
else
        echo "Failed to apply primary keys"
fi

echo "--- Please Wait ---"
echo $error5


# Applying Foreign Keys
sql < /home/Project/SQL/Script/fk.sql &>fk.txt

error6=`cat fk.txt|grep -o altered|wc -l`

if [ $error6 -eq 10 ]; then
        echo "Foreign keys applied successfully"
else
        echo "Failed to apply foreign keys"
fi

echo $error6


mv *.txt ~/Project/Unix/Txt
mv *.log ~/Project/Unix/Log

echo "*** COMPLETED ***"
