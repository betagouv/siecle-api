# TODO api

Nous allons essayer d'avoir une API auto documentée comme sur https://api.github.com (est-ce que c'est du [HATEOAS](https://fr.wikipedia.org/wiki/HATEOAS)) ?

## Remplissage des données de l'API
_post /fichiers_xml params : {un fichier XML extrait de siecle}_

- [DONE] appeler la requête post pour envoyer le fichier
- [DONE] le controller va lire le contenu pour l'enregistrer, puis poster un background job
- [DONE] le background job va 
    - prendre le contenu et le donner à la gem `siecle-xml_mapper`
    - persister les objets renvoyer par la gem

## Service des données via l'API

- ?


# TODO Gem

- parser le XML
- extraire le type à partir de la balise 
- mettre à jour l'objet FichierXML
- donner le contenu à la gem qui va extraire des objets (dans un premier temps)
- instancier un analyseur qui analyse ce fichier et lui passer le document xml pour analyse


