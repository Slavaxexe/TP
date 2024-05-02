Техническое задание №1 (ТЗ1)
Задача:
Нужно написать скрипт на bash, который на вход принимает два параметра - две директории (входная директория и выходная директория). Во входной директории могут находиться как файлы, так и вложенные директории (внутри которых тоже могут быть как файлы, так и папки) - уровень вложенности может быть любой. Задача скрипта - "обойти" входную директорию и скопировать все файлы из нее (и из всех сложенных директорий) в выходную директорию - но уже без иерархии, а просто все файлы - внутри выходной директории.
Для запуска скрипта нужно:
1) Сделать скрипт исполняемый командой chmod +x copyfiles.sh
2) Запустить скрипт передав два аргумента ./copyfiles.sh /путь во входную дирректорию /путь в выходную директорию
3) При необходимости наличия прав доступа к директориям прописать sudo перед скриптом и ввести пароль впоследствии. 
