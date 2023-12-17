## Введение

1. Входим в свою учетную запись GitHub и создаем репозиторий на GitHub с именем git-practice
   
    Копируем URL репозитория.

    Открываем терминал и с помощью команды `cd` переходим в папку, где будет локальная копия репозитория.
   
    Вводим команды, используя скопированный URL:

         git clone git@github.com:AlexxStudio/git-practice.git

         cd git-practice
2.  Создаем новый текстовый файл  example.txt и добавляем в него текст, например, структуру книги (главы, параграфы...)
 
    Возвращаемся в терминал и вводим команды :
 
    git add example.txt
    
    git commit -m "File added example.txt"

    git push origin main

       
