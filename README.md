Создала образ:
docker image build . --tag=my_hw:1.1

запустила контейнер:
docker run -d -p 7740:5050 my_hw:1.1
