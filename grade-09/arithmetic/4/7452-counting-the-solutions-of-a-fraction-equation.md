---
id: "7452"
title: "Compter les solutions d'une équation de fractions"
grade: 9
theme: arithmetic
difficulty: 4
duration_min: 35
tags: [equation-diophantienne, diviseurs, factorisation, denombrement, nombre-de-diviseurs, decomposition-en-facteurs-premiers]
adapted_from: null
see_also: ["7856"]
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Grésillon 2011, chasse au trésor"
  reference: "stage_ete_2011.pdf, « Chasse au trésor », exercices des débutants, exercice 3"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2011.pdf"
---

## Statement

Combien y a-t-il de couples d'entiers strictement positifs $(x, y)$ tels que
$$\frac{1}{x} + \frac{1}{y} = \frac{1}{2012^{10}} \ ?$$

## Hints

1. Pose $N = 2012^{10}$ pour alléger l'écriture, et ne calcule jamais ce nombre.
2. Mets tout au même dénominateur et développe. Tu obtiens une équation du type
   $xy = N(x+y)$. Ce n'est pas encore exploitable.
3. Cherche à factoriser $xy - Nx - Ny$. Ajoute $N^2$ des deux côtés : que reconnais-tu ?
4. L'équation devient un produit de deux facteurs égal à $N^2$. Il reste à s'assurer que les deux
   facteurs sont bien des entiers **strictement positifs**, puis à compter les diviseurs de $N^2$.
5. Pour le comptage, décompose $2012$ en facteurs premiers.

## Solution

Posons $N = 2012^{10}$. L'équation s'écrit
$$\frac1x + \frac1y = \frac1N.$$

### Une factorisation

Les nombres $x$ et $y$ sont non nuls, on peut multiplier par $xyN$ :
$$yN + xN = xy, \qquad \text{c'est-à-dire} \qquad xy - Nx - Ny = 0.$$

Ce n'est pas encore un produit. Ajoutons $N^2$ des deux côtés :
$$xy - Nx - Ny + N^2 = N^2.$$

Et le membre de gauche se factorise :
$$(x - N)(y - N) = N^2.$$

*(On peut vérifier en développant : $(x-N)(y-N) = xy - Nx - Ny + N^2$.)*

### Les deux facteurs sont strictement positifs

Posons $u = x - N$ et $v = y - N$, de sorte que $uv = N^2$. Ce sont deux entiers relatifs.

Montrons qu'ils sont strictement positifs, c'est-à-dire que $x > N$ et $y > N$.

Comme $\dfrac1y > 0$, on a
$$\frac1x = \frac1N - \frac1y < \frac1N,$$
et comme $x$ et $N$ sont strictement positifs, cela donne $x > N$. Le même raisonnement donne
$y > N$.

Donc $u > 0$ et $v > 0$.

### Le comptage

Chaque couple $(x, y)$ solution donne un couple d'entiers strictement positifs $(u, v)$ avec
$uv = N^2$, et réciproquement : si $u$ et $v$ sont deux entiers strictement positifs de produit
$N^2$, alors $x = N + u$ et $y = N + v$ sont strictement positifs et on remonte les calculs pour
retrouver $\dfrac1x + \dfrac1y = \dfrac1N$. Ainsi, à chaque solution $(x, y)$ correspond un
seul couple $(u, v)$, et à chaque couple $(u, v)$ correspond une seule solution : il y a autant
de solutions que de couples.

Or se donner un couple $(u, v)$ d'entiers strictement positifs avec $uv = N^2$, c'est exactement
se donner un diviseur $u$ de $N^2$ : le second facteur $v = N^2/u$ est alors imposé.

**Le nombre de solutions est donc le nombre de diviseurs positifs de $N^2$.**

### Le calcul

Décomposons $2012$ :
$$2012 = 4 \times 503 = 2^2 \times 503.$$
Le nombre $503$ est premier : il n'est divisible ni par $2$, ni par $3$, ni par $5$, ni par $7$,
ni par $11$, ni par $13$, ni par $17$, ni par $19$, et $23^2 = 529 > 503$, donc il n'y a plus rien
à tester.

Par conséquent
$$N = 2012^{10} = 2^{20} \times 503^{10}, \qquad N^2 = 2^{40} \times 503^{20}.$$

Le nombre de diviseurs positifs d'un nombre $2^{a} \times p^{b}$ (avec $p$ premier différent de
$2$) vaut $(a+1)(b+1)$ : on choisit librement l'exposant de $2$ parmi $a+1$ valeurs et celui de
$p$ parmi $b+1$ valeurs. Ici
$$(40 + 1)(20 + 1) = 41 \times 21 = 861.$$

### Conclusion

$$\boxed{861 \text{ couples}}$$

## Going further

1. Parmi ces $861$ couples, combien vérifient $x = y$ ? Combien vérifient $x < y$ ?
2. Reprendre le raisonnement avec $\dfrac1x + \dfrac1y = \dfrac1N$ pour un entier $N$ quelconque :
   le nombre de solutions est le nombre de diviseurs de $N^2$. Retrouver ainsi qu'il y a
   exactement trois solutions lorsque $N$ est un nombre premier.
