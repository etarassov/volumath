---
id: "7203"
title: "Quatre fois n et cinq fois n, avec les neuf chiffres"
grade: 9
theme: arithmetic
difficulty: 3
duration_min: 25
tags: [chiffres, encadrement, nombre-de-chiffres]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique junior de Cachan 2017"
  reference: "Poly-CJ-17.pdf, « Première journée », exercices d'échauffement, exercice 4"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly-CJ-17.pdf"
---

## Statement

On cherche un entier $n$ tel que, en écrivant côte à côte les deux nombres $4n$ et $5n$, on
utilise chacun des neuf chiffres $1, 2, 3, 4, 5, 6, 7, 8, 9$ une fois et une seule. (Le chiffre
$0$ n'apparaît donc pas.)

Trouver cet entier $n$, et montrer qu'il n'y en a pas d'autre.

## Hints

1. À eux deux, $4n$ et $5n$ s'écrivent avec $9$ chiffres. Comment ces $9$ chiffres peuvent-ils se
   répartir entre les deux nombres ?
2. Lequel des deux nombres est le plus grand ? Peut-il avoir moins de chiffres que l'autre ?
3. Si $4n$ a quatre chiffres et $5n$ en a cinq, encadre chacun des deux nombres. Un nombre de
   quatre chiffres écrit avec des chiffres tous distincts et non nuls est au plus $9876$ ; un
   nombre de cinq chiffres de ce type est au moins $12345$.
4. Compare $\frac{4}{5} \times 12345$ et $9876$.

## Solution

**La répartition des chiffres.**

Les deux nombres $4n$ et $5n$ utilisent en tout $9$ chiffres. Comme $5n > 4n$, le nombre $5n$ a
au moins autant de chiffres que $4n$. Les seules répartitions possibles de $9$ chiffres entre
deux nombres dont le second n'a pas moins de chiffres que le premier sont donc
$$1+8, \qquad 2+7, \qquad 3+6, \qquad 4+5.$$

Écartons les trois premières. Si $4n$ a $k$ chiffres et $5n$ en a au moins $k+2$, alors
$5n \geqslant 10^{k+1}$ et $4n < 10^{k}$, donc
$$\frac{5n}{4n} \geqslant \frac{10^{k+1}}{10^{k}} = 10 .$$
Or $\frac{5n}{4n} = \frac{5}{4}$, qui vaut $1{,}25$, et non $10$ ou davantage. Impossible.

Il reste donc le cas $4+5$ : **$4n$ a quatre chiffres et $5n$ en a cinq.**

**L'encadrement.**

Les neuf chiffres utilisés sont tous distincts et aucun n'est $0$.

- $4n$ a quatre chiffres, tous distincts et non nuls, donc $4n \leqslant 9876$.
- $5n$ a cinq chiffres, tous distincts et non nuls, donc $5n \geqslant 12345$.

Donc
$$4n \leqslant 9876 \qquad \text{et} \qquad 12345 \leqslant 5n .$$

**Le coup de chance.** Calculons $\frac{4}{5} \times 12345$ :
$$\frac{4}{5} \times 12345 = 4 \times 2469 = 9876 .$$

Ainsi $\frac{4}{5} \times 12345 = 9876$. Comme $5n \geqslant 12345$, on a
$$4n = \frac{4}{5} \times 5n \geqslant \frac{4}{5} \times 12345 = 9876 .$$
Mais on avait aussi $4n \leqslant 9876$. Les deux inégalités ensemble donnent $4n = 9876$, et
alors $5n = 12345$.

**Conclusion.** De $4n = 9876$ on tire $n = 2469$. Vérifions :
$$4 \times 2469 = 9876, \qquad 5 \times 2469 = 12345 .$$
Les neuf chiffres $9, 8, 7, 6, 1, 2, 3, 4, 5$ apparaissent bien chacun une fois.

**Le seul entier qui convient est $n = 2469$.**
