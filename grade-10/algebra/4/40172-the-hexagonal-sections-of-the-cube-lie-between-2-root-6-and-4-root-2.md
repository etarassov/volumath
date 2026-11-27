---
id: "40172"
title: "Les sections hexagonales du cube ont une aire entre 2√6 et 4√2"
grade: 10
theme: algebra
difficulty: 4
duration_min: 60
tags: [changement-de-variable, encadrement, inegalite, developpement, calcul-litteral, fractions, cube, aire]
adapted_from: null
see_also: ["40168", "40169", "40170", "40171"]
same_as: []
created: 2026-11-27
source:
  name: "Concours général des lycées 2006, mathématiques, série S"
  reference: "cg-2006-s-sujet.pdf, exercice 3, partie II « Sections planes d'un cube », C « Plans rencontrant 6 arêtes », question 6 (a et b)"
  url: "https://www.freemaths.fr/annales-composition-mathematiques-concours-general/concours-general-mathematiques-sujet-serie-s-2006.pdf"
  original_language: "fr"
  local_copy: "sources/originals/concours-general/cg-2006-s-sujet.pdf"
---

## Statement

*Le contexte.* On coupe un cube d'arête $2$ par un plan passant par son centre et rencontrant six
de ses arêtes ; la section est un hexagone. Dans une partie précédente, on a repéré les points où
le plan coupe trois de ces arêtes par trois nombres $x$, $y$, $z$ de l'intervalle $]-1, 1[$, et on a
montré que :

- $x$ et $y$ peuvent prendre toutes les valeurs de $]-1, 1[$, indépendamment l'un de l'autre ;
- $z$ est alors déterminé par la relation
$$x + y + z + xyz = 0 ; \qquad (1)$$
- l'aire $S$ de l'hexagone vérifie $S^2 = f(x, y, z)$, où
$$f(x, y, z) = (3 - x + y + xy)^2 + (3 + x - z + xz)^2 + (3 - y + z + yz)^2 .$$

Le but est d'encadrer $S$ le mieux possible. Aucune connaissance sur le cube n'est nécessaire.

1. Étant donné des réels strictement positifs $u$, $v$ et $w$, on pose
$$x = \frac{u - 1}{u + 1}, \qquad y = \frac{v - 1}{v + 1}, \qquad z = \frac{w - 1}{w + 1} .$$
   a) Montrer que $x \in\ ]-1, 1[$, et que, réciproquement, tout réel $x$ de $]-1, 1[$ s'écrit
   de cette façon pour un unique $u > 0$, à savoir $u = \frac{1 + x}{1 - x}$.
   b) Vérifier que, lorsque le triplet $(x, y, z)$ vérifie la relation (1), on a $uvw = 1$ et
$$z = \frac{1 - uv}{1 + uv} .$$
2. On pose, pour $u > 0$ et $v > 0$,
$$g(u, v) = f\left(\frac{u - 1}{u + 1},\ \frac{v - 1}{v + 1},\ \frac{1 - uv}{1 + uv}\right),$$
   et on admet que
$$g(u, v) = \frac{32\,P}{Q}, \qquad \text{avec}$$
$$P = (1 + v + uv)^2\,(1 + u + u^2 + uv + u^2v + u^2v^2) \qquad \text{et} \qquad Q = (1 + u)^2(1 + v)^2(1 + uv)^2 .$$
   a) Montrer que, pour tous réels $u > 0$ et $v > 0$, on a $24 \leq g(u, v) \leq 32$.
   b) En déduire le meilleur encadrement possible de l'aire $S$ de l'hexagone lorsque $x$ et $y$
   varient.

## Hints

1. **Question 1.** Pour a), exprimer $1 + x$ et $1 - x$ en fonction de $u$, puis calculer
   $\frac{1 + x}{1 - x}$.
2. **Question 1.** Pour b), développer $(1 + x)(1 + y)(1 + z)$ et $(1 - x)(1 - y)(1 - z)$, puis
   comparer leur différence avec le membre de gauche de (1).
3. **Question 2.** $g \leq 32$ équivaut à $P \leq Q$, et $g \geq 24$ à $4P \geq 3Q$. Développer $P$
   et $Q$ en les ordonnant suivant les puissances de $u$ (les coefficients sont des polynômes en
   $v$).
