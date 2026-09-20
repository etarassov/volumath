---
id: "6114"
title: "Toutes les parties nulles du morpion"
grade: 10
theme: combinatorics
difficulty: 4
duration_min: 50
tags: [denombrement, recherche-exhaustive, symetries, disjonction-de-cas, jeu]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "MathCircles.org (National Association of Math Circles), Tic-Tac-Toe 2.0"
  reference: "Tic-Tac-Toe-2.0-MTCircular-Autumn-2019.pdf, séance de Catherine Pullin Lane et Lynne M. Pachnowski (Rubber City MTC). L'article propose de chercher « le nombre de positions distinctes de partie nulle » et ne donne que la réponse entre parenthèses : « il n'y en a que trois ». Aucune démonstration n'est publiée."
  url: "https://mathcircles.org/activity/tic-tac-toe-2-0/"
  original_language: "en"
  local_copy: "sources/originals/namc/Tic-Tac-Toe-2.0-MTCircular-Autumn-2019.pdf"
---

## Statement

Au morpion, deux joueurs remplissent à tour de rôle les cases d'une grille $3 \times 3$. Le premier joueur écrit des croix, le second des ronds, et le premier joueur commence. Le gagnant est celui qui aligne le premier trois de ses symboles, sur une ligne, une colonne ou une diagonale. Si la grille se remplit sans qu'aucun alignement apparaisse, la partie est **nulle**.

Une grille pleine de partie nulle contient donc $5$ croix, $4$ ronds, et aucun alignement de trois symboles identiques.

Trouver **toutes** les grilles pleines de partie nulle. Deux grilles qui se déduisent l'une de l'autre par une rotation ou une symétrie de la grille comptent pour une seule. Il y en a exactement trois.

Numérotons les cases pour pouvoir en parler :

| | | |
|---|---|---|
| $1$ | $2$ | $3$ |
| $4$ | $5$ | $6$ |
| $7$ | $8$ | $9$ |

Les huit alignements sont donc $123$, $456$, $789$, $147$, $258$, $369$, $159$ et $357$.

## Hints

1. Ne cherche pas les croix, cherche les ronds : il n'y en a que $4$.
2. Traduis les deux conditions en termes des seules cases des ronds. « Aucun alignement de croix » veut dire que chacun des huit alignements contient au moins un rond. « Aucun alignement de ronds » veut dire que les quatre ronds ne contiennent aucun alignement.
3. Sépare en deux cas selon que la case centrale $5$ porte un rond ou une croix.
4. Si le centre est un rond, les quatre alignements qui passent par le centre sont déjà rencontrés. Il reste les quatre alignements du bord, $123$, $789$, $147$ et $369$, à rencontrer avec les trois ronds restants. Une case de coin en rencontre deux, une case de bord une seule, et le centre aucune. Combien de coins faut-il au minimum ?
5. Si le centre est une croix, regarde les quatre alignements qui passent par le centre : chacun doit contenir un rond parmi ses **deux** cases de bord. Or ces quatre paires de cases, $\{1,9\}$, $\{3,7\}$, $\{2,8\}$ et $\{4,6\}$, sont deux à deux disjointes et remplissent tout le bord. Que peut-on en conclure sur les quatre ronds ?

## Solution

### Reformulation

La grille est pleine : $5$ croix et $4$ ronds. Notons $S$ l'ensemble des quatre cases portant un rond. Les deux conditions deviennent :

- **(i)** chacun des huit alignements contient au moins une case de $S$ (sinon il serait entièrement fait de croix) ;
- **(ii)** $S$ ne contient aucun alignement en entier.

Chercher les parties nulles, c'est donc chercher les parties $S$ à quatre cases vérifiant (i) et (ii). Séparons selon la case centrale.

### Cas A : le centre porte un rond, c'est-à-dire $5 \in S$

Les quatre alignements passant par le centre, $456$, $258$, $159$ et $357$, sont automatiquement rencontrés. Il reste à rencontrer les quatre alignements du bord :

$$123, \quad 789, \quad 147, \quad 369 ,$$

