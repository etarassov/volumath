---
id: "5314"
title: "Cinq paires, c'est impossible"
grade: 10
theme: combinatorics
difficulty: 4
duration_min: 40
tags: [parite, comptage, positions, suites de langford, impossibilite]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "MathCircles.org (National Association of Math Circles), Puzzling Pairs (d'après les suites de Langford)"
  reference: "Puzzling-Pairs-slides-1.pdf, diapositives 7 à 13 ; les diapositives suggèrent de trier les positions paires et impaires, mais ne donnent aucune démonstration"
  url: "https://mathcircles.org/activity/puzzling-pairs/"
  original_language: "en"
  local_copy: "sources/originals/namc/Puzzling-Pairs-slides-1.pdf"
---

## Statement

On dispose de $2N$ jetons : deux jetons marqués $1$, deux marqués $2$, …, deux marqués $N$. On veut les ranger en ligne de façon que, pour chaque $k$ de $1$ à $N$, il y ait exactement **$k$ cases entre les deux jetons marqués $k$**.

Pour $N = 3$ et pour $N = 4$, c'est possible :
$$2\ \ 3\ \ 1\ \ 2\ \ 1\ \ 3 \qquad \text{et} \qquad 4\ \ 1\ \ 3\ \ 1\ \ 2\ \ 4\ \ 3\ \ 2 .$$

1. Démontrer que pour $N = 5$ et pour $N = 6$, aucun rangement n'existe.
2. Pour quelles valeurs de $N$ un rangement peut-il exister ?

## Hints

1. Numéroter les $2N$ cases de $1$ à $2N$ et s'intéresser à la **parité** de la position de chaque jeton.
2. Si un jeton marqué $k$ occupe la case $p$, quelle case occupe son jumeau ? Les deux positions ont-elles la même parité ?
3. Séparer les valeurs de $k$ selon leur parité : que peut-on dire d'une paire dont le numéro $k$ est pair ? Et d'une paire dont le numéro est impair ?
4. Compter de deux façons le nombre de cases de numéro impair occupées par des jetons. Il y en a $N$ en tout.

## Solution

### L'outil : la parité des positions

Numérotons les cases de $1$ à $2N$. Parmi elles, il y a exactement $N$ cases de numéro **impair** et $N$ cases de numéro **pair**.

Si les deux jetons marqués $k$ occupent les cases $p$ et $q$ avec $q > p$, la condition « $k$ cases entre eux » s'écrit
$$q = p + k + 1 .$$

Donc :

- **si $k$ est impair**, $k+1$ est pair, donc $p$ et $q$ ont la **même parité** : les deux jetons sont tous les deux sur des cases impaires, ou tous les deux sur des cases paires ;
- **si $k$ est pair**, $k+1$ est impair, donc $p$ et $q$ sont **de parités différentes** : l'un des deux jetons est sur une case impaire, l'autre sur une case paire.

### Le comptage

Comptons les cases impaires, qui sont au nombre de $N$, en regardant qui les occupe.

Notons $O$ le nombre de valeurs **impaires** de $k$ dans $\{1, 2, \ldots, N\}$ et $E$ le nombre de valeurs **paires**, de sorte que $O + E = N$.

- Chaque valeur paire de $k$ occupe **exactement une** case impaire (l'un de ses deux jetons y est, l'autre est sur une case paire). Cela fait $E$ cases impaires.
- Chaque valeur impaire de $k$ occupe **zéro ou deux** cases impaires. Notons $a$ le nombre de valeurs impaires de $k$ dont les deux jetons sont sur des cases impaires. Cela fait $2a$ cases impaires.

Toutes les cases impaires sont occupées, donc
$$E + 2a = N = E + O, \qquad \text{d'où} \qquad 2a = O .$$

**Conclusion : un rangement ne peut exister que si $O$, le nombre d'entiers impairs entre $1$ et $N$, est pair.**

### Question 1 : $N = 5$ et $N = 6$ sont impossibles

- Pour $N = 5$, les entiers impairs de $1$ à $5$ sont $1$, $3$, $5$ : il y en a $O = 3$, un nombre impair. Impossible.
- Pour $N = 6$, les entiers impairs de $1$ à $6$ sont encore $1$, $3$, $5$ : $O = 3$, impair. Impossible.

On vérifie au passage que les deux cas réussis ne sont pas contredits : pour $N = 3$, les impairs sont $1$ et $3$, donc $O = 2$, pair ; pour $N = 4$, de même $O = 2$.

### Question 2 : la condition sur $N$

Le nombre d'entiers impairs entre $1$ et $N$ vaut $\dfrac{N}{2}$ si $N$ est pair, et $\dfrac{N+1}{2}$ si $N$ est impair. Examinons les quatre restes possibles de $N$ dans la division par $4$ :

| $N$ modulo $4$ | $O$ | $O$ est-il pair ? |
|---|---|---|
| $0$ | $N/2$, multiple de $2$ | oui |
| $1$ | $(N+1)/2$, impair | non |
| $2$ | $N/2$, impair | non |
| $3$ | $(N+1)/2$, pair | oui |

Par exemple, pour $N = 8$ on a $O = 4$, pour $N = 9$ on a $O = 5$, pour $N = 10$ on a $O = 5$, pour $N = 11$ on a $O = 6$.

**Un rangement ne peut donc exister que si $N$ est un multiple de $4$ ou vaut un multiple de $4$ moins un**, c'est-à-dire
$$N \equiv 0 \quad \text{ou} \quad 3 \pmod 4 .$$

Cela exclut $N = 1, 2, 5, 6, 9, 10, 13, 14, \ldots$

Ce raisonnement montre seulement qu'un rangement est **impossible** en dehors de ces valeurs. La réciproque est vraie aussi — pour tout $N$ multiple de $4$ ou égal à un multiple de $4$ moins un, il existe au moins un rangement — mais elle est nettement plus difficile et demande une construction explicite. Pour $N = 7$, on peut par exemple vérifier
$$4\ \ 6\ \ 1\ \ 7\ \ 1\ \ 4\ \ 3\ \ 5\ \ 6\ \ 2\ \ 3\ \ 7\ \ 2\ \ 5 .$$

## Going further

1. Combien de rangements existe-t-il pour $N = 7$ ? (Il y en a bien plus que pour $N = 3$ ou $N = 4$.)
2. Reprendre l'étude avec des **triplets** de jetons au lieu de paires : trois jetons marqués $k$, séparés deux à deux par $k$ cases. Quelles valeurs de $N$ le comptage exclut-il ?
3. Une autre démonstration du même résultat : additionner les numéros de toutes les cases de deux façons, une fois comme $1 + 2 + \cdots + 2N$, une fois en regroupant les jetons par paires. Qu'obtient-on ?
