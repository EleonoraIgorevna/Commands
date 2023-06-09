
# вывести имя ОС
uname

# вывести имя ОС с подробностями
uname -a

# запросить имя хоста (машины)
hostnamectl

# вывести инфо о дистрибутиве
lsb_release -a

# обновить список репозиториев
sudo apt update

# установить пакет mc
sudo apt install mc

# запустить Midnight Commander
mc

############################################################## Разбор ДЗ
# Вывод информации о версии ОС (дистрибутива Linux)
uname -a

hostnamectl

lsb_release -a

# посомтреть то же в файле
cat /etc/os-release

cat /etc/issue


############################################################### SSH-подключение

# Если такой службы нет, необходимо её установить: 
sudo apt install openssh-server -y
	ключ -y нужен, чтобы установщик не задавал нам вопросов

# включить службу SSH
sudo systemctl enable ssh

# запустить SSH сервер
sudo systemctl start ssh


# убедимся, что на сервере запущен OpenSSH Server: 
systemctl status ssh 


# обычно IP-адрес смотрят командой
ip addr

# посмотреть IP без лишней информации
hostname -I


# подключаемся клиентом ssh
ssh student@192.168.56.107

# в общем виде
ssh [user_name]@[ip_address]


############################################################### Файлы и папки

# Общие команды Linux для работы с файлами и папками. Вызов документации по командам

# Напишем первую команду в терминале. По традиции это вывод текста Hello, world!

echo "Hello, world!"
echo 'Hello, world!'
echo Hello, world!


# Очистка экрана
clear
Ctrl + L


# Просмотреть текущего пользователя
whoami
who

# Перемещение по директориям
# Текущую директорию можно посмотреть с помощью команды pwd:
pwd

# Поднимемся на уровень выше, чтобы оказаться в директории /home
cd ..

# Вернемся в директорию /home/ubuntu с помощью команды cd ubuntu:
cd ubuntu

# Теперь еще раз зайдем в директорию /home, но используем другую команду: cd /home

# И зайдем еще раз в домашнюю директорию, но не с помощью команды cd ubuntu (это относительный путь к папке), а посредством указания абсолютного пути
cd /home/ubuntu

# Еще один способ попасть в домашнюю директорию — применить команду 
cd ~
cd

# А теперь можно перейти в корневую папку. Это директория самого верхнего уровня, она обозначается как /. Соответственно, команда для перехода в нее — 
cd /

# Просмотр содержимого директории
# Посмотреть содержимое директории можно с помощью команды ls:
ls

#!! Отличие в отображении файлов и папок
# Показать домашние директории пользователей
ls /home/ 

# Посмотреть расширенную информацию о файлах и папках в данной директории можно с помощью команды 
ls -l
# Здесь мы видим не только названия файлов и папок, но и информацию о правах на файлы, список владельцев файлов, размер и дату последнего модифицирования

# Чтобы увидеть еще и скрытые файлы (их название начинается с точки), нужно запустить команду 
ls -a 

# а чтобы совместить показ скрытых файлов с расширенной информацией о файлах — применить команду 
ls -la
ls -l -a
ls -a -l
ls -al
# Для это команды есть псевданим 
ll

# Чтобы посмотреть содержимое папки, не заходя в нее, можно применить команду наподобие 
cd /home 
# (указывается абсолютный или относительный путь) 

# или 
cd -l /home
# если нужна подробная информация о файлах

# Создание и изменение папок
# Вернемся в домашнюю директорию и создадим там папку test_dir с помощью команды 
mkdir test_dir
sudo!!
/ - корень
mkdir test_dir - создать папку в корне

# Затем проверим наличие новой папки в домашней директории, введя команду 
ls

# Способы создания файла:
echo > newFile1.txt
cat > newFile2.txt
touch newFile3.txt
> newFile4.txt
nano newFile5.txt или vim

# С помощью команды mv можно перемещать или переименовывать файлы и папки. Переименуем папку test_dir в test_dir2 с помощью команды 
mv test_dir test_dir2 

# и проверим содержимое текущей директории
ls

# Удаление файлов и папок

# Файлы и директории удаляются с помощью команды rm. В случае директорий нужно указывать дополнительный параметр -r, который отвечает за рекурсивное удаление, так как должна быть удалена не только сама директория, но и ее содержимое: 
rm -r test_dir2

# После этого проверим, что из текущей папки исчезла test_dir2
ls

# Создание текстовых файлов

# А теперь создадим пустой текстовый файл test.txt, используя команду echo без аргументов
echo > test.txt 
# Если перед стрелочкой указать текст, то этот текст окажется в файле

# Проверим содержимое директории
ls