4. **Question 2.** Dans $4P - 3Q$, il reste quelques termes négatifs. Les regrouper avec des termes
   positifs pour faire apparaître des carrés, comme $u^4v^2(v - 1)^2$.
5. **Question 2.** Pour b), il faut aussi montrer qu'on ne peut pas faire mieux. Regarder $g(u, 1)$
   quand $u$ est très petit, puis très grand.

## Solution

**1. a)** Pour $u > 0$, on a
$$1 + x = \frac{2u}{u + 1} > 0 \qquad \text{et} \qquad 1 - x = \frac{2}{u + 1} > 0,$$
donc $-1 < x < 1$, et $\frac{1 + x}{1 - x} = u$. Réciproquement, si $x \in\ ]-1, 1[$ et
$u = \frac{1 + x}{1 - x}$, alors $u > 0$ et $u(1 - x) = 1 + x$, soit $u - 1 = x(u + 1)$, soit
$x = \frac{u - 1}{u + 1}$. Ce $u$ est le seul possible, puisque tout $u$ qui convient vérifie
$u = \frac{1 + x}{1 - x}$.

**b)** En développant,
$$(1 + x)(1 + y)(1 + z) = 1 + (x + y + z) + (xy + yz + zx) + xyz,$$
$$(1 - x)(1 - y)(1 - z) = 1 - (x + y + z) + (xy + yz + zx) - xyz,$$
donc la différence vaut $2(x + y + z + xyz)$. La relation (1) équivaut donc à
$$(1 + x)(1 + y)(1 + z) = (1 - x)(1 - y)(1 - z) .$$
En divisant par le membre de droite, qui est strictement positif, et en utilisant a), cela s'écrit
$uvw = 1$. Alors $w = \frac{1}{uv}$ et
$$z = \frac{w - 1}{w + 1} = \frac{\frac{1}{uv} - 1}{\frac{1}{uv} + 1} = \frac{1 - uv}{1 + uv} .$$

**2. a)** Comme $Q > 0$, on a $g \leq 32$ si et seulement si $P \leq Q$, et $g \geq 24$ si et
seulement si $32P \geq 24Q$, c'est-à-dire $4P \geq 3Q$.

*Développements.* On a $(1 + v + uv)^2 = u^2v^2 + 2uv^2 + 2uv + v^2 + 2v + 1$, et en ordonnant suivant
les puissances de $u$, on obtient les coefficients suivants :

| | $P$ | $Q$ |
|---|---|---|
| $u^4$ | $v^4 + v^3 + v^2$ | $v^4 + 2v^3 + v^2$ |
| $u^3$ | $2v^4 + 5v^3 + 5v^2 + 2v$ | $2v^4 + 6v^3 + 6v^2 + 2v$ |
| $u^2$ | $v^4 + 5v^3 + 9v^2 + 5v + 1$ | $v^4 + 6v^3 + 10v^2 + 6v + 1$ |
| $u$ | $v^3 + 5v^2 + 5v + 1$ | $2v^3 + 6v^2 + 6v + 2$ |
| $1$ | $v^2 + 2v + 1$ | $v^2 + 2v + 1$ |

*Majoration.* En soustrayant,
$$Q - P = v^3u^4 + (v^3 + v^2)\,u^3 + (v^3 + v^2 + v)\,u^2 + (v^3 + v^2 + v + 1)\,u .$$
Tous les termes sont strictement positifs pour $u, v > 0$, donc $P < Q$ et $g(u, v) < 32$.

