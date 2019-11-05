# Siecle API

Application Rails qui expose des données de SIECLE à partir d'une api sécurisée.

L'API pourrait être une application nationale vers laquelle les applications SIECLE académique envoient des données.

Argument contre :

> Faire une api ça faciliterais la vie de pronote

## Constat

- SIECLE est une application développé nationalement, mais installé dans chaque académie
- SIECLE ne propose pas d'API
- Des équipes interne et externe à l'éducation nationale demandent à interagir avec SIECLE via une API plutôt que par échange de fichiers XML.


## Usagers

Voici une liste de potentiel usagers

- [Pix](https://pix.fr)
- [Mon stage de 3eme](https://www.monstagedetroisieme.fr/)
- [Annuaire Education](https://annuaire-education.fr/)
- [ProNote](https://www.index-education.com/fr/logiciel-gestion-vie-scolaire.php)
- [ParisClasseNumerique](https://www.parisclassenumerique.fr/)
- [MonLycee.net](https://monlycee.net/)

et peut-être les ENT en général ?


## Les problèmes à résoudre

- sourcer les données SIECLE
- trouver un utilisateur précoce
- sécurisation de l'API
- faciliter la relation avec l'éducation nationale (DNE ? 110 bis ? DGESCO ?)
