---
id: "11455"
title: "Deux piles, jamais plus de la moitié"
grade: 11
theme: logic-reasoning
difficulty: 4
duration_min: 45
tags: [jeu, strategie, positions-perdantes, puissances-de-2, demonstration]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2023-2024 n° 4 (combinatoire)"
  reference: "2023-04_Sujet-envoi-4-2023-2024.pdf, Exercices Juniors, exercice 8 (repris en exercice 14 des Seniors) ; corrigé 2024-03_corrige-envoi-4-2023-2024.pdf, qui ne donne pas la liste finale des configurations"
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/04/Sujet-envoi-4-2023-2024.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2023-04_Sujet-envoi-4-2023-2024.pdf"
---

## Statement

Aline et Elsa ont $100$ pierres. Au début du jeu, elles les partagent en deux piles, qui contiennent
chacune au moins une pierre, mais pas forcément le même nombre.

Ensuite, chacune à son tour, en commençant par Aline, elles jouent le coup suivant : elles choisissent
une pile, puis retirent de cette pile un nombre de pierres au moins égal à $1$ et au plus égal à la
moitié du nombre de pierres de la pile. La première joueuse qui ne peut plus jouer a perdu.

Trouver tous les partages de départ pour lesquels Elsa a une stratégie gagnante.

## Hints

1. Une pile de $1$ pierre ne peut plus être jouée. Avec une seule pile, pour quelles tailles la joueuse
   qui doit jouer perd-elle ?
2. Avec deux piles, appelle **perdante** une position où la joueuse qui doit jouer perd si l'autre
   joue bien. Teste $(1, 1)$, $(1, 2)$, $(2, 2)$, $(1, 3)$, $(2, 5)$.
3. Ajoute $1$ au nombre de pierres de chaque pile. Les positions perdantes deviennent plus faciles à
   reconnaître.
4. Une pile a $p$ pierres, et après un coup elle en a $p'$. Montre que $p' + 1$ est strictement
   compris entre $\dfrac{p+1}{2}$ et $p + 1$.

## Solution

**Un changement de nombres.** Pour une pile de $p$ pierres, posons $x = p + 1$. Une pile se repère
donc par un nombre $x \geqslant 2$.

Un coup retire $k$ pierres avec $1 \leqslant k \leqslant \frac{p}{2}$. La pile passe à $p' = p - k$
pierres, avec $\frac{p}{2} \leqslant p' \leqslant p - 1$. Avec $x' = p' + 1$, cela donne
$x' \leqslant p < x$ et $x' \geqslant \frac{p}{2} + 1 > \frac{p + 1}{2} = \frac{x}{2}$. Donc

$$\frac{x}{2} < x' < x. \qquad (1)$$

Réciproquement, tout entier $x'$ qui vérifie $(1)$ est atteignable : si $x' < x$ et $x' > \frac{x}{2}$,
alors $p' = x' - 1$ vérifie $p' \leqslant p - 1$, et $p' > \frac{p - 1}{2}$, ce qui pour un entier
veut dire $p' \geqslant \frac{p}{2}$.

**Les positions jumelles.** La position où les deux piles ont $a$ et $b$ pierres est notée $(a, b)$,
et on pose $u = a + 1$, $v = b + 1$. Disons que la position est **jumelle** si le quotient
$\frac{u}{v}$ est une puissance de $2$, positive ou négative :

$$\frac{u}{v} \in \{ \ldots, \tfrac{1}{8}, \tfrac{1}{4}, \tfrac{1}{2}, 1, 2, 4, 8, \ldots \}.$$

Par exemple, $(1, 1)$ est jumelle ($u = v = 2$), et $(2, 5)$ aussi ($\frac{u}{v} = \frac{3}{6} = \frac{1}{2}$).

Montrons que **les positions jumelles sont exactement les positions perdantes**. Il suffit de vérifier
trois choses.

*(a) Quand on ne peut plus jouer, la position est jumelle.* On ne peut plus jouer quand les deux piles
ont $1$ pierre, car une pile de $p \geqslant 2$ pierres peut toujours en perdre une. C'est la position
$(1, 1)$, qui est jumelle.

