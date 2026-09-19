# volumath

Base d'exercices de mathématiques pour un club de maths, de la quatrième à la terminale.

Chaque exercice est un fichier : l'énoncé, des indications, puis une solution écrite au
niveau des élèves visés. Chaque exercice porte aussi sa source et un niveau de difficulté.

## Où se trouve quoi

Le chemin d'un exercice se lit ainsi : niveau, puis thème, puis difficulté.

```
grade-09/geometry/2/0002-area-of-triangle-in-a-square.md
   │         │     │
   │         │     └── difficulté, de 1 à 5
   │         └── thème
   └── niveau
```

Les dossiers de niveau portent un numéro d'année plutôt qu'un nom de classe, pour qu'ils
s'affichent toujours dans le bon ordre :

| Dossier | Classe |
| --- | --- |
| `grade-08` | quatrième |
| `grade-09` | troisième |
| `grade-10` | seconde |
| `grade-11` | première |
| `grade-12` | terminale |

Les thèmes : `arithmetic`, `algebra`, `geometry`, `functions-analysis`,
`probability-statistics`, `combinatorics`, `logic-reasoning`.

Le catalogue complet, lisible, est dans [INDEX.md](INDEX.md).

## La difficulté

Les étoiles se comparent **à l'intérieur d'un même niveau**. Trois étoiles en quatrième et
trois étoiles en terminale veulent dire la même chose, pour des élèves différents.

| | |
| --- | --- |
| ★☆☆☆☆ | application directe du cours, une seule étape |
| ★★☆☆☆ | deux ou trois étapes, avec les outils du niveau |
| ★★★☆☆ | il faut trouver une idée, pas seulement appliquer une technique |
| ★★★★☆ | plusieurs idées à combiner, ou des cas à distinguer |
| ★★★★★ | niveau concours pour cette classe |

## Préparer une séance

Les deux commandes utiles. La première fabrique une fiche pour une séance, la seconde
fabrique un exercice seul.

```sh
# Une fiche : deux PDF, un pour les élèves, un pour l'animateur
python3 tools/vm.py sheet --out seance-01 --grade 8 --theme arithmetic \
        --title "Séance 1 : parité"

# Un exercice seul : énoncé page 1, indications page 2, solution page 3
python3 tools/vm.py build --ids 0001 0002
```

Les PDF arrivent dans `build/`. Ce dossier est entièrement reconstruit à chaque fois, il ne
faut donc jamais y écrire à la main.

Pour chercher un exercice :

```sh
python3 tools/vm.py list --grade 8 --difficulty 3
python3 tools/vm.py list --tag parite
```

## Ajouter un exercice

```sh
python3 tools/vm.py new --grade 8 --theme arithmetic --difficulty 3 \
        --title "Parité de n² + n" --slug parity-of-n-squared-plus-n
```

La commande crée le fichier au bon endroit avec le bon numéro. Il reste à écrire l'énoncé,
les indications et la solution, puis à vérifier :

```sh
python3 tools/vm.py check
python3 tools/vm.py index
```

Les conventions d'écriture, de traduction et de notation sont décrites dans
[CLAUDE.md](CLAUDE.md).

## Installation

Les fichiers d'exercices se lisent sans rien installer. Pour fabriquer les PDF :

```sh
brew install pandoc typst
```
