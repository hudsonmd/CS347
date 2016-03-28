cat Project.ddl | sed -e "s/;/;~/" -e 's/"//g' | tr -s "\n~" " \n" | grep "ALTER TABLE.*KEY" | tr -d '\15\32' | java -jar DDLParser.jar

read -n 1 -s

cat Project.ddl | sed -e "s/;/;~/" -e 's/"//g' | tr -s "\n~" " \n" | grep "ALTER TABLE.*KEY" | tr -d '\15\32' | java -jar DDLParser.jar > Project.ddl2

cat Project.ddl | sed -e "s/;/;~/" -e 's/"//g' | tr -s "\n~" " \n" | grep "ALTER TABLE.*KEY" | tr -d '\15\32' | java -jar DDLParser2.jar > Project.ddl3

read -n 1 -s

