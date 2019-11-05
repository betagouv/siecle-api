# TODO api

Nous allons essayer d'avoir une API auto documentée comme sur https://api.github.com (est-ce que c'est du [HATEOAS](https://fr.wikipedia.org/wiki/HATEOAS)) ?

## Remplissage des données de l'API

_post /fichiers_xml params : {un fichier XML extrait de siecle}_

## Service des données via l'API

- get /etablissements : renvoie la liste des établissements
- get / : renvoie la liste des urls possibles (dont get /etablissement)
- get /etablissement/{uai} : renvoie les informations d'un établissement

## Technique

- déployer dans un Tomcat
- faire un client en Java