# Запишем текст в этот файл 
echo Hello > test.txt

# Посмотрим на содержимое файла при помощи команды 
less test.txt

# Линукс не операется на расширение, Линукс смотрит только на контент файла
 

# Выйти из просмотра файла можно, нажав клавишу q. Допишем в файл слово world 
echo world >> test.txt 

# Просмотрим содержимое файла 
less test.txt

# А теперь перезапишем содержимое файла с помощью команды 
echo “new text” > test.txt 
# (в этот раз текст взят в двойные кавычки, так как это более приемлемый вариант для работы с ним) 

# и проверим содержимое test.txt, используя 
less test.txt

# Видим, что старый текст исчез и на его месте появился новый. Создадим копию файла в той же директории 
cp test.txt test2.txt 
# Копируем папку рекурсивно
cp dir1 dir2 -r 

# Затем проверим содержимое текущей директории и увидим там два текстовых файла
ls

# Смотрим содержимое каталогов
tree

# Удалим старый файл 
rm test.txt 

# Затем создадим папку new и переместим туда файл test2.txt 
mv test2.txt new/ 

# Посмотрим содержимое текущего каталога
ls

# а затем — содержимое папки new
ls new

# Переименуем файл test2.txt в test3.txt, не заходя в папку new 

mv new/test2.txt new/test3.txt 

# Убедимся, что файл переименован, используя команду 
ls

# Удалим папку new рекурсивно
rm -r new
rm -r 
# Удалим форсированно, когда не хватает прав
rm -rf

# и убедимся, что домашняя директория пуста
ls

#!! При наборе названий файлов и папок в терминале не обязательно вводить их имена полностью — достаточно нажать клавишу Tab, чтобы имя продолжилось автоматически. 

#!! Также удобно применять клавиши «Вниз» и «Вверх», если требуется заново набрать команду, которая уже была введена до этого

# Вызов документации по командам
# Чтобы просмотреть информацию по команде, достаточно набрать ее и --help после нее (перед help — два дефиса). Например, так можно посмотреть информацию по команде ls 
ls --help

# Другой вариант вызова информации — команда man (от слова manual). 
man ls
# Чтобы выйти из мануала, следует нажать клавишу q


############################################################## less, more, tail, head
•	глянем справку
more --help

•	выведем текст файла
more mciri_poem.txt

•	выведем по 15 строк, начиная со 2-й главы
more +33 -15 mciri_poem.txt

•	найдем место, где встречается слово «однажды»
less -N -I -p "однажды" mciri_poem.txt

•	выведем первую строку из файла
head 1 mciri_poem.txt

•	вывведем из файла последние 3 строки
tail -3 mciri_poem.txt

# Читает логи
tail -f logs.txt


############################################################## nano
nano test.txt 
nano ls.txt

# Запуск с резервной копией
nano -B mciri_poem.txt

# горячие клавиши:
	Ctrl+k – вырезать строку с курсором
	Ctrl+u – вставить из буфера, в месте курсора
	Ctrl+6 – начать выделение
	Ctrl+Shift+6 – скопировать выделенное
	Ctrl+w – поиск строки
	Ctrl+\ - поиск с заменой
	Ctrk+r – вставка из другого файла в текущее место курсора
	Ctrl+c - Показать позицию курсора
	Ctrl+_ (Ctrl+Shift+-) - Переместить курсор в позицию


############################################################## vim
vimtutor - обучалка
o	Возможно, потребуется установить (обучалку): 
	sudo apt install vim-runtime


# Редактируем файлы с помощью редактора vim
vim test.txt 
vim ls.txt 

# горячие клавиши (в режиме команд (normal)):
o	:w <Enter> - сохраним файл
o	:q <Enter> - выйдем из редактора
o	dd – вырезает строку
o	5dd – вырезает 5 строк
o	2dw – вырезает 2 слова
o	p – вставить из буфера
o	u – undo
o	3u – undo 3 times
o	2w – на 2 слова вправо
o	10h – на 10 символов влево
o	3j – на 3 строки вниз
o	3k – на 3 строки вверх
o	/строка – ищет строку
o	n – перейти к следующему результату поиска
o	Shift+n – перейти к предыдущему результату поиска

# режимы vim
o	(Esc) normal: режим команд
o	вставки
	(i) insert: режим вставки
	(a) append: режим вставки
	(R) replace: режим замены
o	 (v) visual: визуальный – для работы с выделеным текстом
o	(:!) режим внешних команд

####################################################### Разбор ДЗ
# 1. Создать каталоги students и mentors в домашней директории, а в них — текстовые файлы students_list.txt и mentors_list.txt соответственно.
# создадим нужные папки
mkdir students
mkdir mentors