*Minoration.* De même, en lisant le tableau, $4P - 3Q$ vaut
$$(v^4 - 2v^3 + v^2)\,u^4 + (2v^4 + 2v^3 + 2v^2 + 2v)\,u^3 + (v^4 + 2v^3 + 6v^2 + 2v + 1)\,u^2$$
$$+\ (-2v^3 + 2v^2 + 2v - 2)\,u + v^2 + 2v + 1 .$$
Les termes négatifs sont $-2u^4v^3$, $-2uv^3$ et $-2u$. On les regroupe :
$$u^4v^4 - 2u^4v^3 + u^4v^2 = u^4v^2(v - 1)^2, \qquad u^2v^4 - 2uv^3 + v^2 = v^2(uv - 1)^2, \qquad u^2 - 2u + 1 = (u - 1)^2 .$$
Ce qui reste est une somme de termes positifs :
$$4P - 3Q = u^4v^2(v - 1)^2 + v^2(uv - 1)^2 + (u - 1)^2 + R,$$
$$R = 2u^3v^4 + 2u^3v^3 + 2u^3v^2 + 2u^3v + 2u^2v^3 + 6u^2v^2 + 2u^2v + 2uv^2 + 2uv + 2v > 0 .$$
(On vérifie ce regroupement coefficient par coefficient.) Donc $4P > 3Q$ et $g(u, v) > 24$.

**Conclusion :** pour tous $u, v > 0$, $24 < g(u, v) < 32$, ce qui donne l'encadrement demandé.

**b)** D'après la question 1, quand $x$ et $y$ parcourent $]-1, 1[$, les nombres $u$ et $v$
parcourent $]0, +\infty[$, et $S^2 = f(x, y, z) = g(u, v)$. D'après a), on a toujours
$24 < S^2 < 32$, c'est-à-dire
$$2\sqrt{6} < S < 4\sqrt{2} .$$

*On ne peut pas faire mieux.* Prenons $v = 1$ (c'est-à-dire $y = 0$). Alors
$$g(u, 1) = \frac{32\,(u + 2)^2(1 + 2u + 3u^2)}{4\,(1 + u)^4} = \frac{8\,(u + 2)^2(3u^2 + 2u + 1)}{(u + 1)^4} .$$
Comme $(u + 2)^2(3u^2 + 2u + 1) = 3u^4 + 14u^3 + 21u^2 + 12u + 4$, on obtient
$$g(u, 1) - 24 = \frac{8\,(2u^3 + 3u^2 + 1)}{(u + 1)^4}, \qquad 32 - g(u, 1) = \frac{8u\,(u^3 + 2u^2 + 3u + 4)}{(u + 1)^4} .$$

- Pour $u \geq 1$ : $2u^3 + 3u^2 + 1 \leq 6u^3$ et $(u + 1)^4 > u^4$, donc
  $g(u, 1) - 24 < \frac{48}{u}$. En prenant $u$ assez grand, $g(u, 1)$ est aussi proche de $24$
  qu'on veut.
- Pour $0 < u \leq 1$ : $u^3 + 2u^2 + 3u + 4 \leq 10$ et $(u + 1)^4 > 1$, donc
  $32 - g(u, 1) < 80u$. En prenant $u$ assez petit, $g(u, 1)$ est aussi proche de $32$ qu'on veut.

Aucun nombre plus grand que $2\sqrt{6}$ n'est donc un minorant de $S$, et aucun nombre plus petit
que $4\sqrt{2}$ n'en est un majorant.

**Conclusion :** le meilleur encadrement est $2\sqrt{6} < S < 4\sqrt{2}$, les deux bornes n'étant
jamais atteintes.

**Bilan.** Le changement de variable $x = \frac{u - 1}{u + 1}$ transforme la relation
$x + y + z + xyz = 0$ en la relation multiplicative $uvw = 1$, ce qui permet d'écrire $S^2$ comme
une fraction en deux variables seulement. Un développement soigneux montre alors que l'aire d'une
section hexagonale du cube d'arête $2$ par un plan passant par son centre est toujours strictement
comprise entre $2\sqrt{6} \approx \text{4,90}$ et $4\sqrt{2} \approx \text{5,66}$, et que ces bornes
ne peuvent pas être améliorées.

## Going further

- Pour quelle section hexagonale l'aire est-elle $3\sqrt{3} \approx \text{5,20}$ ? (C'est l'hexagone
  régulier, obtenu pour $x = y = z = 0$, c'est-à-dire $u = v = w = 1$.)
- D'où vient la formule admise pour $g$ ? Vérifier-la au moins pour $u = v = 1$ : on doit trouver
  $f(0, 0, 0) = 27$.
- Les sections qui ne sont pas des hexagones sont étudiées dans les exercices 40169 et 40170 ; la
  formule pour $S^2$ est établie dans l'exercice 40171.
