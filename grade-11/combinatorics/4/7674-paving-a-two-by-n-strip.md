---
id: "7674"
title: "Paver une bande de deux cases de haut"
grade: 11
theme: combinatorics
difficulty: 4
duration_min: 40
tags: [denombrement, suite-recurrente, pavage, dominos]
adapted_from: null
see_also: ["0178"]
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Montpellier 2013, La Muraille"
  reference: "stage_ete_2013.pdf, chapitre X « La Muraille », exercice 54 (solution chapitre XI, résolue par Eva Philippe ; la rédaction ci-dessous passe par une seconde suite et évite le calcul de la solution imprimée)"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2013.pdf"
---

## Statement

On veut recouvrir entièrement un rectangle de $2$ cases de haut et de $n$ cases de large, sans trou ni chevauchement, avec des pièces de trois sortes :

- des carrés $1 \times 1$,
- des dominos couchés $1 \times 2$,
- des dominos debout $2 \times 1$.

On note $u_n$ le nombre de pavages différents.

1. Calculer $u_1$, $u_2$ et $u_3$ à la main.
2. Établir une formule de récurrence permettant de calculer $u_n$ de proche en proche.
3. Calculer $u_{10}$.

## Hints

1. Pour $u_2$, soyez méthodique : classez les pavages d'un carré $2 \times 2$ selon le nombre de dominos utilisés.
2. Pour la récurrence, regardez la **colonne de gauche** du rectangle et énumérez les façons de la recouvrir.
3. L'une de ces façons laisse une figure qui n'est plus un rectangle : c'est un rectangle privé d'une case de coin. Il faut donc compter aussi ces figures-là.
4. Notez $v_n$ le nombre de pavages d'un rectangle $2 \times n$ privé d'une case de coin. Écrivez une relation pour $u_n$ **et** une relation pour $v_n$.
5. Deux suites qui s'appellent l'une l'autre suffisent : il n'est pas nécessaire de les combiner en une seule formule.

## Solution

### 1. Les premières valeurs

**$u_1$ : un rectangle $2 \times 1$**, c'est-à-dire une colonne de deux cases. Soit on pose un domino debout, soit on pose deux carrés. Donc

$$u_1 = 2 .$$

**$u_2$ : un carré $2 \times 2$.** Classons selon le nombre de dominos.

| dominos | pavages | nombre |
|---|---|---|
| $0$ | quatre carrés $1 \times 1$ | $1$ |
| $1$ couché | en haut, ou en bas | $2$ |
| $1$ debout | à gauche, ou à droite | $2$ |
| $2$ couchés | un en haut, un en bas | $1$ |
| $2$ debout | un à gauche, un à droite | $1$ |

On ne peut pas mélanger un domino couché et un domino debout dans un carré $2 \times 2$. Au total

$$u_2 = 1 + 2 + 2 + 1 + 1 = 7 .$$

**$u_3$** se calculera avec la récurrence de la question suivante ; nous trouverons $u_3 = 22$.

### 2. La récurrence

Introduisons une seconde suite. Notons $v_n$ le nombre de pavages d'un rectangle $2 \times n$ **privé d'une case de coin** (disons la case en haut à gauche). Par symétrie, le nombre est le même si l'on enlève la case en bas à gauche.

**Relation pour $u_n$.** Regardons comment est recouverte la colonne de gauche d'un rectangle $2 \times n$, avec $n \geqslant 2$. Cinq situations, et cinq seulement :

- **deux carrés $1\times1$** : il reste un rectangle $2 \times (n-1)$, soit $u_{n-1}$ pavages ;
- **un domino debout** : il reste un rectangle $2 \times (n-1)$, soit $u_{n-1}$ pavages ;
- **un carré en haut à gauche, et un domino couché en bas** (occupant les cases du bas des colonnes $1$ et $2$) : il reste un rectangle $2 \times (n-1)$ privé de sa case en bas à gauche, soit $v_{n-1}$ pavages ;
- **un carré en bas à gauche, et un domino couché en haut** : symétriquement, $v_{n-1}$ pavages ;
- **deux dominos couchés**, l'un en haut et l'autre en bas, occupant entièrement les colonnes $1$ et $2$ : il reste un rectangle $2 \times (n-2)$, soit $u_{n-2}$ pavages.

