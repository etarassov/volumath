---
id: "40446"
title: "La réussite de Sisyphe : premières probabilités et algorithme"
grade: 10
theme: probability-statistics
difficulty: 3
duration_min: 40
tags: [probabilite, des, nombres-premiers, arbre, evenement-contraire, variable-aleatoire, algorithme]
adapted_from: null
see_also: ["40445", "40447"]
same_as: []
created: 2026-11-27
source:
  name: "Concours général des lycées 2013, mathématiques, série S"
  reference: "cg-2013-s-sujet.pdf, problème III « Il faut passer les premiers », question 2 (a et b)"
  url: "https://www.freemaths.fr/annales-composition-mathematiques-concours-general/concours-general-mathematiques-sujet-serie-s-2013.pdf"
  original_language: "fr"
  local_copy: "sources/originals/concours-general/cg-2013-s-sujet.pdf"
---

## Statement

Sisyphe a dessiné au sol $106$ cases numérotées de $0$ à $105$. Il dispose d'un jeton et d'un dé
équilibré à six faces, et il joue à une *réussite* (un jeu qui se joue seul).

Au début de la réussite, il pose le jeton sur la case $0$. Il lance ensuite le dé ; quand le dé
affiche la valeur $k$, il avance le jeton de $k$ cases, et :

- si le jeton atteint ou dépasse la case $100$, Sisyphe a gagné ;
- si le jeton arrive sur une case dont le numéro est un nombre premier inférieur à $100$, Sisyphe
  a perdu ;
- dans les autres cas, Sisyphe relance le dé et la réussite continue.

Les vingt-cinq nombres premiers inférieurs à $100$ sont

$$2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97.$$

La réussite s'arrête dès que Sisyphe a gagné ou perdu. On note $X$ le numéro de la case où se
trouve le jeton à la fin de la réussite, et $P(X = k)$ la probabilité que la réussite se termine
sur la case $k$.

1. Déterminer $P(X = 2)$, $P(X = 3)$, $P(X \geq 4)$ et $P(X = 5)$.
2. Proposer un algorithme, par exemple un programme en Python, qui calcule $P(X = k)$ pour tout
   entier $k$ de $0$ à $105$.

## Hints

1. **Question 1.** Faire un arbre des premiers lancers. Sur quelles cases le jeton peut-il se
   trouver après un lancer, et sur lesquelles la réussite continue-t-elle ?
2. **Question 1.** La réussite ne peut pas se terminer sur la case $0$ ni sur la case $1$. Quel est
   l'événement contraire de $X \geq 4$ ?
3. **Question 1.** Pour arriver en case $5$, le jeton vient forcément de la case $0$, $1$ ou $4$.
   Lister les suites de lancers possibles.
4. **Question 2.** Calculer d'abord, pour chaque case $j$, la probabilité $v_j$ que le jeton
   tombe un jour sur cette case. Pour arriver en $j$, d'où le jeton peut-il venir ?
5. **Question 2.** Le jeton arrive en $j$ depuis une case $i$, entre $j - 6$ et $j - 1$, où la
   réussite continuait, avec un lancer égal à $j - i$, de probabilité $\frac{1}{6}$. Comme le jeton
   avance toujours, ces façons d'arriver en $j$ ne peuvent pas se produire en même temps.

## Solution

**1.** Les lancers sont indépendants et chaque valeur a la probabilité $\frac{1}{6}$ ; une suite
donnée de $r$ lancers a donc la probabilité $\left(\frac{1}{6}\right)^r$.

*Premier lancer.* Selon la valeur du dé, le jeton arrive en case $1$, $2$, $3$, $4$, $5$ ou $6$.
Les cases $2$, $3$ et $5$ sont des nombres premiers : la réussite s'y arrête. Elle continue
depuis les cases $1$, $4$ et $6$.

*Depuis la case 1*, le deuxième lancer mène aux cases $2$, $3$, $4$, $5$, $6$ ou $7$.

**$P(X = 2)$.** Le jeton arrive en case $2$ soit directement (lancer $2$), soit en passant par la
case $1$ (lancers $1$ puis $1$). Donc
$$P(X = 2) = \frac{1}{6} + \frac{1}{36} = \frac{7}{36}.$$

**$P(X = 3)$.** De même : lancer $3$, ou lancers $1$ puis $2$. Donc
$$P(X = 3) = \frac{1}{6} + \frac{1}{36} = \frac{7}{36}.$$

