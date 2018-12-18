#!/bin/bash
echo "файл u1" > u1.txt
echo "файл u2" > u2.txt
echo "файл u3" > u3.txt
cd ~
ls -l > ~/listing1
cat listing1
echo "Введите пароль от root:"
sudo cat listing1
sudo echo "файл r1" > r1.txt
sudo echo "файл r2" > r2.txt
sudo echo "файл r3" > r3.txt
ls -l ~ >> listing1
cat listing1
echo "Попытка изменить собственный файл." > u1.txt #Новый комментарий!
echo "Попытка изменить собственный файл. Успешно!" > u2.txt
echo "Попытка изменить собственный файл. Успешно!" > u3.txt
echo "Попытка изменить собственный файл. Успешно!" > r1.txt
echo "Попытка изменить собственный файл. Успешно!" > r2.txt
echo "Попытка изменить собственный файл. Успешно!" > r3.txt
chmod ug-w u1.txt #Запрет записи в u1 для владельца и группы
chmod ugo+w r1.txt #Разрешения записи для всех в файл r1
echo "Попытка изменить файл u1" > u1.txt
echo "Неуспешно!"
echo "Попытка изменить файл r1. Успешно!" > r1.txt
sudo chown root ~/u1.txt #Изменение собственнка
sudo chgrp stud ~/u1.txt #Изменение группы
sudo chown root ~/u2.txt
sudo chgrp stud ~/u2.txt
echo "Попытка изменить файл u2" > u2.txt
echo "Неуспешно! Файл имеет другого владельца."
echo "#!/bin/bash
echo 'Hello, World!'
echo -n 'Im '
whoami" > hello.sh
hello.sh
sh hello.sh
chmod +x hello.sh #установление прав на исполнение
./hello.sh
sudo mkdir /home/shared
sudo mkdir /home/shared/pub
sudo mkdir /home/shared/upload
sudo mkdir /home/shared/temp
sudo chown root /home/shared/pub
sudo chgrp users /home/shared/pub
sudo chmod 775 /home/shared/pub
sudo chown nobody /home/shared/upload
sudo chgrp users /home/shared/upload
sudo chmod 130 /home/shared/upload
sudo chown stud /home/shared/temp
sudo chgrp users /home/shared/temp
sudo chmod 777 /home/shared/temp