---
id: "11835"
title: "Un mur coloré à six ou sept clous"
grade: 10
theme: combinatorics
difficulty: 4
duration_min: 40
tags: [denombrement, double-comptage, principe-des-tiroirs, construction, restes]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2021-2022 n° 5 (pot-pourri)"
  reference: "2022-03_sujet-envoi-5.pdf, Exercices Juniors, exercice 7 ; corrigé 2022-05_corrige-envoi-5.pdf (le corrigé a une lacune pour n = 6 et une formule fausse pour n = 7, voir la solution)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/03/sujet-envoi-5.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2022-03_sujet-envoi-5.pdf"
---

## Statement

Soit $n \geqslant 3$ un entier. Sur un mur, $n$ clous sont plantés. Chaque paire de clous est reliée par une corde, et chaque corde est peinte avec l'une de $n$ couleurs données.

On dit que le mur est *coloré* si, pour tout choix de trois couleurs deux à deux distinctes $a$, $b$ et $c$, on peut trouver trois clous tels que les trois cordes qui relient ces clous entre eux soient de couleurs $a$, $b$ et $c$.

1. Existe-t-il un mur coloré pour $n = 6$ ?
2. Existe-t-il un mur coloré pour $n = 7$ ?

## Hints

1. Appelons *triangle* un choix de trois clous, avec les trois cordes qui les relient. Un triangle peut-il servir pour deux choix de trois couleurs différents ?
2. Pour $n = 6$ : compter les cordes. Montrer qu'une couleur est utilisée sur au plus deux cordes.
3. Pour $n = 6$ encore : combien de choix de trois couleurs contiennent cette couleur ? Combien de triangles contiennent une corde de cette couleur ?
4. Pour $n = 7$ : numéroter les clous et les couleurs de $0$ à $6$, et donner à la corde entre les clous $i$ et $j$ la couleur égale au reste de $i + j$ dans la division par $7$.

## Solution

Appelons *triangle* un choix de trois clous, avec les trois cordes qui les relient. Un triangle donne un seul ensemble de couleurs, celui de ses trois cordes. Il sert donc pour au plus un choix de trois couleurs distinctes : deux choix de couleurs différents demandent deux triangles différents.

**1. Pour $n = 6$, la réponse est non.**

Supposons qu'un mur coloré à $6$ clous existe.

*Une couleur est rare.* Il y a $\binom{6}{2} = 15$ cordes et $6$ couleurs. Si chaque couleur était utilisée sur au moins $3$ cordes, il y aurait au moins $6 \times 3 = 18$ cordes. C'est faux, donc une couleur, disons le rouge, est utilisée sur au plus $2$ cordes.

*Elle doit pourtant servir souvent.* Les choix de trois couleurs distinctes qui contiennent le rouge s'obtiennent en choisissant les deux autres couleurs parmi les $5$ restantes : il y en a $\binom{5}{2} = 10$. Chacun doit être obtenu par un triangle qui contient une corde rouge, et ces $10$ triangles sont différents deux à deux. Il faut donc au moins $10$ triangles qui contiennent une corde rouge.

*Mais elle sert peu.* Une corde fixée appartient à exactement $4$ triangles, puisqu'il reste $4$ clous pour choisir le troisième sommet. Les au plus $2$ cordes rouges appartiennent donc à au plus $2 \times 4 = 8$ triangles.

On aurait $10 \leqslant 8$, ce qui est absurde. Il n'existe pas de mur coloré pour $n = 6$.

**2. Pour $n = 7$, la réponse est oui.**

On utilise les restes dans la division par $7$, avec le fait suivant : deux entiers ont le même reste dans la division par $7$ exactement quand leur différence est un multiple de $7$. Pour un entier $m$, notons $r(m)$ ce reste, qui est l'un des nombres $0, 1, \ldots, 6$.

*La construction.* On numérote les clous de $0$ à $6$ et les couleurs aussi de $0$ à $6$. La corde qui relie les clous $i$ et $j$ reçoit la couleur $r(i + j)$.

*Elle convient.* Soient $a$, $b$, $c$ trois couleurs deux à deux distinctes. Posons $s = r\left(4(a + b + c)\right)$ et choisissons les trois clous

$$x = r(s - a), \qquad y = r(s - b), \qquad z = r(s - c).$$

Ces trois clous sont distincts. Par exemple, si $x = y$, alors $(s - a) - (s - b) = b - a$ est un multiple de $7$. Or $b - a$ est compris entre $-6$ et $6$ et n'est pas nul, ce qui est impossible.

Calculons la couleur de la corde entre $x$ et $y$. Le nombre $x + y$ a le même reste que $2s - a - b$, qui a lui-même le même reste que $8(a + b + c) - a - b$, car la différence $8(a+b+c) - 2s$ est un multiple de $7$ (en effet $s$ et $4(a + b + c)$ ont le même reste). Or

$$8(a + b + c) - a - b = 7(a + b + c) + c,$$

qui a le même reste que $c$. La corde entre $x$ et $y$ a donc la couleur $r(c) = c$. De la même façon, la corde entre $y$ et $z$ a la couleur $a$, et la corde entre $x$ et $z$ a la couleur $b$.

**Exemple.** Pour les couleurs $0$, $1$, $2$ : $s = r(12) = 5$, et les clous sont $5$, $4$ et $3$. On vérifie : $r(5 + 4) = 2$, $r(4 + 3) = 0$ et $r(5 + 3) = 1$.

**Conclusion.** Il n'existe pas de mur coloré pour $n = 6$. Il en existe un pour $n = 7$ : celui où la corde entre les clous $i$ et $j$ porte la couleur $r(i + j)$.

**Remarque sur le corrigé officiel.** Pour $n = 6$, le corrigé affirme qu'une couleur est utilisée sur au moins $\frac{n+1}{2}$ cordes. Pour $n = 6$, on peut seulement garantir $3$ cordes, et trois cordes peuvent ne jamais se toucher, si bien que l'argument suivant du corrigé ne marche plus. Pour $n = 7$, les clous proposés par le corrigé ne donnent pas les bonnes couleurs : la formule correcte est celle de la solution ci-dessus.

## Going further

1. Montrer que pour tout entier pair $n \geqslant 4$, il n'existe pas de mur coloré à $n$ clous. On pourra montrer qu'une couleur est utilisée sur au plus $\frac{n-2}{2}$ cordes.
2. Montrer que pour tout entier impair $n \geqslant 3$, la même construction (couleur égale au reste de $i + j$ dans la division par $n$) donne un mur coloré.
