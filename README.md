## Введение

1. Входим в свою учетную запись GitHub и создаем репозиторий на GitHub с именем git-practice
   
    Копируем URL репозитория.

    Открываем терминал и с помощью команды `cd` переходим в папку, где будет локальная копия репозитория.
   
    Вводим команды, используя скопированный URL:

         git clone git@github.com:AlexxStudio/git-practice.git

         cd git-practice
2.  Создаем с помощью редактора Gedit новый текстовый файл  example.txt и добавляем в него текст.
 
    Возвращаемся в терминал и вводим команды :
 
          git add example.txt
    
          git commit -m "File added example.txt"

          git push origin main
3.  Создаем новую ветку с названием  feature-branch  и переключаемся на нее:

         git branch feature-branch
    
         git checkout feature-branch
4.  Добавляем в файл example.txt текст.

    Добавляем в новую ветку файл командой
    
         git add example.txt

    Делаем коммит изменений командой
    
         git commit -m "File updated example.txt"

    Пушим изменения в ветку feature-branch командой 
   
         git push origin feature-branch

5. Переключаемся обратно в основную ветку  main :

         git checkout main

   Сливаем изменения из ветки feature-branch в основную ветку:

         git merge feature-branch
         git push origin main

## Работа с ветками

1. Создаем с помощью редактора Gedit новый текстовый файл example2.txt с базовой структурой книги:

  [![101.png](https://i.postimg.cc/xCjtD5KZ/101.png)](https://postimg.cc/3y6g2gfj)

2. Создаем ветку "feature-login" для разработки новой функциональности:

         git checkout -b feature-login
   
3. Вносим изменения в файл example2.txt

  [![102.png](https://i.postimg.cc/gkgyCS8h/102.png)](https://postimg.cc/YhmmgxX2)

4. Делаем коммит изменений и отправляем ветку на GitHub:

         git add example2.txt
         git commit -m "Добавлена глава 3: Вход в систему"
         git push origin feature-login


## Работа с удаленным репозиторием

1. Переключаемся на основную ветку (main) и вносим изменения:

         git checkout main

2. Вносим изменения в основной ветке (добавляем описание книги):

[![103.png](https://i.postimg.cc/L4N4PX7z/103.png)](https://postimg.cc/QVKrGXjt)

3. Делаем коммит изменений и отправляем ветку на GitHub:

         git add example2.txt
         git commit -m "Изменено название книги и введение"
         git push origin main

## Моделирование конфликта

1. Возвращаемся в ветку "feature-login" и внесите изменения в том же участке:

         git checkout feature-login

2. Вносим изменения на том же участке (глава 2) в файле

[![104.png](https://i.postimg.cc/3JxPfyQ9/104.png)](https://postimg.cc/w3nf7jvs)

3. Закоммичиваем изменения и отправляем их на GitHub:

         git add exmaple2.txt
         git commit -m "Added section about conflict magic"
         git push origin feature-login

## Разрешение конфликта

1. Возвращаемся в основную ветку и сливаем изменения:

         git checkout main
         git pull origin main

2. Возникает конфликт, разрешаем конфликт ,редактируя example2.txt и  удалив метки и оставив нужные изменения.

3. Закоммичиваем разрешение конфликта и отправляем изменения на GitHub:

         git add example2.txt
         git commit -m "Resolved conflict in chapter 2"
         git push origin main
   
## Автоматизация проверки формата файлов при коммите

1. Для решения задачи автоматизации проверки формата файлов при коммите с использованием Git Hooks создаем bash-скрипт (например, check_format.sh),
который будет выполнять проверку расширения .txt файлов. 
Текст скрипта
[![106.png](https://i.postimg.cc/sfnTmnnM/106.png)](https://postimg.cc/hhd8P0Rn)

Результаты выполнения

[![105.png](https://i.postimg.cc/c49rk3Y1/105.png)](https://postimg.cc/YhFrhhbT)

 2. Добавили скрипт в репозиторий. Скопировали скрипт в .git/hooks и назвали его pre-commit. Проверили права на выполнение.

          cp check_format.sh .git/hooks/pre-commit
          chmod +x .git/hooks/pre-commit

 3.  Внесли изменения и закоммитили .
     Теперь, при каждой попытке закоммитить изменения, Git будет автоматически выполнять проверку формата файлов перед коммитом. 

          git add .
          git commit -m "Add changes"

## Использование Git Flow в проекте

Интегрировали Git Flow в проект для управления циклом разработки, создания релизов и управления hotfixes. 
1. Устанавливаем  Git Flow на локальную машину:

           sudo apt-get install git-flow

[![107.png](https://i.postimg.cc/1X8sCsdW/107.png)](https://postimg.cc/dZcbDPwd)

2. Создаем ветку "task-management" и выполняем инициализацию Git Flow.

            git branch task-management
            git flow init
[![110.png](https://i.postimg.cc/B6t8x9Jg/110.png)](https://postimg.cc/62J5XP22)

3. Создаем ветку для новой функциональности "task-management":

            git flow feature start task-management

[![109.png](https://i.postimg.cc/HnJNMxJt/109.png)](https://postimg.cc/q6TQVpxt)

4. Создаем файл task_manager.py и добавляем этот файл в Git командой

            git add task_manager.py
   
   Коммитим изменения

            git commit -m "Добавлен функционал управления задачами"

[![111.png](https://i.postimg.cc/TYWys8Zm/111.png)](https://postimg.cc/bspNG5YN)

5. После завершения разработки функции завершаем фичу и объединяем ее с основной веткой:

            git flow feature finish task-management

[![112.png](https://i.postimg.cc/8cLbNF7Q/112.png)](https://postimg.cc/p5XjBLQq)

Git Flow автоматически переключился на ветку task-management и выполнил слияние. 

6. Создаем ветку "develop"
   
         git checkout -b develop
   `
   [![113.png](https://i.postimg.cc/MTkypygP/113.png)](https://postimg.cc/p9Z90nWz)
   
   и начинаем релиз:

         git flow release start v1.0.0
   
   [![114.png](https://i.postimg.cc/RVsXwChc/114.png)](https://postimg.cc/2VWQDD46)


8. Вносим изменения, связанные с релизом (обновляем версию в файле version.txt):

         echo "v1.0.0" > version.txt
         git add version.txt
         git commit -m "Обновлена версия для релиза v1.0.0"

[![115.png](https://i.postimg.cc/QtNrHxVR/115.png)](https://postimg.cc/f3PPPscK)

8. Завершаем релиз :

         git flow release finish v1.0.0

[![116.png](https://i.postimg.cc/0QDGzmHN/116.png)](https://postimg.cc/S2QY5X40)

   Конфликтов не обнаружено

12. Завершаем работу и отправляем изменения на удаленный репозиторий:

      git push origin develop

[![120.png](https://i.postimg.cc/zvpKRH9Z/120.png)](https://postimg.cc/9wRr60mJ)

      git push origin main


