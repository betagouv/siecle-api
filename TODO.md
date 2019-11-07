# TODO api

Nous allons essayer d'avoir une API auto documentée comme sur https://api.github.com (est-ce que c'est du [HATEOAS](https://fr.wikipedia.org/wiki/HATEOAS)) ?

## Service des données via l'API

- get / : renvoie la liste des urls possibles (dont get /etablissement)
- get /accademies : renvoie la liste des accadémies
- get /accademies/{nom} : renvoie les informations d'une accadémie
- get /etablissements/{uai}/mef : renvoie les mef d'un établissement
- get /accademies/{nom}/mef : renvoie les mef d'une accadémie
- get /accademies/{nom}/etablissements : renvoie les établissements d'une accadémie
- get /search?q=[mot clef] : renvoie la liste des ressources contenant ce mot clef

## Technique

- déployer dans un Tomcat
- faire un client en Java
- définir la solution de documentation de l'API
