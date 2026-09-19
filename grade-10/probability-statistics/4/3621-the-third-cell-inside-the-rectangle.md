---
id: "3621"
title: "La troisième case tombe-t-elle dans le rectangle ?"
grade: 10
theme: probability-statistics
difficulty: 4
duration_min: 40
tags: [probabilite, denombrement, disjonction-de-cas, grille]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), AMC 8 training, Berkeley mini Math Tournament 2025"
  reference: "Handout-5091-5540.pdf, problème 15 de l'Individual Round (corrigé dans Handout-5092-5540.pdf)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-5091-5540.pdf"
---

## Statement

On considère une grille carrée de $3$ cases sur $3$, soit $9$ cases en tout.

Nina choisit au hasard trois cases distinctes, qu'elle appelle $A$, $B$ et $C$ ; tous les choix de trois cases sont également probables, et le rôle de chaque case est tiré au sort lui aussi.

On note $R$ le plus petit rectangle de cases qui contient à la fois $A$ et $B$. Autrement dit, $R$ est formé de toutes les cases dont la ligne est comprise entre celles de $A$ et de $B$, et dont la colonne est comprise entre celles de $A$ et de $B$.

Quelle est la probabilité que la case $C$ appartienne à $R$ ?

## Hints

1. Le rectangle $R$ ne dépend que de $A$ et de $B$. Commence donc par choisir la paire $\{A, B\}$, puis regarde où peut tomber $C$.
2. Combien y a-t-il de paires de cases dans une grille $3 \times 3$ ? Une fois la paire choisie, combien de cases restent-elles pour $C$ ?
3. Classe les paires $\{A, B\}$ selon la forme du rectangle $R$ qu'elles engendrent : $1 \times 2$, $1 \times 3$, $2 \times 2$, $2 \times 3$ ou $3 \times 3$. Pour chaque forme, combien de cases de $R$ sont autres que $A$ et $B$ ?

## Solution

**Étape 1. Ramener le problème à deux étapes.**

Le rectangle $R$ ne dépend que de la paire $\{A, B\}$, pas de laquelle des deux cases s'appelle $A$. On peut donc raisonner ainsi : on tire d'abord une paire de cases, puis on tire $C$ parmi les $7$ cases restantes, toutes également probables.

Le nombre de paires de cases parmi $9$ vaut

$$\frac{9 \times 8}{2} = 36$$

et chacune est également probable.

Si le rectangle $R$ engendré par une paire contient $t$ cases, alors $t - 2$ d'entre elles sont différentes de $A$ et de $B$, et la probabilité que $C$ tombe dans $R$ vaut $\dfrac{t-2}{7}$.

**Étape 2. Classer les $36$ paires.**

Repérons chaque case par sa ligne et sa colonne, numérotées de $1$ à $3$. Si les deux cases sont sur les lignes $\ell_1$ et $\ell_2$ et les colonnes $c_1$ et $c_2$, le rectangle $R$ a pour hauteur $|\ell_1 - \ell_2| + 1$ et pour largeur $|c_1 - c_2| + 1$.

*Rectangle $1 \times 2$ (t = 2).* Les deux cases sont voisines sur une même ligne ou sur une même colonne. Sur chaque ligne il y a $2$ paires de cases voisines, soit $3 \times 2 = 6$ ; autant sur les colonnes, soit $6$. Total : $12$ paires.

*Rectangle $1 \times 3$ (t = 3).* Les deux cases sont aux deux bouts d'une même ligne ($3$ paires) ou d'une même colonne ($3$ paires). Total : $6$ paires.

*Rectangle $2 \times 2$ (t = 4).* Les lignes diffèrent de $1$ et les colonnes aussi. Il y a $2$ paires de lignes voisines et $2$ paires de colonnes voisines, donc $4$ carrés $2 \times 2$ ; dans chacun, deux paires de cases opposées en diagonale. Total : $4 \times 2 = 8$ paires.

*Rectangle $2 \times 3$ ou $3 \times 2$ (t = 6).* Par exemple hauteur $2$, largeur $3$ : $2$ choix pour la paire de lignes voisines, $1$ seul choix pour la paire de colonnes extrêmes, et $2$ façons de placer les deux cases dans les coins opposés du rectangle, soit $4$ paires. Le cas hauteur $3$, largeur $2$ donne également $4$ paires. Total : $8$ paires.

*Rectangle $3 \times 3$ (t = 9).* Les deux cases sont deux coins opposés de la grille entière : $2$ paires.

*Contrôle.* $12 + 6 + 8 + 8 + 2 = 36$. Toutes les paires sont bien comptées une fois.

**Étape 3. Calculer la probabilité.**

Pour chaque forme, la probabilité que $C$ tombe dans $R$ vaut $\dfrac{t-2}{7}$ :

| forme de $R$ | $t$ | nombre de paires | $\dfrac{t-2}{7}$ |
|---|---|---|---|
| $1 \times 2$ | $2$ | $12$ | $0$ |
| $1 \times 3$ | $3$ | $6$ | $\frac{1}{7}$ |
| $2 \times 2$ | $4$ | $8$ | $\frac{2}{7}$ |
| $2 \times 3$ | $6$ | $8$ | $\frac{4}{7}$ |
| $3 \times 3$ | $9$ | $2$ | $1$ |

La probabilité cherchée est la moyenne de ces valeurs, pondérée par le nombre de paires :

$$P = \frac{1}{36}\left(12 \times 0 + 6 \times \frac{1}{7} + 8 \times \frac{2}{7} + 8 \times \frac{4}{7} + 2 \times 1\right)$$

$$P = \frac{1}{36}\left(\frac{6 + 16 + 32}{7} + \frac{14}{7}\right) = \frac{1}{36} \times \frac{68}{7} = \frac{68}{252} = \frac{17}{63}$$

**Réponse.** La probabilité vaut $\dfrac{17}{63}$, soit environ $27\%$.

## Going further

Le calcul revient à compter les triplets favorables. Il y a $9 \times 8 \times 7 = 504$ façons de choisir $A$, $B$, $C$ dans l'ordre, et la fraction $\frac{17}{63}$ correspond à $\frac{17}{63} \times 504 = 136$ triplets favorables.

Une autre façon de présenter le même compte : pour chaque paire, on a compté $t - 2$ cases favorables, ce qui donne $6 \times 1 + 8 \times 2 + 8 \times 4 + 2 \times 7 = 6 + 16 + 32 + 14 = 68$ couples (paire, case $C$) favorables sur $36 \times 7 = 252$.
