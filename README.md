# {Enhanced_epitest}
[DockerHub](https://hub.docker.com/r/ziad0/enhanced-epitest)
## Description 🗒️

Ce projet fournit un environnement Docker personnalisé basé sur l'image [`epitechcontent/epitest-docker:latest`](https://hub.docker.com/layers/epitechcontent/epitest-docker/latest/images/sha256-4d754505eb4bf8c18f94d2c0345369b878c53a736d0ecd618dad40b2c59c52d4) avec plusieurs outils supplémentaires pour le développement, la vérification du codingstyle et la configuration d'un shell Zsh avancé.

## Fonctionnalités 💡

- Dockerfile prêt à l'emploi pour accéder à l'environnement de correction d'[Epitech](https://www.epitech.eu/).
- Installation automatique de plugins Zsh suivants sur [OhMyZsh](ohmyz.sh) :
  - zsh-autosuggestions
  - zsh-syntax-highlighting
  - fast-syntax-highlighting
  - zsh-autocomplete
- Script de vérification du style de code Epitech : [`Coding_Style_Checker.sh`](https://github.com/Epitech/coding-style-checker)
- Support [SDL2](https://www.libsdl.org/), [SFML](https://www.sfml-dev.org/), [libconfig](https://hyperrealm.github.io/libconfig/) et autres librairies courantes et utiles pour les projets à Epitech.
- Configuration personnalisée et personnalisable de Zsh via [`.zshrc`](.zshrc).

## Prérequis 💻

- [Docker](https://www.docker.com/) installé sur votre machine.
- Processeur avec une architecture X86_64 (Support ARM arrive bientôt)

## Pull de l'image

```sh
docker pull ziad0/enhanced-epitest
```

## Utilisation 🧮

Lancez un conteneur interactif avec :

```sh
docker run -it --rm -v $(pwd):/usr/app ziad0/enhanced-epitest
```

Vous arriverez dans un shell Zsh configuré et synchronisé avec le dossier dans lequel vous avez éxécuté la commande.

### Vérification du codingstyle 🤓

Utilisez le script de vérification du codingstyle une fois dans le conteneur :

```sh
codingstyle <DELIVERY_DIR> <REPORTS_DIR>
```

- `<DELIVERY_DIR>` : dossier contenant vos fichiers à vérifier.
- `<REPORTS_DIR>` : dossier où sera généré le rapport.

## Personnalisation 🎨

- Modifiez `.zshrc` pour ajouter vos alias ou plugins.
- Ajoutez d'autres dépendances dans le `Dockerfile` si besoin ou suggérez-en ?

## Graphique 🎥

- Possibilité de lancer des application graphiques :
  - Mac OS en installant [xQuartz](https://www.xquartz.org/) : [tuto](https://gist.github.com/cschiewek/246a244ba23da8b9f0e7b11a68bf3285)
  - Windows & Linux en mettant en place un X11 forwarding : [tuto](https://www.youtube.com/watch?v=FlHVuA_98SA)

## Structure du projet

```
.
├── Coding_Style_Checker.sh
├── Dockerfile
├── .zshrc
└── .gitignore
```

## Auteurs ✨

- [ZiadBengherabi](https://github.com/ZiadBengherabi)

---

*Inspiré par l'environnement Epitech et optimisé réunir tout les outils nécessaires pour mener à bien sa scolarité à tek.*
