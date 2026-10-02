---
id: "12449"
title: "Beaucoup d'ensembles où aucune somme ne retombe dedans"
grade: 9
theme: combinatorics
difficulty: 3
duration_min: 20
tags: [ensemble-sans-somme, denombrement, puissances-de-2, construction]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, test de sélection du 15 mai 2019"
  reference: "2019-11_Test-15-05.pdf, exercice 1 (groupe Junior) ; corrigé 2019-11_Test-15-05-Corrige.pdf (dans la note du corrigé, le dernier calcul est écrit pour s₂ₙ au lieu de sₙ)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2019/11/Test-15-05.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2019-11_Test-15-05.pdf"
---

## Statement

On dit qu'un ensemble $S$ d'entiers est **insommable** si, pour tous les entiers $x$ et $y$ de $S$
(éventuellement égaux), la somme $x + y$ n'appartient pas à $S$. Par exemple, $\{2, 3\}$ est
insommable, mais $\{2, 3, 5\}$ et $\{2, 4\}$ ne le sont pas. L'ensemble vide est insommable.

Pour tout entier $n \geqslant 1$, on note $s_n$ le nombre de sous-ensembles de
$\{1, 2, \ldots, 2n\}$ qui sont insommables.

Démontrer que $s_n \geqslant 2^n$.

## Hints

1. Calcule $s_1$ en écrivant les quatre sous-ensembles de $\{1, 2\}$.
2. Quand on additionne deux nombres très grands, on obtient un nombre encore plus grand. Quels
   nombres de $\{1, 2, \ldots, 2n\}$ peut-on mettre ensemble sans jamais risquer de retomber dans
   l'ensemble ?
3. Regarde les sous-ensembles de $\{n + 1, n + 2, \ldots, 2n\}$. Combien y en a-t-il ?

## Solution

### Une famille d'ensembles insommables

Soit $S$ un sous-ensemble quelconque de $\{n + 1, n + 2, \ldots, 2n\}$. Si $x$ et $y$ sont deux
éléments de $S$ (éventuellement égaux), alors $x \geqslant n + 1$ et $y \geqslant n + 1$, donc
$$x + y \geqslant 2n + 2 > 2n.$$
Le nombre $x + y$ est plus grand que tous les éléments de $S$, qui sont au plus égaux à $2n$, donc
il n'appartient pas à $S$. Ainsi **tout sous-ensemble de $\{n + 1, \ldots, 2n\}$ est insommable**
(l'ensemble vide aussi).

### On compte ces ensembles

L'ensemble $\{n + 1, n + 2, \ldots, 2n\}$ a $n$ éléments. Pour construire l'un de ses
sous-ensembles, on décide pour chaque élément s'il est dedans ou non : il y a $2$ choix pour
$n + 1$, puis $2$ choix pour $n + 2$, et ainsi de suite. Cela fait
$$\underbrace{2 \times 2 \times \cdots \times 2}_{n \text{ facteurs}} = 2^n$$
sous-ensembles, et deux suites de choix différentes donnent deux ensembles différents.

### Conclusion

On a trouvé $2^n$ sous-ensembles insommables de $\{1, 2, \ldots, 2n\}$, et il peut y en avoir
d'autres. **Donc $s_n \geqslant 2^n$.**

## Going further

1. Vérifier que $s_1 = 3$ et $s_2 = 9$.
2. Montrer que $s_n \geqslant 2^{n+1}$ pour tout $n \geqslant 2$. (On pourra classer les ensembles
   selon leur plus grand élément $k$, et regarder ceux dont tous les éléments sont strictement plus
   grands que $\frac{k}{2}$.)
