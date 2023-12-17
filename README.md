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

   https://i.postimg.cc/xCjtD5KZ/101.png


       