Ces cas sont deux à deux incompatibles et couvrent tout, d'où

$$\boxed{u_n = 2\,u_{n-1} + 2\,v_{n-1} + u_{n-2}} \qquad (n \geqslant 2).$$

**Relation pour $v_n$.** Dans un rectangle $2 \times n$ privé de sa case en haut à gauche, la case en bas à gauche doit être recouverte, de deux façons possibles :

- **par un carré $1 \times 1$** : il reste un rectangle $2 \times (n-1)$ entier, soit $u_{n-1}$ pavages ;
- **par un domino couché** occupant les cases du bas des colonnes $1$ et $2$ : il reste un rectangle $2 \times (n-1)$ privé de sa case en bas à gauche, soit $v_{n-1}$ pavages.

D'où

$$\boxed{v_n = u_{n-1} + v_{n-1}} \qquad (n \geqslant 2).$$

**Les valeurs de départ.** On pose $u_0 = 1$ (il y a une seule façon de ne rien paver) et on a $u_1 = 2$. Enfin $v_1 = 1$ : le rectangle $2 \times 1$ privé de sa case du haut se réduit à une seule case, qu'on ne peut recouvrir que par un carré.

**Vérification.** $u_2 = 2 u_1 + 2 v_1 + u_0 = 4 + 2 + 1 = 7$. C'est bien la valeur trouvée à la main.

### 3. Le calcul de $u_{10}$

Il ne reste qu'à dérouler le tableau.

| $n$ | $0$ | $1$ | $2$ | $3$ | $4$ | $5$ | $6$ | $7$ | $8$ | $9$ | $10$ |
|---|---|---|---|---|---|---|---|---|---|---|---|
| $u_n$ | $1$ | $2$ | $7$ | $22$ | $71$ | $228$ | $733$ | $2\,356$ | $7\,573$ | $24\,342$ | $78\,243$ |
| $v_n$ | | $1$ | $3$ | $10$ | $32$ | $103$ | $331$ | $1\,064$ | $3\,420$ | $10\,993$ | |

Par exemple $u_3 = 2 \times 7 + 2 \times 3 + 2 = 22$, puis $v_3 = u_2 + v_2 = 7 + 3 = 10$, et ainsi de suite.

$$\boxed{u_{10} = 78\,243 .}$$

## Going further

**Une seule suite, si l'on y tient.** On peut éliminer $v_n$ et obtenir une récurrence portant sur $u$ seul :

$$u_n = 3\,u_{n-1} + u_{n-2} - u_{n-3} \qquad (n \geqslant 3) .$$

Vérifiez-la sur le tableau : $u_{10} = 3 \times 24\,342 + 7\,573 - 2\,356 = 78\,243$. Elle est plus courte mais beaucoup moins parlante : on n'y lit plus aucune figure. En compétition comme en club, **une paire de suites qui se répondent est souvent préférable à une seule récurrence plus longue.**

**Et sans les carrés $1 \times 1$ ?** Si l'on n'autorise que les dominos, le même raisonnement sur la colonne de gauche donne $u_n = u_{n-1} + u_{n-2}$ : on retrouve la suite de Fibonacci.

**Et sans les dominos debout ?** Chaque ligne se pave alors indépendamment avec des carrés et des dominos couchés, soit $F_{n+1}$ façons par ligne, donc $F_{n+1}^2$ en tout, où $(F_k)$ est encore la suite de Fibonacci.

**La croissance.** Le rapport $u_n / u_{n-1}$ tend vers la plus grande racine de $X^3 - 3X^2 - X + 1$, qui vaut environ $\text{3,214}$. On le pressent dans le tableau : $78\,243 / 24\,342 \approx \text{3,214}$.
