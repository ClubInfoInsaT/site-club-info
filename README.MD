#todo

---

## 1. Prérequis

- Connaître les bases du [Markdown]() et de sa syntaxe
- Savoir utiliser git et GitHub

## 2. Installation de Hugo et Git

Si vous n'avez pas encore installé Git et Hugo, vous pouvez trouver les instructions d'installation ici :
- [Git](https://git-scm.com/)
- [hugo](https://gohugo.io/installation/)

Une fois les deux outils installés, ouvrez un terminal et rentrez les commandes suivantes:

```terminal
git
```

```terminal
hugo -h
```

Si aucun message d'erreur ne s'affiche vous pouvez aller à la section suivante.

## 3. Récupérer et installer le code source

- Dans un terminal, *"cloner"* le repo comme ceci:

```terminal
git clone -b next https://github.com/ClubInfoInsaT/site-club-info/tree/next
```

- Mettez à jour les `submodules` (pour plus d'info rendez-vous directement dans la [documentation](https://blowfish.page/docs/installation/#installing-updates))

```terminal
git submodule update --init --recursive
```

## 4. Lancer le serveur

Pour démarrer le serveur de développement, vous pouvez utilisez

```terminal
hugo server
```

A chaque modification du code, le serveur se mettra à jour tout seul.

## 5. Arborescence du code

Afin de comprendre comment le site est structuré, tu peux aller syr [la documentation de Hugo](https://gohugo.io/getting-started/directory-structure/)

## 6. Ajouter du contenu
### 6.1 Ajouter une nouvelle page (article)

Pour ajouter une nouvelle page de type *"article"* (comme la page `/projects/jeu-sce/`),
- Crée un nouveau dossier du nom de votre choix *sans espace*
- Dans ce dossier ajouté un nouveau fichier `index.md`
- Dans ce fichier `index.md`, ajoutez tout en haut ceci
```toml
---
title: "Le titre de l'article"
summary: "Un description verbeuse mais pas trop non plus"
date: YYYY-MM-DD
---
```
- Puis ajouter votre contenu juste en dessous

Pour plus d'info sur le **Front Matter** vous pouvez vous rendre sur la documentation de [Hugo](https://gohugo.io/content-management/front-matter/) et celle de [Blowfish](https://blowfish.page/docs/front-matter/)

Si vous écrivez un article à paraitre dans le futur (dont la date et plus loin qu'aujourd'hui, redémarrer le serveur avec cette commande)

```terminal
hugo server -F
```

### 6.2 Ajouter une nouvelle page (groupe)

Pour ajouter une nouvelle page de type *"groupe"* (comme `/projects/web-dev/`)
- Crée un nouveau dossier du nom de votre choix *sans espace*
- Dans ce dossier ajouté un nouveau fichier `_index.md` (le underscore n'est pas une erreur)
- Ajoute tout en haut du fichier ceci
```toml
---
title: "Le titre de l'article"
summary: "Un description verbeuse mais pas trop non plus"
date: YYYY-MM-DD
---
```

> N'hésite pas à t'inspirer de ce qui a été fait dans `/content/projects/web-dev`


## Documentation

Vous pouvez trouver de plus amples informations sur la maintenance de sites Hugo sur le site web officiel :

- [Documentation de Hugo](https://gohugo.io/documentation/)
- [Blowfish Guide](https://blowfish.page/)
- [Guide Git](https://git-scm.com/book/fr/v2)