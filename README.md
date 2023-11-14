# WIK-DPS-TP02

## WIK-DPS-TP01 Dockerized

Ce référentiel contient un exemple de configuration Docker pour empaqueter une application Rust dans un conteneur Docker. L'application est compilée en utilisant Rust version 1.73.

## Construction de l'image Docker

Assurez-vous d'avoir Docker installé sur votre machine avant de suivre ces étapes.

1. Clonez le référentiel sur votre machine locale :

    "bash
    git clone https://github.com/votre-utilisateur/WIK-DPS-TP01-dockerized.git
    cd WIK-DPS-TP01-dockerized
    "

2. Construisez l'image Docker en utilisant le Dockerfile fourni :

    "bash
    docker build -t nom_de_votre_image .
    "

    Assurez-vous de remplacer `nom_de_votre_image` par le nom que vous souhaitez donner à votre image.

## Exécution du conteneur Docker

Une fois l'image Docker construite, vous pouvez exécuter un conteneur à partir de cette image.

"bash
docker run -p "port local":"port docker" --rm --user webservice --name webrust nom_de_votre_image"
