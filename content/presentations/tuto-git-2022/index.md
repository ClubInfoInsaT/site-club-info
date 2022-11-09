---
title: Initiation à Git
summary: "Fini les dossiers avec v1, v2 et 'version-finale' dans le titr. Utilise Git pour gérer tes versions. :wink:"
date: 2022-10-20
tags: ["Formation", "Git"]
showSummary : true
authors:
  - Paul
---

## Présentation

Git est un logiciel de gestion de versions décentralisé. Il permet de gérer des versions de fichiers de manière efficace et efficace. Il est utilisé par de nombreuses entreprises et projets open source.

{{< mermaid >}}
gitGraph
    commit id: "1"
    commit id: "2"
    branch nice_feature
    checkout nice_feature
    commit id: "3"
    checkout main
    commit id: "4"
    checkout nice_feature
    branch very_nice_feature
    checkout very_nice_feature
    commit id: "5"
    checkout main
    commit id: "6"
    checkout nice_feature
    commit id: "7"
    checkout main
    merge nice_feature id: "customID" tag: "customTag" type: REVERSE
    checkout very_nice_feature
    commit id: "8"
    checkout main
    commit id: "9"
{{< /mermaid >}}

## Objectifs

* Comprendre le fonctionnement de Git
* Savoir utiliser Git pour gérer des versions de fichiers

## Prérequis

* Avoir un compte GitHub
* Avoir un compte sur GitEtud


## Contenu

* Introduction à Git
* Créer un dépôt Git
* Ajouter des fichiers au dépôt
* Créer des branches
* Fusionner des branches
* Utiliser Git avec GitHub
* Utiliser Git avec GitEtud


### Commandes Git

#### Initialiser un dépôt Git

```console
git init
```

#### Ajouter des fichiers au dépôt

```console
git add
```

#### Créer un commit

```console
git commit -m "message"
```

#### Créer une branche

```console
git branch nom_branche
```

#### Changer de branche

```console
git checkout nom_branche
```

#### Fusionner des branches

```console
git merge nom_branche
```

#### Cloner un dépôt Git

```console
git clone url
```

#### Récupérer les modifications d'un dépôt

```console
git pull
```

#### Envoyer les modifications sur un dépôt

```console
git push
```