# 2. заполнить файлы данными
# заполним студентов
cat > students_list.txt << stop
Иван Диванов
stop

# заполним наставников
cat > mentors_list.txt << stop
Cтивен Хокинг
stop

#	3. Переместите файл mentors_list.txt в папку students.
mv mentors/mentors_list.txt students/

#Переносим директорию
mv rating-project/ /opt
sudo !!
 
# 4. Удалите папку mentors.
# способ из прошлого урока
rm -r mentors/

# безопасный способ удаления только пустого каталога
rmdir mentors/

# 5. Переименуйте папку students в students_and_mentors.
mv students students_and_mentors
 
# 6. Удалите папку students_mentors вместе с содержимым.
# правильное удаление (с ключом –r)
rm -r students_mentors

# 7. Подключитесь к машине с Linux по протоколу SSH.
ssh student@192.168.0.107

#################################################### Права в Linux
# Информация о пользователе
whoami

# В каких группах состоит текущий пользователь
groups user1

# Создание пользователя
sudo useradd -m -s /bin/bash user1

# Определяем пароль для пользователя
sudo passwd user1

# Параметры будут даны пользователю после создания по умолчанию
useradd -D

# Зайдём в оболочку под другим пользователем
su user1

# Проверим
whoami

# Переключаем юзера
sudo su ( switch user)
# - админ
& - пользователь

# Добавляем пользавателя
useradd/adduser

# Добавляем группу
groupadd/addgroup

# Выйти из сессии этого пользователя
exit

# удаление пользователя
whatis userdel
userdel -- help
userdel -fr user1

#заблокировать пользователя
sudo usermod –L user1
#разблокировать пользователя
sudo usermod –U user1

# дать пользователю права суперпользователя (root), добавив его в группу "sudo"
sudo usermod -G sudo user1

# переключимся в режим суперпользователя
sudo su
	В строке приглашения знак $ изменился на #

# убедимся, что мы работаем под суперпользователем
whoami

# в данном режиме не требуется для привилегированных операций каждый раз набирать префикс sudo
apt update

# выйдем из этого режима
exit

# в обычном режиме (без привилегий) команду обновления репозиториев надо выполнять с префиксом sudo, иначе получим ошибку нехватки прав
apt update
sudo apt update


# создать пользователя , который будет логиниться в оболочку bash
sudo useradd -s /din/bash user1

# создать пользователя отдельно без пароля и задаем ему домашний каталог
sudo useradd -m -d /home/user2 -s /bin/bash user2

# зададим пароль пользователю
sudo passwd user1

# зайдем из-под него
su user1

# задаем пароль
sudo passwd

# убедимся, что мы работаем под новым пользователем
whoami
# заглянем в файлик passwd
more /etc/passwd

# можно отфильтровать по имени пользователя
more /etc/passwd | grep ^user

# список групп
more /etc/group

# пароли (их хэши)
more /etc/shadow

# удалим с ключом  –f (force, принудительно)
sudo userdel –f user9

# создадим группу dev_team
groupadd dev_team
# проверим
more /etc/group | grep dev

# добавим в группу участника команды разработки (user11)
sudo usermod -G dev_team user11

# Изменяет пользователя
usermod

# Удаляем пользователя
userdel

####################################################### Разбор ДЗ
# 1. Управление пользователями

# создадим пользователя с домашней папкой и оболочкой Bash
sudo useradd -s /bin/bash -d /home/user11 -m user11

# проверим успешное создание пользователя
tail /etc/passwd
tail /etc/group
tail /etc/shadow

# зададим ему пароль отдельной командой
sudo passwd user11

# удалим юзера вместе с его домашней папкой (ключ -r)
sudo userdel user11 -r


# 2. Управление группами

# создадим новых менеджеров
sudo useradd -s /bin/bash -d /home/manager1 -m manager1
sudo useradd -s /bin/bash -d /home/manager2 -m manager2	

# создадим новых тестировщиков
sudo useradd -s /bin/bash -d /home/tester1 -m tester1
sudo useradd -s /bin/bash -d /home/tester2 -m tester2	

# создадим группы для каждого отдела
sudo groupadd managers
sudo groupadd testers
# проверим группы
tail /etc/group

# добавим сотрудников в группы своих отделов
sudo usermod -a -G testers tester1
sudo usermod -a -G testers tester2
sudo usermod -a -G managers manager1
sudo usermod -a -G managers manager2

# проверим группы
tail /etc/group

# переместим пользователя tester1 в группу managers:
# удалить пользователя из всех групп, кроме основной
usermod -G "" tester1
# или командой deluser (при наличии пакета adduser)
sudo deluser tester1 testers
# добавим его в целевую группу
sudo usermod -a -G managers tester1

