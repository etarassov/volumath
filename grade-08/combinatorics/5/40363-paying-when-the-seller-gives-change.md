---
id: "40363"
title: "Payer toutes les sommes quand le marchand rend la monnaie"
grade: 8
theme: combinatorics
difficulty: 5
duration_min: 40
tags: [monnaie, puissances-de-deux, denombrement, sous-ensembles, majoration-et-exemple, base-deux]
adapted_from: null
see_also: ["40362", "0182"]
same_as: []
created: 2026-11-27
source:
  name: "Concours général des lycées 2011, mathématiques, série S"
  reference: "cg-2011-s-sujet.pdf, exercice 2 « Rendez la monnaie ! », question 2° « Avec rendu de monnaie »"
  url: "https://www.freemaths.fr/annales-composition-mathematiques-concours-general/concours-general-mathematiques-sujet-serie-s-2011.pdf"
  original_language: "fr"
  local_copy: "sources/originals/concours-general/cg-2011-s-sujet.pdf"
---

## Statement

Un acheteur a $n$ pièces dans son porte-monnaie, de valeurs $a_1, \ldots, a_n$. Le marchand
chez qui il fait ses courses a lui aussi un porte-monnaie, avec $p$ pièces de valeurs
$v_1, \ldots, v_p$. Toutes ces valeurs sont des entiers strictement positifs, et $n \geq 1$,
$p \geq 1$.

Pour payer une somme, l'acheteur donne certaines de ses pièces, et le marchand lui rend
éventuellement certaines des siennes : la somme payée est le total donné par l'acheteur moins
le total rendu par le marchand. Chaque pièce ne sert qu'une fois.

On appelle **capacité commune** le plus grand entier $M$ tel qu'on puisse payer de cette façon
chacune des sommes $1, 2, \ldots, M$.

On admet le résultat suivant, quand le marchand ne rend pas la monnaie : avec $k$ pièces, on
paie au plus les sommes de $1$ à $2^k - 1$, et on y arrive avec les pièces
$1, 2, 4, \ldots, 2^{k-1}$.

On fixe $n$ et $p$. Comment choisir les pièces de l'acheteur et celles du marchand pour que la
capacité commune soit la plus grande possible ?

## Hints

1. Commencer par $n = p = 1$ : l'acheteur a une pièce, le marchand une pièce. Quelles sommes
   peut-on payer ? Quelle est la meilleure capacité commune ?
2. Notons $V$ le total des pièces du marchand. Imaginons que le marchand pose d'abord **toutes**
   ses pièces sur le comptoir, à côté de celles que donne l'acheteur, puis que l'acheteur
   ramasse sur le comptoir les pièces qui lui sont rendues. Que vaut alors le total des pièces
   qui restent sur le comptoir, à la fin, pour une somme payée $s$ ?
3. Ainsi, payer $s$ revient à trouver, parmi les $n + p$ pièces, un groupe de pièces de total
   $V + s$. Un groupe formé uniquement de pièces du marchand peut-il convenir ?
4. Combien y a-t-il de groupes de pièces parmi les $n + p$ ? Combien sont formés uniquement de
   pièces du marchand ? En déduire une majoration de la capacité commune.
5. Pour atteindre cette majoration, donner au marchand les plus petites puissances de $2$.

## Solution

**Une autre façon de voir un paiement.** Notons $V = v_1 + \cdots + v_p$ le total des pièces du
marchand. Supposons que l'acheteur donne un groupe $X$ de ses pièces, de total $x$, et que le
marchand rende un groupe $Y$ des siennes, de total $y$ : la somme payée est $s = x - y$. Notons
$Y'$ les pièces du marchand qu'il ne rend pas : leur total est $V - y$. Alors

$$x + (V - y) = V + s .$$

Autrement dit, le groupe formé de $X$ et de $Y'$, pris parmi les $n + p$ pièces des deux
porte-monnaie, a pour total $V + s$. Inversement, si un groupe de pièces parmi les $n + p$ a pour
total $V + s$, l'acheteur donne celles de ses pièces qui sont dans le groupe, et le marchand rend
celles de ses pièces qui **n'y** sont **pas** : la somme payée est bien $s$.

