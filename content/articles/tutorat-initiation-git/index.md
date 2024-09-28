---
title: Initiation à Git
summary: "Fini les dossiers avec v1, v2 et 'version-finale' dans le titre. Utilise Git pour gérer tes versions. :wink:"
date: 2022-10-20
tags: ["Formation", "Git"]
authors:
  - Paul
---

Git est un logiciel de gestion de versions décentralisé. Il permet de gérer des versions de fichiers de manière efficace. Il est utilisé par de nombreuses entreprises et projets open source.

{{< mermaid >}}
%%{init: { 'gitGraph': {'showBranches': true, 'showCommitLabel': false}} }%%
gitGraph
    commit id: "1"
    branch dark_mode
    commit id: "2"
    checkout dark_mode
    checkout dark_mode
    commit id: "3"
    checkout main
    commit id: "4"
    branch i18n
    checkout i18n
    commit id: "5"
    checkout main
    commit id: "6"
    checkout dark_mode
    commit id: "7"
    checkout main
    merge dark_mode id: "8"
    checkout i18n
    commit id: "9"
    checkout main
    commit id: "10"
{{< /mermaid >}}

Vous pouvez retrouver le support de présentation juste [ici](https://etud.insa-toulouse.fr/~alnet/club-info/presentations/Init-git-2022-03-v2.pdf).
