---
id: "4814"
title: "Une formule à nombres premiers, vraiment ?"
grade: 10
theme: arithmetic
difficulty: 3
duration_min: 30
tags: [nombres-premiers, contre-exemple, factorisation, conjecture]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Introduction to Induction (Olga Radko)"
  reference: "handoutId10-0.pdf, section 4, exercice 4"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/handoutId10-0.pdf"
---

## Statement

On considère l'expression
$$N(n) = n^2 + n + 41 .$$

1. Calculer $N(0)$, $N(1)$, $N(2)$, $N(3)$, $N(4)$ et $N(5)$, et vérifier que ce sont tous des nombres premiers.
2. Est-il vrai que $N(n)$ est un nombre premier pour **tout** entier naturel $n$ ? Justifier.

## Hints

1. Ne te lance pas dans un calcul interminable : cherche une valeur de $n$ pour laquelle tu peux **prouver** que $N(n)$ n'est pas premier, sans avoir à faire de division.
2. Pour qu'un nombre ne soit pas premier, il suffit d'exhiber un diviseur. Quel nombre saute aux yeux dans l'expression ?
3. Que se passe-t-il si tu prends $n$ égal à $41$ ? Écris $N(41)$ et regarde si tu peux mettre $41$ en facteur.
4. Il existe aussi une valeur de $n$ plus petite que $41$ qui ne marche pas. Essaie $n = 40$ et compare le résultat à $41^2$.

## Solution

### 1. Les premières valeurs

| $n$ | $0$ | $1$ | $2$ | $3$ | $4$ | $5$ |
|---|---|---|---|---|---|---|
| $N(n)$ | $41$ | $43$ | $47$ | $53$ | $61$ | $71$ |

Tous ces nombres sont premiers. En continuant, on trouve encore $83$, $97$, $113$, $131$, $151$... La formule semble fabriquer des nombres premiers à la chaîne. C'est une formule célèbre, découverte par Euler.

### 2. La formule finit par échouer

**Réponse : non, $N(n)$ n'est pas toujours premier.**

**Le contre-exemple le plus facile à voir : $n = 41$.**
$$N(41) = 41^2 + 41 + 41 = 41 \times (41 + 1 + 1) = 41 \times 43 .$$
On a mis $41$ en facteur dans les trois termes, et le résultat est un produit de deux nombres tous les deux différents de $1$. Donc $N(41) = 1763$ n'est pas premier.

**Le plus petit contre-exemple : $n = 40$.**
$$N(40) = 40^2 + 40 + 41 = 1600 + 81 = 1681 .$$
Or $41^2 = 1681$. Donc
$$N(40) = 41^2,$$
qui n'est pas premier non plus.

On peut aussi le voir sans calculer : $40^2 + 40 + 41 = 40 \times 41 + 41 = 41 \times (40 + 1) = 41 \times 41$.

**Et avant $40$ ?** Pour $n = 0, 1, 2, \ldots, 39$, le nombre $N(n)$ est bien premier à chaque fois. C'est ce qui rend la formule si trompeuse : quarante essais réussis de suite, et pourtant l'affirmation est fausse.

**La morale.** Vérifier une affirmation sur un grand nombre de cas ne la démontre pas. Une formule qui « marche » quarante fois peut tomber en panne à la quarante et unième. Pour être sûr, il faut une démonstration ; pour réfuter, un seul contre-exemple suffit.

## Going further

1. Montre qu'**aucun** polynôme $P$ à coefficients entiers, non constant, ne peut donner un nombre premier pour tout entier $n \geqslant 0$. (Indication : pose $p = P(0)$ en supposant $p$ premier, et regarde $P(p)$, $P(2p)$, $P(3p)$, ...)
2. La formule $n^2 + n + 41$ donne des nombres premiers pour $n = 0$ jusqu'à $n = 39$. Existe-t-il d'autres nombres que $41$ ayant cette propriété ? Essaie $n^2 + n + 17$ et $n^2 + n + 11$ : jusqu'où tiennent-ils ?
3. Le nombre $41$ n'est pas là par hasard : il est lié aux « nombres de Heegner » $1, 2, 3, 7, 11, 19, 43, 67, 163$. Remarque que $41 = \dfrac{163 + 1}{4}$ et cherche pourquoi.
