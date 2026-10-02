---
id: "13237"
title: "Une puce sur les sommets d'un carré"
grade: 9
theme: combinatorics
difficulty: 3
duration_min: 20
tags: [denombrement, recurrence, chemins, symetrie]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "Coupe Animath d'automne 2017, premier tour"
  reference: "2017-10_coupe_automne_2017_elim.pdf, exercices communs, exercice 11 ; réponse (547) dans 2017-10_coupe_automne_2017_elim_college.pdf et 2017-10_coupe_automne_2017_elim_lycee.pdf, pas de corrigé rédigé"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/coupe_automne_2017_elim.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2017-10_coupe_automne_2017_elim.pdf"
---

## Statement

On considère un carré $ABCD$. Une puce part du sommet $A$. Chaque seconde, elle saute vers l'un des trois sommets du carré autres que celui sur lequel elle se trouve (elle peut donc aussi sauter en diagonale).

Combien y a-t-il de parcours de $7$ sauts qui partent de $A$ et arrivent en $B$ ?

## Hints

1. Combien y a-t-il de parcours de $n$ sauts en tout, sans s'occuper du point d'arrivée ?
2. Note $b_n$ le nombre de parcours de $n$ sauts qui finissent en $B$. Pourquoi est-ce aussi le nombre de ceux qui finissent en $C$, ou en $D$ ?
3. Pour finir en $B$ après $n + 1$ sauts, où la puce doit-elle être après $n$ sauts ? Déduis-en $b_{n+1}$ en fonction de $3^n$ et de $b_n$.

## Solution

**Deux remarques.** À chaque saut, la puce a $3$ choix, donc il y a $3^n$ parcours de $n$ sauts partant de $A$.

Notons $a_n$ le nombre de ceux qui finissent en $A$ et $b_n$ le nombre de ceux qui finissent en $B$. Les sommets $B$, $C$, $D$ jouent le même rôle : en échangeant les noms de $B$ et $C$ partout dans un parcours, on passe d'un parcours finissant en $B$ à un parcours finissant en $C$, et inversement. Donc $b_n$ est aussi le nombre de parcours finissant en $C$, et de même pour $D$. Ainsi

$$a_n + 3\,b_n = 3^n.$$

**Une relation de proche en proche.** Un parcours de $n + 1$ sauts finit en $B$ exactement quand, après $n$ sauts, la puce est ailleurs qu'en $B$ (en $A$, $C$ ou $D$) et saute ensuite en $B$. Le dernier saut est alors imposé, donc

$$b_{n+1} = a_n + b_n + b_n = (a_n + 3b_n) - b_n = 3^n - b_n.$$

**Le calcul.** On part de $b_0 = 0$ (sans sauter, la puce est en $A$) :

| $n$ | $0$ | $1$ | $2$ | $3$ | $4$ | $5$ | $6$ | $7$ |
|---|---|---|---|---|---|---|---|---|
| $3^{n-1}$ | | $1$ | $3$ | $9$ | $27$ | $81$ | $243$ | $729$ |
| $b_n$ | $0$ | $1$ | $2$ | $7$ | $20$ | $61$ | $182$ | $547$ |

Chaque case de la dernière ligne s'obtient en retirant la précédente de la puissance de $3$ au-dessus : par exemple $b_7 = 729 - 182 = 547$.

**Conclusion.** Il y a $547$ parcours de $7$ sauts allant de $A$ à $B$.

## Going further

On peut résoudre la relation $b_{n+1} = 3^n - b_n$ : on montre par récurrence que $b_n = \frac{3^n - (-1)^n}{4}$. Pour $n = 7$, on retrouve $\frac{2187 + 1}{4} = 547$. Combien de parcours de $7$ sauts reviennent en $A$ ?
