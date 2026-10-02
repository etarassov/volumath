---
id: "11205"
title: "Quatre cents députés et une gifle chacun"
grade: 10
theme: combinatorics
difficulty: 5
duration_min: 40
tags: [tiroirs, algorithme-glouton, double-comptage, graphe]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2012-2013 n° 2 (combinatoire)"
  reference: "2017-10_ofm-2012-2013-envoi2.pdf, Exercices Olympiques, exercice 7 ; corrigé 2017-10_ofm-2012-2013-envoi2-corrige.pdf (le corrigé procède par récurrence, la solution ci-dessous suit la même idée sous forme d'algorithme)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2012-2013-envoi2.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2017-10_ofm-2012-2013-envoi2.pdf"
---

## Statement

Dans un parlement de $400$ députés, chaque député a giflé **exactement un** autre député.

Montrer qu'on peut former une commission de $134$ députés dans laquelle aucun membre n'a giflé
un autre membre.

## Hints

1. Disons que deux députés sont **ennemis** si l'un des deux a giflé l'autre. Si l'on met un
   député dans la commission, il faut écarter tous ses ennemis. Combien peut-il en avoir ?
2. Il y a $400$ gifles et $400$ députés. Montre qu'un député au moins a reçu au plus une gifle.
   Combien d'ennemis a-t-il alors ?
3. Prends ce député, écarte ses ennemis, et recommence avec ceux qui restent. Pour pouvoir
   recommencer, il faut que l'argument de l'indication 2 marche dans **n'importe quel** groupe
   de députés, en ne comptant que les gifles données à l'intérieur du groupe.
4. Combien de députés écartes-tu au plus à chaque étape ? Combien d'étapes peux-tu faire ?

## Solution

Disons que deux députés sont **ennemis** si l'un des deux a giflé l'autre. On cherche une
commission de $134$ députés sans aucun couple d'ennemis.

**Étape 1. Dans tout groupe, quelqu'un a au plus deux ennemis dans le groupe.**

Prenons un groupe quelconque de $k$ députés, avec $k \geqslant 1$, et ne regardons que les gifles
données par un membre du groupe à un autre membre du groupe.

Chaque député a donné une seule gifle, donc chaque membre du groupe a donné au plus une de ces
gifles : il y en a au plus $k$.

Si chaque membre du groupe avait reçu au moins deux de ces gifles, il y en aurait au moins $2k$.
Or $2k > k$. C'est impossible. Il existe donc un membre $X$ du groupe qui a reçu **au plus une**
gifle venant du groupe.

Les ennemis de $X$ dans le groupe sont le député que $X$ a giflé (s'il est dans le groupe) et
ceux qui ont giflé $X$ (au plus un dans le groupe). Donc $X$ a **au plus deux ennemis** dans le
groupe.

**Étape 2. Construire la commission pas à pas.**

On part du groupe des $400$ députés, qu'on appelle « les restants ». Puis on répète l'opération
suivante.

> Parmi les restants, on choisit un député $X$ qui a au plus deux ennemis parmi les restants
> (il en existe un d'après l'étape 1). On le met dans la commission. Puis on retire des restants
> le député $X$ et ses ennemis.

À chaque étape, on retire au plus $3$ députés des restants : $X$ et au plus deux ennemis.

**Étape 3. On peut faire $134$ étapes.**

Après $133$ étapes, on a retiré au plus $3 \times 133 = 399$ députés. Comme $400 > 399$, il reste
au moins un député, et l'on peut faire une $134$e étape. La commission compte alors $134$
membres.

**Étape 4. La commission ne contient pas d'ennemis.**

Prenons deux membres de la commission, $X$ choisi avant $Y$. Au moment où l'on a choisi $X$, on a
retiré des restants tous les ennemis de $X$. Comme $Y$ a été choisi plus tard parmi les restants,
$Y$ n'est pas un ennemi de $X$ : aucun des deux n'a giflé l'autre.

**Conclusion : on peut toujours former une commission de $134$ députés dans laquelle personne
n'a giflé personne.**

## Going further

On ne peut pas garantir mieux que $134$. Répartissons $399$ députés en $133$ groupes de trois.
Dans chaque groupe, le premier gifle le deuxième, le deuxième gifle le troisième et le troisième
gifle le premier. Le quatre-centième député gifle n'importe qui. Deux membres d'un même groupe de trois
sont toujours ennemis, donc une commission contient au plus un député de chaque groupe, plus
éventuellement le quatre-centième : au plus $134$ membres.

Le même raisonnement montre que dans un parlement de $3n - 2$ députés, on peut toujours former
une commission de $n$ députés sans ennemis.
