Создал образ:
docker image build . --tag=my_app:2.3

запустил контейнер:
docker run -d -p 7760:5050 my_app:2.3