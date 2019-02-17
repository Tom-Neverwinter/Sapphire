#!/bin/bash
cd bin
./dbm --mode initialize --user root --pass password --database sapphire --sfile sql/schema/schema.sql --ifile sql/schema/inserts.sql
./dbm --mode liquidate --user root --pass password --database sapphire --force
cd ..

read -p "Press enter to continue"
