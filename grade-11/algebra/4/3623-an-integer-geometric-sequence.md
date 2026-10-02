---
id: "3623"
title: "Une suite géométrique d'entiers qui finit sur 2025²"
grade: 11
theme: algebra
difficulty: 4
duration_min: 45
tags: [suite-geometrique, raison-rationnelle, decomposition-en-facteurs-premiers, cubes, denombrement]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), AMC 8 training, Berkeley mini Math Tournament 2025"
  reference: "Handout-5091-5540.pdf, problème 16 de l'Individual Round (corrigé dans Handout-5092-5540.pdf)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-5091-5540.pdf"
---

## Statement

Soient $a$, $b$ et $c$ trois entiers strictement positifs tels que

$$a, \quad b, \quad c, \quad 2025^2$$

soient, dans cet ordre, quatre termes consécutifs d'une suite géométrique **strictement croissante**, c'est-à-dire $a < b < c < 2025^2$.

Combien de valeurs différentes le nombre $a$ peut-il prendre ?

## Hints

1. Note $r$ la raison. Elle n'est pas forcément entière, mais elle est rationnelle : pourquoi ?
2. Décompose $2025$ en facteurs premiers. Tu remarqueras au passage que $2025 = 45^2$, donc $2025^2 = 45^4$.
3. Écris $r = \dfrac{m}{n}$ sous forme irréductible et traduis le fait que $a$, $ar$, $ar^2$ et $ar^3$ sont tous entiers. Que peux-tu dire de $m^3$ ?
4. Une fois trouvée la forme générale de $a$, il reste à traduire la stricte croissance pour borner le paramètre.

## Solution

**Étape 1. Poser la raison.**

Notons $r$ la raison de la suite. Alors

$$b = ar, \qquad c = ar^2, \qquad 2025^2 = ar^3$$

Comme $r = \dfrac{b}{a}$ est un quotient de deux entiers, $r$ est un nombre rationnel. Et comme la suite est strictement croissante avec des termes positifs, on a $r > 1$.

Écrivons $r = \dfrac{m}{n}$ sous forme irréductible, avec $m$ et $n$ entiers strictement positifs, premiers entre eux, et $m > n$ puisque $r > 1$.

**Étape 2. Traduire que tous les termes sont entiers.**

On a $b = \dfrac{am}{n}$. Comme $b$ est entier et que $m$ et $n$ sont premiers entre eux, $n$ divise $a$.

De même $c = \dfrac{am^2}{n^2}$ est entier, et $m^2$ est premier avec $n^2$, donc $n^2$ divise $a$.

Enfin $2025^2 = \dfrac{am^3}{n^3}$ est entier, donc $n^3$ divise $a$.

Écrivons alors $a = n^3 s$ avec $s$ entier strictement positif. Les quatre termes deviennent

$$a = n^3 s, \qquad b = n^2 m s, \qquad c = n m^2 s, \qquad 2025^2 = m^3 s$$

**Étape 3. Utiliser la décomposition de $2025^2$.**

$$2025 = 81 \times 25 = 3^4 \times 5^2 \qquad \text{donc} \qquad 2025^2 = 3^8 \times 5^4$$

La dernière égalité de l'étape 2 dit que $m^3$ divise $2025^2$. Les seuls facteurs premiers de $m$ sont donc $3$ et $5$ : écrivons $m = 3^i \times 5^j$. Alors $m^3 = 3^{3i} \times 5^{3j}$ divise $3^8 \times 5^4$ si et seulement si

$$3i \leqslant 8 \quad \text{et} \quad 3j \leqslant 4$$

c'est-à-dire $i \in \{0, 1, 2\}$ et $j \in \{0, 1\}$. Les valeurs possibles de $m$ sont donc

$$1, \quad 3, \quad 9, \quad 5, \quad 15, \quad 45$$

Ce sont exactement les diviseurs de $45$. Retenons ce point : **$m$ divise $45$**.

**Étape 4. La forme générale de $a$.**

Remarquons que $2025 = 45^2$, donc $2025^2 = 45^4$. De $m^3 s = 45^4$ on tire $s = \dfrac{45^4}{m^3}$, puis

$$a = n^3 s = \frac{45^4 n^3}{m^3} = 45 \times \left(\frac{45 n}{m}\right)^3$$

Posons $k = \dfrac{45n}{m}$. Comme $m$ divise $45$, ce nombre $k$ est un entier strictement positif, et

$$a = 45\,k^3$$

La raison s'écrit alors $r = \dfrac{m}{n} = \dfrac{45}{k}$.

**Étape 5. Traduire la stricte croissance.**

Avec $r = \dfrac{45}{k}$ et $a = 45k^3$, les quatre termes sont

$$a = 45k^3, \qquad b = 2025k^2, \qquad c = 91125\,k, \qquad 2025^2 = 4100625$$

(ce sont bien des entiers). La suite est strictement croissante si et seulement si $r > 1$, c'est-à-dire

$$\frac{45}{k} > 1 \qquad \Longleftrightarrow \qquad k < 45$$

Donc $k$ peut prendre les valeurs $1, 2, \ldots, 44$.

**Étape 6. Compter.**

À chaque $k$ de $1$ à $44$ correspond une suite valable, et la fonction $k \mapsto 45k^3$ est strictement croissante, donc ces $44$ valeurs de $a$ sont deux à deux différentes.

Réciproquement, on vient de montrer que toute suite convenable est de cette forme.

**Réponse.** $a$ peut prendre $44$ valeurs différentes.

*Contrôle sur un exemple.* Pour $k = 3$ : $a = 45 \times 27 = 1215$, $r = 15$, et la suite est $1215$, $18225$, $273375$, $4100625 = 2025^2$. Chaque terme est bien $15$ fois le précédent.

## Going further

La plus petite valeur de $a$ est $45$ (pour $k = 1$, avec la raison $r = 45$), et la plus grande est $45 \times 44^3 = 3\,833\,280$ (pour $k = 44$, avec la raison $r = \frac{45}{44}$, à peine supérieure à $1$).

Tout repose sur l'étape 3, où l'on a montré que $m$ divise $45$. Cela tient à la taille des exposants : dans $2025^2 = 3^8 \times 5^4$, la condition $3i \leqslant 8$ donne $i \leqslant 2$ et la condition $3j \leqslant 4$ donne $j \leqslant 1$, exactement les exposants de $45 = 3^2 \times 5$.

Cette coïncidence n'a rien d'automatique. Si le dernier terme était $2^{12}$ au lieu de $2025^2$, la condition $3i \leqslant 12$ donnerait $i \leqslant 4$, donc $m$ pourrait valoir $16$, qui ne divise pas $2^3 = 8$. Il faudrait alors refaire le décompte à la main.