# добавим пользователя manager1 в группу testers
sudo usermod -a -G testers manager1

# удалим пользователя manager1 из группы testers
sudo deluser manager1 testers


# 3. Создать пользователя с правами суперпользователя. Проверить результат.

# создадим нового админа
sudo useradd -s /bin/bash -d /home/admin -m admin

# добавим его в целевую группу
sudo usermod -a -G sudo admin

# проверим группы админа
groups admin

############################################################## cat
# Просмотр с помощью cat
cat test.txt 

# Создадим новый файл 
man ls > ls.txt

# Объединяем два файла
cat file1 file2
 
# Объединяем три файла
cat file1 file2 file3
 
# Объединяем и сохраняем в файл 
cat file1 file2 file3 > total

############################################################## Конвейер команд (pipes)
# Использование утилиты для подсчёта строк, слов и символов в файле
man wc

# Подсчитываем строки с использованием конвеера |
cat file1 | wc -l

# Подсчитываем строки в трёх файлах 
cat file1 file2 file3 | wc -l
 
# Подсчитываем байты в трёх файлах 
cat file1 file2 file3 | wc -c

# Получаем значения по количеству строк, слов и символов 
cat file1 file2 file3 | wc

# Подсчитываем слова 
cat file1 file2 file3 | wc -w

# Используем шаблон подстановки * 
cat file* | wc 

# Составляем более сложную команду
ls -l | grep txt | wc -l

# Сколько раз слово 'ты' встречается в поэме Мцыри?
cat mciri_poem.txt | grep -o 'ты' | wc -w


############################################################## Перенаправление потоков ввода-вывода

# отправим результат выполнения команды find в файл python_scripts.txt, а ошибки будем писать в errors.txt 
find / -type f -name *.py 1>python_scripts.txt 2>errors.txt

# пусть ошибки уходят в тот же файл, куда и результаты поиска
find / -type f -name *.py 1>all_results.txt 2>&1


############################################################## Мониторинг ресурсов
############################################################## Использование оперативной памяти и процессорного времени
# top
•	запустим top c сортировкой по PID
top –o PID
# Команда c меняет отображение последней колонки COMMAND
# Команда V меняет отображение последней колонки COMMAND на вид дерева

# отфильтровать процессы по пользователю
top –u user_new
# htop

# Установим
sudo apt install htop

# Запустим
htop
Команды
•	F2 – вход в меню
•	F3 – поиск по процессам
•	F5 – отображать процессы в виде дерева
•	F6 – сортировка
o	t – инверсия сортировки
•	F9 – завершить процесс (kill)
•	u – фильтрация по пользователю
•	F10 - выход


# Загруженность процессора

# Зеленым цветом в диаграмме, показывающей загруженность CPU,
# обозначается часть времени процессора, занятая процессами с
# нормальным приоритетом.
# Синим обозначается часть, занятая процессами с низким приоритетом. 
# Красным — процессы с приоритетом ядра. 
# Желтым — время процессора, потраченное на виртуализацию либо невольно 
# «украденное» другими пользователями, которые работают в других виртуальных 
# серверах, но на тех же физических ресурсах, и активно нагружают процессоры.

# Загруженность памяти

# Диаграмма, отображающая использование оперативной памяти, 
# состоит из трех цветов: зеленого, синего и желтого.

# Зеленый цвет показывает используемую оперативную память, 
# синий — буферы и 
# желтый — системный кеш.

# Возможные значения состояния процесса:

# R — [running or runnable] запущенные или находятся в очереди на запуск
# S — [interruptible sleep] прерываемый сон
# D — [uninterruptible sleep] непрерываемый сон (в основном IO)
# Z — [zombie] процесс зомби, прекращенный, но не забранный родителем
# T — Остановленный сигналом управления заданиями
# t — Остановленный отладчиком
# X — Мёртвый (не должен показываться)

# найдем среди запущенных процессов браузер Firefox
ps aux | grep firefox

# завершим процесс Firefox по его PID
kill 12512


############################################################## Мониторинг дисков
# Команда df
df -h

# После запуска программы можно увидеть название устройства (диска),
# общий размер, используемое пространство в абсолютном значении,
# доступное пространство, используемое пространство в процентах
# и путь, к которому прикреплено устройство.

df –hT --total

# Команда du
du
du -h

#Если нужно посмотреть суммарный объем файлов и папок,
# находящихся в текущей директории, следует запустить команду 
du -s
du -sh

# С итогами
du -sсh


####################################################### systemctl

# Подсчитаем количество служб на машине
systemctl | wc -l

# посмотрим инфо о службе SSH
systemctl status sshd


