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

         git add README.md
         git commit -m "Добавлен раздел о магии конфликтов"
         git push origin feature-login

       
