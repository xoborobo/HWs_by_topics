# HWs_by_topics

##GitHub. HW_2
1. На локальном репозитории сделать ветки для:
- Postman
- Jmeter
- CheckLists
- Bag Reports
- SQL
- Charles
- Mobile testing

-- Предварительно создаем репозиторий для веток по темам занятий - при помощи интерфейса GitHub создаем 
новый репозиторий HWs_by_topics

-- Клонируем его на локальную машину `git clone https://github.com/xoborobo/HWs_by_topics.git`

-- Прописываем .gitignore для будущего main (в этом случае не потребуется прописывать ignore для веток)

````
переходим в нужный репозиторий
создаем файл: touch .gitignore 
в него записываем, что именно игнорируем (в данном случа - служебные файлы ide):
- открываем в редакторе micro: micro .gitignore
- вносим: .idea 
- сохранить и выйти (ctrl + s и ctrl + q)
- в терминале: git add .gitignore
- делаем коммит: git commit -m ".gitignore is now working"
- пушим: git push

````

-- Создаем ветки по темам через Терминал 
`git branch Postman; git branch Jmeter; git branch CheckLists; git branch Bag_Reports; git branch SQL; git branch Charles; git branch Mobile_testing`

-- Проверяем, все ли создалось `git branch` без параметров

----

2. Запушить все ветки на внешний репозиторий

-- В Терминале проверяем, где находимся и если нужно, переходим на origin ветку HWs_by_topics

-- После чего пушим новые ветки:
```
git push -u origin Postman 
git push -u origin Jmeter
git push -u origin CheckLists
git push -u origin Bag_Reports
git push -u origin SQL
git push -u origin Charles
git push -u origin Mobile_testing
````

----

3. В ветке Bag Reports сделать текстовый документ со структурой баг репорта

-- В Терминале переходим в ветку с репортами `git checkout Bag_Reports`

-- Создаем файл `touch hw2_git_bug_report_str.txt`

-- Редактируем файл и добавляем в него структуру баг-репорта

----

4. Запушить структуру багрепорта на внешний репозиторий

-- Добавляем файл в индекс `git add hw2_git_bug_report_str.txt`

-- Коммитим `git commit -m "В файл hw2_git_bug_report_str.txt добавлена структура баг-репорта"`

-- Пушим `git push`

---

5. Вмержить ветку Bag Reports в Main

-- В Терминале переходим на Main ветку `git checkout main`

-- Делаем мёрдж `git merge Bag_Reports`

----

6. Запушить main на внешний репозиторий.

`git push`

----

7. В ветке CheckLists набросать структуру чек листа.

-- В Терминале переходим в ветку с чек-листами `git checkout CheckLists`

-- Создаем файл `touch hw2_git_checklist_str.txt`

-- Редактируем файл и добавляем в него структуру чек-листа

---
8. Запушить структуру на внешний репозиторий

-- Добавляем файл в индекс `git add hw2_git_checklist_str.txt`

-- Коммитим `git commit -m "В файл hw2_git_checklist_str.txt добавлена структура чек-листа"`

-- Пушим `git push`

----
9. На внешнем репозитории сделать Pull Request ветки CheckLists в main

-- В интерфейсе GitHub переходим в раздел Pull requests
-- жмем new pull request и в "форме" выбираем точки - из какой в какую ветку мы собираемся запросить мердж
-- проверяем показанные изменения мерджа
-- после чего нажимаем Create pull request
-- далее, в открывшейся форме, заполняем ветки (источник и получение) и текстовые поля, если нужно (title и write)
-- после чего снова нажимаем Create pull request

----
10. Синхронизировать Внешнюю и Локальную ветки Main

-- В интерфейсе GitHub переходим в раздел Pull requests
-- смотрим на детали запрошенного ранее реквеста 
-- если со всем согласны, то жмем кнопку Merge pull request и потом еще раз на Confirm merge

-- в тех случаях, когда коммитов получилось очень много - можно использовать вариант Squash and merge (тогда все это 
множество коммитов объединится под одним, что позволит избежать замусоривания истории)
-- если же есть какие-то вопросы или комментарии к запросившему, то их можно задать в комментариях и не мерджить проект 
до того момента, как будут решены все проблемы
-- также реквест можно сразу отклонить (нажать Close up request)

После подтверждения реквеста, появляется предложение удалить ветку "Delete branch", которым в обычной жизни 
следовало бы воспользоваться и удалить ветку для того, чтобы не перегружать историю, но для проверки ДЗ я ее оставляю.


