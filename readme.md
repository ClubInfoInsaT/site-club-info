## Sources du site du club
Ce répertoire contient les sources du site du Club Info disponible à cette adresse : https://clubinfo.insat.fr/

### Build de le site en local
Pour build le site en local, et proposer des modifications sur celui-ci, vous devez installer une version récente de [Hugo](https://gohugo.io/). Voici la démarche à suivre (exemple sous Ubuntu) :
```bash
sudo snap install hugo      # Le paquet DEB est trop ancien
hugo version                # Normalement > 100.0

git clone git@github.com:ClubInfoInsaT/site-club-info.git
cd site-club-info/
time git submodule update --init --recursive # Peut prendre jusqu'à 10 min.

hugo serve
```
Vous pouvez alors tester le site en local.

## Contact
Voir le site.
