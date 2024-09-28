## Sources du site du club

Ce répertoire contient les sources du site du Club Info disponible à cette adresse : https://clubinfo.insat.fr/

### Quickstart

1. Installer un version récente de [Hugo](https://gohugo.io/).
   Voici la démarche à suivre (exemple sous Ubuntu) :

   ```bash
   sudo snap install hugo      # Le paquet DEB est trop ancien
   hugo version                # Normalement > 100.0
   ```

2. Clone le code source du site

   ```bash
   git clone git@github.com:ClubInfoInsaT/site-club-info.git
   cd site-club-info/
   time git submodule update --init --recursive # Peut prendre jusqu'à 10 min.
   ```

3. Lancer le serveur de développement

   ```bash
   hugo serve
   ```

   > Vous pouvez alors tester le site en local.
   > A chaque modification du code, le serveur se mettra à jour automatiquement.

4. Pour générer le site statique
   ```bash
   hugo --gc --minify
   ```
   > Le site statique est généré dans `./public/`.
   > Pour deploy, il existe un script sur le serveur (se renseigner auprès des Roots)

### Structure du site

Le site est composé de plusieurs parties :

```
.
|-- archetypes
|-- assets
|-- config
|-- content         (l'ensemble des pages du site)
|-- data
|-- layouts
|-- static          (les fichiers statiques type pdf...)
`-- themes

8 directories
```

Pour en savoir plus sur la structure du site allez voir la [documentation de Hugo](https://gohugo.io/getting-started/directory-structure/#directory-structure-explained).

### Ajouter du contenu

<details>
<summary>Ajouter une article sur un parcours de formation</summary>

Dans un terminal, se placer dans le dossier du site et lancer la commande suivante :

```bash
# pwd
# /path/to/site-club-info/

# Créer un nouvel article pour un parcours de formation
hugo new parcours-formation/le-titre-du-parcours-de-formation-sans-espace
```

</details>

<details>
<summary>Ajouter un article sur un projet</summary>

Dans un terminal, se placer dans le dossier du site et lancer la commande suivante :

```bash
# pwd
# /path/to/site-club-info/

# Créer un nouvel article pour un projet
hugo new projets/le-titre-du-projet-sans-espace
```

</details>

<details>
<summary>Ajouter une article sur la semaine climat</summary>

Dans un terminal, se placer dans le dossier du site et lancer la commande suivante :

```bash
# pwd
# /path/to/site-club-info/

# Créer un nouvel article pour l'année 2024
hugo new semaine-climat-energie/2024
```

</details>

<details>
<summary>Ajouter une nouvelle page (article)</summary>

Pour ajouter une nouvelle page de type _"article"_ comme la page [`/projects/jeu-sce/`](https://clubinfo.insat.fr/projects/jeu-sce/),

- Crée un nouveau dossier du nom de votre choix _sans espace_ dans `content/`
- Dans ce dossier ajouté un nouveau fichier `index.md`
- Dans ce fichier `index.md`, ajoutez tout en haut ceci

  ```toml
  ---
  title: "Le titre de l'article"
  summary: "Un description verbeuse mais pas trop non plus"
  date: YYYY-MM-DD
  ---
  ```

  Vous pouvez ensuite ajouter du contenu à votre article en utilisant le [format Markdown](https://www.markdownguide.org/basic-syntax/).

  > Pour plus d'info sur le **Front Matter** vous pouvez vous rendre sur la documentation de [Hugo](https://gohugo.io/content-management/front-matter/) et celle de [Blowfish](https://blowfish.page/docs/front-matter/)

> 🚨🚨 ATTENTION !! 🚨🚨
>
> Si vous écrivez un article à paraitre dans le futur (dont la date et plus loin que le jour où vous rédiger l'article) redémarrer le serveur avec cette commande
>
> ```bash
> hugo server -F
> ```

</details>

<details>
<summary>Ajouter un nouvel auteur</summary>

Pour ajouter un nouvel auteur, créer un nouveau fichier dans `data/authors/` avec le nom de l'auteur (sans espace) et l'extension `.json` (ex: `data/authors/John.json`).

Dans ce fichier ajouter ceci :

```json
{
  "name": "John Doe",
  "image": "/images/people/john.jpg",
  "bio": "Un description verbeuse mais pas trop non plus",
  "social": []
}
```

> La photo de l'auteur doit être placée dans `assets/images/people/` et doit avoir le même nom que le fichier json (ex: `assets/images/people/John.jpg`)

Recharger la page pour voir les changements.

Pour en savoir plus sur les auteurs allez voir la [documentation de Blowfish](https://blowfish.page/docs/multi-author/).

</details>

<details>
<summary>Ajouter des membres dans la section 'Conseil d'administration'</summary>

Pour ajouter un nouveau membre dans la section 'Conseil d'administration', ajouter un nouveau fichier dans `data/CA/` avec le nom du membre (sans espace) et l'extension `.json` (ex: `data/CA/John-Doe.json`).

**Ajouter un membre du bureau**

Dans ce fichier ajouter ceci :

```json
{
  "name": "John Doe",
  "image": "images/people/John-Doe.png",
  "role": "bureau-member",
  "position": "Président",
  "social": [{ "linkedin": "https://fr.linkedin.com/in/john-doe" }],
  "ranking": 1
}
```

> Note: `ranking` est un nombre entier qui permet de trier les membres par ordre de présence dans le CA. (ex: `1` pour le président, `2` pour le vice-président, etc...)

**Ajouter un membre d'honneur**

Dans ce fichier ajouter ceci :

```json
{
  "name": "John Doe",
  "image": "images/people/John-Doe.png",
  "role": "honorary-member",
  "position": "Membre d'honneur",
  "social": [{ "linkedin": "https://fr.linkedin.com/in/john-doe" }]
}
```

**Ajouter un membre à responsabilité**

Dans ce fichier ajouter ceci :

```json
{
  "name": "John Doe",
  "image": "images/people/John-Doe.png",
  "role": "head-member",
  "position": "Response de ...",
  "social": [{ "linkedin": "https://fr.linkedin.com/in/john-doe" }]
}
```

> La photo du membre doit être placée dans `assets/images/people/` et doit avoir le même nom que le fichier json (ex: `assets/images/people/John.jpg`)

Recharger la page pour voir les changements.

</details>

> **Note**
>
> N'oubliez pas de changer le frontmatter du fichier markdown !

## Documentation

Vous pouvez trouver de plus amples informations sur la maintenance de sites Hugo sur le site web officiel :

- [Documentation de Hugo](https://gohugo.io/documentation/)
- [Blowfish Guide](https://blowfish.page/)

## Contact

Voir le site.
