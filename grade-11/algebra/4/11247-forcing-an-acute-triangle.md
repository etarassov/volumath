---
id: "11247"
title: "Forcer un triangle acutangle"
grade: 11
theme: algebra
difficulty: 4
duration_min: 45
tags: [triangle acutangle, al-kashi, fibonacci, recurrence, inegalites]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2017-2018 n° 4 (combinatoire)"
  reference: "2018-01_pofm-2017-2018-envoi4.pdf, Exercices du groupe B, exercice 3 ; corrigé 2018-02_pofm-2017-2018-envoi4-corrige.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2018/01/pofm-2017-2018-envoi4.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2018-01_pofm-2017-2018-envoi4.pdf"
---

## Statement

Trouver tous les entiers $n \geqslant 3$ qui ont la propriété suivante.

> Si $a_1, a_2, \ldots, a_n$ sont des réels strictement positifs tels que le plus grand d'entre eux
> est au plus égal à $n$ fois le plus petit, alors on peut toujours en choisir trois qui sont les
> longueurs des côtés d'un triangle acutangle, c'est-à-dire d'un triangle dont les trois angles sont
> aigus.

## Hints

1. Multiplier tous les nombres par un même réel strictement positif ne change rien au problème.
   On peut donc supposer que le plus petit vaut $1$, et les ranger :
   $1 = a_1 \leqslant a_2 \leqslant \cdots \leqslant a_n \leqslant n$.
2. Avec la formule d'Al-Kashi, trouve à quelle condition trois réels $a \leqslant b \leqslant c$ sont
   les longueurs des côtés d'un triangle acutangle. La réponse ne fait intervenir que les carrés.
3. Cherche une liste qui ne contient aucun triangle acutangle et dont les nombres grandissent le
   moins vite possible. Que valent alors $a_1^2$, $a_2^2$, $a_3^2$, $a_4^2$, … ?
4. On voit apparaître les nombres de Fibonacci $1, 1, 2, 3, 5, 8, \ldots$ Compare le $n$-ième d'entre
   eux avec $n^2$.

## Solution

### Simplifier

Si on multiplie tous les $a_i$ par un même réel $t > 0$, la condition « le plus grand est au plus
$n$ fois le plus petit » reste vraie, et trois longueurs forment un triangle acutangle si et
seulement si les trois longueurs multipliées par $t$ en forment un (on agrandit ou on réduit le
triangle sans changer ses angles). En divisant par le plus petit des $a_i$, et en les rangeant dans
l'ordre, on peut donc supposer que
$$1 = a_1 \leqslant a_2 \leqslant \cdots \leqslant a_n , \qquad \text{et la condition devient } a_n \leqslant n .$$

### Quand trois longueurs forment-elles un triangle acutangle ?

Soient $a \leqslant b \leqslant c$ trois réels strictement positifs.

**Affirmation.** Ce sont les côtés d'un triangle acutangle si et seulement si $a^2 + b^2 > c^2$.

*Si c'est un triangle acutangle.* Notons $\gamma$ l'angle opposé au côté de longueur $c$. La formule
d'Al-Kashi donne $c^2 = a^2 + b^2 - 2ab\cos\gamma$. Comme $\gamma$ est aigu, $\cos\gamma > 0$, donc
$c^2 < a^2 + b^2$.

*Réciproquement*, supposons $a^2 + b^2 > c^2$. Alors $(a + b)^2 = a^2 + b^2 + 2ab > c^2$, donc
$a + b > c$ : comme $c$ est le plus grand des trois nombres, cela suffit pour qu'il existe un triangle
de côtés $a$, $b$, $c$. Dans ce triangle, Al-Kashi donne
$2ab\cos\gamma = a^2 + b^2 - c^2 > 0$, donc $\gamma$ est aigu. Enfin, dans un triangle, le plus grand
angle est en face du plus grand côté, donc $\gamma$ est le plus grand des trois angles : les deux
autres sont aussi aigus.

### Les listes sans triangle acutangle

Disons qu'une liste rangée $1 = a_1 \leqslant \cdots \leqslant a_n$ est **sans triangle acutangle**
si on ne peut pas y choisir trois nombres qui sont les côtés d'un triangle acutangle. D'après
l'affirmation, cela veut dire que $a_i^2 + a_j^2 \leqslant a_k^2$ pour tous $i < j < k$.