et il ne reste que trois ronds pour cela.

Ces quatre alignements se croisent seulement dans les coins : la case $1$ appartient à $123$ et à $147$, la case $3$ à $123$ et $369$, la case $7$ à $789$ et $147$, la case $9$ à $789$ et $369$. Une case de bord ($2$, $4$, $6$ ou $8$) n'appartient qu'à un seul de ces quatre alignements, et le centre à aucun.

Avec trois cases il faut donc rencontrer quatre alignements : **au moins une des trois cases est un coin**, sinon on ne rencontrerait au plus que trois alignements.

D'autre part, $S$ ne peut pas contenir deux coins **opposés** : avec le centre, ils formeraient un alignement ($159$ ou $357$), contraire à (ii). En particulier $S$ contient au plus deux coins.

**Cas A1 : $S$ contient exactement deux coins.** Ils sont voisins. Prenons $1$ et $3$ (les autres choix s'en déduisent par rotation). Ils rencontrent $123$, $147$ et $369$ ; il manque $789$. La troisième case est donc $7$, $8$ ou $9$.

- $7$ : alors $S = \{1, 3, 5, 7\}$ contient l'alignement $357$. Rejeté.
- $9$ : alors $S = \{1, 3, 5, 9\}$ contient l'alignement $159$. Rejeté.
- $8$ : alors $S = \{1, 3, 5, 8\}$. Aucun alignement n'y tient en entier, et les huit alignements sont rencontrés. **Convient.**

En faisant tourner la grille, les quatre paires de coins voisins donnent $4$ grilles.

**Cas A2 : $S$ contient exactement un coin.** Prenons $1$ (les autres s'en déduisent par rotation). Il rencontre $123$ et $147$ ; il reste $789$ et $369$ à rencontrer avec deux cases qui ne sont pas des coins. La seule case de bord de $789$ est $8$, la seule case de bord de $369$ est $6$. Donc $S = \{1, 5, 6, 8\}$.

Vérifions : les alignements $123$, $147$ et $159$ contiennent $1$ ; $456$ contient $5$ et $6$ ; $789$ contient $8$ ; $369$ contient $6$ ; $258$ contient $5$ et $8$ ; $357$ contient $5$. Tous rencontrés. Et $S$ ne contient aucun alignement entier. **Convient.**

Les quatre coins donnent $4$ grilles.

Le cas A fournit donc $8$ grilles.

### Cas B : le centre porte une croix, c'est-à-dire $5 \notin S$

Les quatre alignements passant par le centre sont $159$, $357$, $258$ et $456$. Chacun doit contenir un rond, et comme le centre n'en est pas un, ce rond est dans l'une des deux cases de bord :

$$\{1, 9\}, \quad \{3, 7\}, \quad \{2, 8\}, \quad \{4, 6\} .$$

Ces quatre paires sont deux à deux disjointes et recouvrent les huit cases du pourtour. Comme $S$ a exactement quatre cases et doit rencontrer chacune des quatre paires, **$S$ contient exactement une case de chaque paire**.

Notons donc $S = \{a, b, c, d\}$ avec

$$a \in \{1, 9\}, \quad b \in \{3, 7\}, \quad c \in \{2, 8\}, \quad d \in \{4, 6\} .$$

Cela fait $2^4 = 16$ possibilités. Il reste à imposer les quatre alignements du bord.

Les seuls alignements entièrement contenus dans le pourtour sont $123$, $789$, $147$ et $369$. Chacun doit être rencontré par $S$, et aucun ne doit y être contenu en entier. Écrivons ces conditions :

| Alignement | Rencontré si... | Contenu si... |
|---|---|---|
| $123$ | $a = 1$ ou $b = 3$ ou $c = 2$ | $a = 1$ et $c = 2$ et $b = 3$ |
| $789$ | $a = 9$ ou $b = 7$ ou $c = 8$ | $a = 9$ et $c = 8$ et $b = 7$ |
| $147$ | $a = 1$ ou $b = 7$ ou $d = 4$ | $a = 1$ et $d = 4$ et $b = 7$ |
| $369$ | $a = 9$ ou $b = 3$ ou $d = 6$ | $a = 9$ et $b = 3$ et $d = 6$ |

Remarquons d'abord que la colonne « rencontré » est automatique dans la plupart des cas. Si $a = 1$, les alignements $123$ et $147$ sont rencontrés ; si $a = 9$, ce sont $789$ et $369$. Il ne reste donc à surveiller que les deux autres.

**Si $a = 1$ :** il faut rencontrer $789$ (donc $b = 7$ ou $c = 8$) et $369$ (donc $b = 3$ ou $d = 6$). Passons en revue les quatre couples $(b, d)$ :

- $b = 3$ : alors $369$ est rencontré ; pour $789$ il faut $c = 8$. Interdits : $123$ contenu demanderait $c = 2$, ce n'est pas le cas. Les deux valeurs de $d$ conviennent, d'où $\{1, 3, 8, 4\}$ et $\{1, 3, 8, 6\}$.
- $b = 7$ : alors $789$ est rencontré ; pour $369$ il faut $d = 6$ (si $d = 4$, alors $147$ serait contenu dans $S$, donc $d = 4$ est de toute façon interdit). Avec $d = 6$, les deux valeurs de $c$ conviennent, d'où $\{1, 7, 2, 6\}$ et $\{1, 7, 8, 6\}$.

Quatre grilles.

**Si $a = 9$ :** par la symétrie qui échange $1 \leftrightarrow 9$, $3 \leftrightarrow 7$, $2 \leftrightarrow 8$, $4 \leftrightarrow 6$ (c'est la rotation d'un demi-tour), on obtient les quatre ensembles correspondants : $\{9, 7, 2, 6\}$, $\{9, 7, 2, 4\}$, $\{9, 3, 8, 4\}$ et $\{9, 3, 2, 4\}$.

Le cas B fournit donc $8$ grilles.

### Bilan : seize grilles, trois formes

Il y a en tout $8 + 8 = 16$ grilles pleines de partie nulle. Regroupons-les par rotation et symétrie.

**Forme 1 (cas A1), quatre grilles.** Avec $S = \{1, 3, 5, 8\}$ :

| | | |
|---|---|---|
| O | X | O |
| X | O | X |
| X | O | X |

Elle est symétrique par rapport à l'axe vertical, ce qui explique qu'elle n'ait que quatre positions au lieu de huit.

**Forme 2 (cas A2), quatre grilles.** Avec $S = \{1, 5, 6, 8\}$ :

| | | |
|---|---|---|
| O | X | X |
| X | O | O |
| X | O | X |

Elle est symétrique par rapport à la diagonale qui descend de la case $1$ vers la case $9$.

**Forme 3 (cas B), huit grilles.** Avec $S = \{1, 3, 4, 8\}$ :

| | | |
|---|---|---|
| O | X | O |
| O | X | X |
| X | O | X |

Celle-ci n'a aucune symétrie, d'où ses huit positions. Les huit grilles du cas B se déduisent toutes de celle-là.

$4 + 4 + 8 = 16$ : le compte est bon.

**Conclusion.** À rotation et symétrie près, il n'existe que **trois** grilles de partie nulle au morpion, et ce sont celles dessinées ci-dessus.

## Going further

Ce petit décompte explique pourquoi le morpion lasse si vite : les positions finales intéressantes sont en nombre ridicule. Une fois les deux joueurs un peu aguerris, toutes les parties finissent par l'une de ces trois images.

À creuser : combien y a-t-il de parties complètes distinctes, c'est-à-dire de suites de coups menant à une fin (victoire ou grille pleine) ? La réponse est beaucoup plus grande, et elle dépend de ce qu'on décide de compter.

Et la variante du magazine, « Gobblet Gobblers » : chaque joueur a six pions de trois tailles, un gros pion peut recouvrir un plus petit, et on a aussi le droit de déplacer un pion déjà posé. Le jeu redevient intéressant, et personne n'en connaît la stratégie gagnante à la main.