**$P(X \geq 4)$.** La réussite finit toujours (le jeton avance à chaque lancer), et elle ne finit
jamais sur la case $0$ ou $1$. L'événement contraire de $X \geq 4$ est donc « $X = 2$ ou $X = 3$ »,
et
$$P(X \geq 4) = 1 - \frac{7}{36} - \frac{7}{36} = \frac{22}{36} = \frac{11}{18}.$$

**$P(X = 5)$.** Avant d'arriver en case $5$, le jeton ne peut être passé que par des cases
inférieures à $5$ où la réussite continue, c'est-à-dire $0$, $1$ et $4$. Les suites de lancers qui
mènent en case $5$ sont :

| chemin | lancers | probabilité |
|---|---|---|
| $0 \to 5$ | $5$ | $\frac{1}{6}$ |
| $0 \to 1 \to 5$ | $1$ puis $4$ | $\frac{1}{36}$ |
| $0 \to 4 \to 5$ | $4$ puis $1$ | $\frac{1}{36}$ |
| $0 \to 1 \to 4 \to 5$ | $1$, $3$ puis $1$ | $\frac{1}{216}$ |

Donc
$$P(X = 5) = \frac{36 + 6 + 6 + 1}{216} = \frac{49}{216}.$$

**2.** *L'idée.* Pour chaque case $j$, notons $v_j$ la probabilité que le jeton tombe un jour
sur la case $j$. Au départ, $v_0 = 1$.

Pour $j \geq 1$, le jeton arrive en $j$ depuis une case $i$ comprise entre $j - 6$ et $j - 1$
(et $i \geq 0$), à condition que la réussite continue sur la case $i$ (c'est-à-dire que $i$ soit
inférieur à $100$ et ne soit pas premier) et que le lancer suivant vaille exactement $j - i$. La
probabilité de « passer par $i$, puis lancer $j - i$ » vaut $v_i \times \frac{1}{6}$. Le jeton
avançant toujours, il ne passe qu'une fois sur chaque case et ces façons d'arriver en $j$ sont
incompatibles. Donc
$$v_j = \frac{1}{6} \times \left(\text{somme des } v_i \text{ pour } j - 6 \leq i \leq j - 1,\ i \geq 0,\ \text{la réussite continuant en } i\right).$$

Enfin, la réussite se termine sur la case $k$ exactement quand le jeton arrive en $k$ et que $k$
est une case de fin : $P(X = k) = v_k$ si $k$ est premier ou si $k \geq 100$, et $P(X = k) = 0$
sinon.

*Le programme.*

```python
from fractions import Fraction   # pour avoir des fractions exactes

premiers = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47,
            53, 59, 61, 67, 71, 73, 79, 83, 89, 97]

def continue_sur(i):
    # vrai si la réussite continue quand le jeton est sur la case i
    return i < 100 and i not in premiers

v = [Fraction(0)] * 106
v[0] = Fraction(1)
for j in range(1, 106):
    s = Fraction(0)
    for i in range(max(0, j - 6), j):
        if continue_sur(i):
            s = s + v[i]
    v[j] = s / 6

loi = [Fraction(0)] * 106          # loi[k] contiendra P(X = k)
for k in range(106):
    if k >= 100 or k in premiers:
        loi[k] = v[k]
```

*Vérification.* Le programme redonne les résultats de la question 1 : $v_1 = \frac{1}{6}$,
$v_2 = \frac{1}{6}(1 + \frac{1}{6}) = \frac{7}{36}$, $v_4 = \frac{7}{36}$ et
$v_5 = \frac{1}{6}\left(1 + \frac{1}{6} + \frac{7}{36}\right) = \frac{49}{216}$. La somme de toutes
les valeurs `loi[k]` vaut bien $1$.

**Bilan.** Un arbre suffit pour les premières cases, mais il devient vite énorme. L'algorithme
remplace l'arbre par une règle simple : la probabilité de tomber sur une case est le sixième de
la somme des probabilités des six cases précédentes où le jeu continue. On calcule ainsi toute la
loi de $X$, case après case.

## Going further

- En exécutant le programme, on trouve que la probabilité de gagner,
  $P(X \geq 100) = P(X = 100) + \cdots + P(X = 105)$, vaut environ $\text{3,45} \times 10^{-4}$ :
  Sisyphe gagne en moyenne une réussite sur $2\,900$ environ.
- Pourquoi le jeton ne peut-il pas finir sur une case non première inférieure à $100$, ni au-delà
  de la case $105$ ?
- La suite du sujet cherche à estimer cette probabilité de gain sans faire tourner l'algorithme
  (exercice 40447). Le début du problème, où Sisyphe recommence chaque fois qu'il perd, est
  l'exercice 40445.