Il suffit de le vérifier pour trois nombres qui se suivent. En effet, supposons que
$$a_{k-2}^2 + a_{k-1}^2 \leqslant a_k^2 \qquad \text{pour tout } k \text{ de } 3 \text{ à } n . \qquad (\star)$$
Si $i < j < k$, alors $i \leqslant k - 2$ et $j \leqslant k - 1$, donc $a_i \leqslant a_{k-2}$ et
$a_j \leqslant a_{k-1}$, et
$$a_i^2 + a_j^2 \leqslant a_{k-2}^2 + a_{k-1}^2 \leqslant a_k^2 .$$
Ainsi, une liste rangée est sans triangle acutangle si et seulement si elle vérifie $(\star)$.

### Les nombres de Fibonacci

Notons $F_1 = 1$, $F_2 = 1$ et $F_{k+2} = F_{k+1} + F_k$ : ce sont les nombres de Fibonacci.

**Dans une liste sans triangle acutangle, $a_k^2 \geqslant F_k$ pour tout $k$.** On le montre par
récurrence. On a $a_1^2 = 1 = F_1$ et $a_2^2 \geqslant a_1^2 = 1 = F_2$. Si
$a_{k-2}^2 \geqslant F_{k-2}$ et $a_{k-1}^2 \geqslant F_{k-1}$, alors d'après $(\star)$,
$$a_k^2 \geqslant a_{k-2}^2 + a_{k-1}^2 \geqslant F_{k-2} + F_{k-1} = F_k .$$

**Inversement, la liste $a_k = \sqrt{F_k}$ est sans triangle acutangle.** Elle est rangée, car les
$F_k$ ne diminuent jamais, et elle commence par $a_1 = 1$. Pour tout $k \geqslant 3$, on a
$a_{k-2}^2 + a_{k-1}^2 = F_{k-2} + F_{k-1} = F_k = a_k^2$, donc $(\star)$ est vraie.

### Le lien avec $n^2$

- **Si $F_n > n^2$, alors $n$ a la propriété.** Prenons une liste comme dans l'énoncé, simplifiée
  comme plus haut : $a_n \leqslant n$, donc $a_n^2 \leqslant n^2 < F_n$. Elle ne peut donc pas être
  sans triangle acutangle : trois de ses nombres forment un triangle acutangle.
- **Si $F_n \leqslant n^2$, alors $n$ n'a pas la propriété.** La liste $a_k = \sqrt{F_k}$ pour
  $k = 1, \ldots, n$ a pour plus petit nombre $1$ et pour plus grand $\sqrt{F_n} \leqslant n$ : elle
  vérifie la condition de l'énoncé, et pourtant elle est sans triangle acutangle.

Les entiers cherchés sont donc exactement les $n \geqslant 3$ tels que $F_n > n^2$.

### Le calcul

| $n$ | $3$ | $4$ | $5$ | $6$ | $7$ | $8$ | $9$ | $10$ | $11$ | $12$ | $13$ | $14$ |
|---|---|---|---|---|---|---|---|---|---|---|---|---|
| $F_n$ | $2$ | $3$ | $5$ | $8$ | $13$ | $21$ | $34$ | $55$ | $89$ | $144$ | $233$ | $377$ |
| $n^2$ | $9$ | $16$ | $25$ | $36$ | $49$ | $64$ | $81$ | $100$ | $121$ | $144$ | $169$ | $196$ |

Pour $3 \leqslant n \leqslant 12$, on a $F_n \leqslant n^2$ (avec égalité pour $n = 12$). Pour
$n = 13$ et $n = 14$, on a $F_n > n^2$.

Montrons que $F_n > n^2$ pour tout $n \geqslant 13$, par récurrence de deux en deux. Supposons que
$F_n > n^2$ et $F_{n+1} > (n + 1)^2$ pour un $n \geqslant 13$. Comme
$n^2 - 2n - 3 = (n - 3)(n + 1) \geqslant 0$, on a $n^2 \geqslant 2n + 3$, donc
$$F_{n+2} = F_n + F_{n+1} > n^2 + (n + 1)^2 \geqslant 2n + 3 + n^2 + 2n + 1 = (n + 2)^2 .$$

**Conclusion : les entiers cherchés sont tous les entiers $n \geqslant 13$.**

## Going further

On pose la même question en demandant seulement un triangle, pas forcément acutangle : trois
longueurs $a \leqslant b \leqslant c$ forment un triangle quand $a + b > c$. Montrer, avec la même
méthode, que les entiers qui ont la propriété sont alors les entiers $n \geqslant 6$. (Pour $n = 5$,
regarde la liste $1, 1, 2, 3, 5$.)