**Conclusion intermédiaire :** on peut payer la somme $s$ si et seulement si un groupe de pièces
pris parmi les $n + p$ a pour total $V + s$.

**On ne peut pas faire mieux que $2^{n+p} - 2^p$.** Pour payer $1, 2, \ldots, M$, il faut des
groupes de pièces de totaux $V + 1, V + 2, \ldots, V + M$ : ce sont $M$ totaux différents, donc
$M$ groupes différents. Chacun a un total plus grand que $V$, donc ne peut pas être formé
uniquement de pièces du marchand (ces pièces-là font au plus $V$).

Or, en choisissant pour chacune des $n + p$ pièces si elle est dans le groupe ou non, on obtient
$2^{n+p}$ groupes en tout (le groupe vide compris). Ceux qui ne contiennent que des pièces du
marchand sont au nombre de $2^p$ (le groupe vide compris). Il reste $2^{n+p} - 2^p$ groupes
utilisables, donc

$$M \leq 2^{n+p} - 2^p .$$

**Un choix qui atteint cette valeur.** Donnons au marchand les pièces $1, 2, 4, \ldots, 2^{p-1}$,
de total $V = 2^p - 1$, et à l'acheteur les pièces $2^p, 2^{p+1}, \ldots, 2^{n+p-1}$. Les $n + p$
pièces sont alors $1, 2, 4, \ldots, 2^{n+p-1}$. D'après le résultat admis, on peut former avec
elles tous les totaux de $1$ à $2^{n+p} - 1$. Pour $1 \leq s \leq 2^{n+p} - 2^p$, on a
$V + s \leq 2^p - 1 + 2^{n+p} - 2^p = 2^{n+p} - 1$, donc on peut former le total $V + s$, et donc
payer $s$. La capacité commune vaut donc au moins $2^{n+p} - 2^p$, et par la majoration elle vaut
exactement $2^{n+p} - 2^p$.

*Exemple*, avec $n = p = 2$ : le marchand a $1$ et $2$ ($V = 3$), l'acheteur $4$ et $8$, et la
capacité commune vaut $16 - 4 = 12$. Pour payer $5$, on écrit $V + 5 = 8$ : l'acheteur donne sa
pièce de $8$, et le marchand rend ses deux pièces, qui ne sont pas dans le groupe : $8 - 3 = 5$.
Pour payer $1$, on écrit $V + 1 = 4$ : l'acheteur donne $4$ et le marchand rend $1$ et $2$.

**Conclusion :** la plus grande capacité commune possible est

$$2^{n+p} - 2^p = 2^p\,(2^n - 1) .$$

On l'obtient en donnant au marchand les pièces $1, 2, \ldots, 2^{p-1}$ et à l'acheteur les
pièces $2^p, \ldots, 2^{n+p-1}$.

**Bilan.** Rendre la monnaie revient à poser toutes les pièces du marchand sur le comptoir et à
en reprendre certaines. Un paiement devient alors un groupe de pièces parmi les $n + p$, et un
comptage des groupes donne la limite $2^p(2^n - 1)$. Les puissances de $2$ l'atteignent, à
condition que les petites soient chez le marchand : les $p$ pièces du marchand multiplient par
$2^p$ ce que l'acheteur pourrait payer seul.

## Going further

- Que se passe-t-il si l'on donne les petites puissances de $2$ à l'acheteur et les grandes au
  marchand ? Calculer la capacité commune pour $n = p = 2$.
- Le choix proposé est-il le seul qui donne la plus grande capacité commune ? (Une recherche
  exhaustive à l'ordinateur, avec des pièces de valeur au plus $2^{n+p}$, répond oui pour
  $n + p \leq 5$.)
- Avec une balance à deux plateaux, un même poids peut aller d'un côté ou de l'autre : on paie
  alors avec les puissances de $3$. Voir l'exercice 0182 (« Les poids de l'épicier »).