*(b) Depuis une position jumelle, tout coup mène à une position qui n'est pas jumelle.* Supposons
$\frac{u}{v} = 2^n$, où $n$ est un entier positif, nul ou négatif.

- Un coup sur la première pile remplace $u$ par $u'$ avec $\frac{u}{2} < u' < u$ d'après $(1)$. Le
  quotient est multiplié par $\frac{u'}{u}$, qui est strictement compris entre $\frac{1}{2}$ et $1$.
  Le nouveau quotient est donc strictement compris entre $2^{n-1}$ et $2^n$.
- Un coup sur la seconde pile remplace $v$ par $v'$ avec $\frac{v}{2} < v' < v$. Le quotient est
  multiplié par $\frac{v}{v'}$, qui est strictement compris entre $1$ et $2$. Le nouveau quotient est
  donc strictement compris entre $2^n$ et $2^{n+1}$.

Or il n'y a aucune puissance de $2$ strictement entre deux puissances de $2$ qui se suivent. Dans les
deux cas, la nouvelle position n'est pas jumelle.

*(c) Depuis une position qui n'est pas jumelle, il existe un coup qui mène à une position jumelle.*
Supposons par exemple $u > v$ (si $u = v$, la position est jumelle, et si $u < v$, on échange les
rôles des deux piles). Comme $u$ n'est pas de la forme
$2^n v$, il existe un entier $n \geqslant 0$ tel que

$$2^n v < u < 2^{n+1} v .$$

Jouons sur la première pile pour que $u$ devienne $u' = 2^n v$. C'est un coup permis par $(1)$ :
$u' < u$, et $u < 2^{n+1} v = 2u'$ donne $u' > \frac{u}{2}$. De plus $u' \geqslant v \geqslant 2$,
donc il reste au moins une pierre. La nouvelle position est jumelle.

**La stratégie.** La partie se termine toujours, car le nombre total de pierres diminue à chaque coup.
Une joueuse qui commence son tour devant une position qui n'est pas jumelle joue le coup de (c). Son
adversaire se retrouve devant une position jumelle et, d'après (b), lui rend une position qui n'est pas
jumelle. Ainsi, la première joueuse a toujours une position non jumelle devant elle, donc d'après (a)
elle peut toujours jouer : c'est l'adversaire qui finit par être bloquée. Donc les positions non
jumelles sont gagnantes pour la joueuse qui doit jouer, et les positions jumelles sont perdantes.

**Les partages de $100$ pierres.** Aline joue la première, donc Elsa gagne exactement quand le partage
de départ $(a, b)$ est jumeau. On a $a + b = 100$, donc $u + v = 102$. Supposons $u \geqslant v$ et
$u = 2^n v$. Alors

$$v \times (2^n + 1) = 102 = 2 \times 3 \times 17 .$$

Il faut donc que $2^n + 1$ soit un diviseur de $102$. Les diviseurs de $102$ sont $1, 2, 3, 6, 17, 34,
51, 102$, et ceux qui s'écrivent $2^n + 1$ sont $2 = 2^0 + 1$, $3 = 2^1 + 1$ et $17 = 2^4 + 1$.

- $2^n + 1 = 2$ : $v = 51$, $u = 51$, soit $a = b = 50$.
- $2^n + 1 = 3$ : $v = 34$, $u = 68$, soit $a = 67$ et $b = 33$.
- $2^n + 1 = 17$ : $v = 6$, $u = 96$, soit $a = 95$ et $b = 5$.

**Conclusion.** Elsa a une stratégie gagnante exactement pour les partages en deux piles de $50$ et
$50$ pierres, de $33$ et $67$ pierres, et de $5$ et $95$ pierres. Pour tous les autres partages, c'est
Aline qui gagne.

## Going further

Si l'on autorise une pile vide au départ, le partage $(100, 0)$ donne $u = 101$ et $v = 1$. Une pile
vide ne se joue pas, comme une pile de $1$ pierre, et la preuve reste valable avec $v = 1$. Comme
$101$ n'est pas une puissance de $2$, c'est Aline qui gagne : la liste ne change pas.

Avec une seule pile de $p$ pierres, la position est perdante exactement quand $p + 1$ est une
puissance de $2$. C'est le cas $v = 1$ ci-dessus.
