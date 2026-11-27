---
id: "40601"
title: "Parties de type S : de ℤ[j] aux racines douzièmes de l'unité"
grade: 12
theme: algebra
difficulty: 3
duration_min: 45
tags: [nombres-complexes, maths-expertes, module, conjugue, racines-de-lunite, ensembles, stabilite, irrationnel]
adapted_from: null
see_also: ["40602", "40603"]
same_as: []
created: 2026-11-27
source:
  name: "Concours général des lycées 2017, mathématiques, série S"
  reference: "cg-2017-s-sujet.pdf, problème I « Parties de C de type S », partie A (questions 1 à 3) et partie B (questions 1 et 2)"
  url: "https://www.freemaths.fr/annales-composition-mathematiques-concours-general/concours-general-mathematiques-sujet-serie-s-2017.pdf"
  original_language: "fr"
  local_copy: "sources/originals/concours-general/cg-2017-s-sujet.pdf"
---

## Statement

Une partie $\mathcal{A}$ non vide de $\mathbb{C}$ est dite *de type S* si, pour tous nombres
complexes $z_1$ et $z_2$ de $\mathcal{A}$ (égaux ou non), le produit $z_1 z_2$ et la somme
$z_1^2 + z_2^2$ sont encore dans $\mathcal{A}$.

Pour une partie $\mathcal{A}$ de type S, on note $b(\mathcal{A})$ le nombre d'éléments $z$ de
$\mathcal{A}$ dont le module $|z|$ est inférieur ou égal à $1$. On écrit
$b(\mathcal{A}) = \infty$ s'il y en a une infinité.

**Quelques exemples simples**

1. Les ensembles suivants sont de type S (on ne demande pas de le vérifier). Donner pour chacun
   la valeur de $b(\mathcal{A})$ :

   a) $\mathcal{A} = \{0\}$ ;

   b) $\mathcal{A} = \mathbb{C}$ ;

   c) $\mathcal{A} = \mathbb{N}$ ;

   d) $\mathcal{A} = \mathbb{N}^*$.
2. a) Donner une partie $\mathcal{A}$ de type S telle que $b(\mathcal{A}) = 0$.

   b) Donner une partie $\mathcal{A}$ de type S telle que $b(\mathcal{A}) = 3$.
3. Soit $\mathcal{A}$ une partie de type S. On note $\overline{\mathcal{A}}$ l'ensemble des
   conjugués $\overline{z}$ des éléments $z$ de $\mathcal{A}$. Montrer que
   $\overline{\mathcal{A}}$ est de type S et donner $b(\overline{\mathcal{A}})$ en fonction de
   $b(\mathcal{A})$.

**Deux exemples moins évidents**

On pose $j = e^{2i\pi/3} = -\frac{1}{2} + \frac{\sqrt{3}}{2}\,i$ et on note $\mathbb{Z}[j]$
l'ensemble des nombres complexes de la forme $a + bj$, avec $a$ et $b$ entiers relatifs.

4. a) Calculer $1 + j + j^2$.

   b) Justifier que $\mathbb{Z}[j]$ est de type S.

   c) Montrer que $b(\mathbb{Z}[j]) = 7$.

   d) On note $\mathbb{Z}[j]^*$ l'ensemble des éléments non nuls de $\mathbb{Z}[j]$. Justifier
   que $\mathbb{Z}[j]^*$ est de type S et déterminer $b(\mathbb{Z}[j]^*)$.
5. On note $\mathcal{R}$ l'ensemble des nombres complexes $z$ tels que $z^2 \in \mathbb{Z}[j]$.

   a) Montrer que $\mathcal{R}$ est de type S.

   b) Déterminer $b(\mathcal{R})$.

## Hints

1. **Question 2.** Pour $b = 0$, chercher parmi les entiers naturels : lesquels faut-il
   enlever à $\mathbb{N}$ ?
2. **Question 2.** Pour $b = 3$, penser à un ensemble de nombres très connu qui contient
   $-1$, $0$ et $1$.
3. **Question 4.** Pour calculer un produit $(a + bj)(c + dj)$, remplacer $j^2$ par
   $-1 - j$.
4. **Question 4.** Pour c), calculer $|a + bj|^2$ à partir de la partie réelle et de la partie
   imaginaire de $a + bj$. On trouve $a^2 - ab + b^2$, un entier positif ou nul.
5. **Question 4.** Pour c), multiplier par 4 : $4(a^2 - ab + b^2) = (2a - b)^2 + 3b^2$.
   Que dit cette égalité sur $b$ quand $|a + bj| \leq 1$ ?
6. **Question 4.** Pour d), le seul point délicat est de montrer que $z_1^2 + z_2^2 \neq 0$.
   Si $z_1^2 = -z_2^2$, alors $z_1 = i z_2$ ou $z_1 = -i z_2$. Comparer les parties réelles et
   imaginaires, en se souvenant que $\sqrt{3}$ est irrationnel.
7. **Question 5.** Si $z \in \mathcal{R}$ et $|z| \leq 1$, alors $z^2$ est l'un des sept
   nombres trouvés à la question 4 c).

## Solution

**1.** a) $b(\{0\}) = 1$. b) $b(\mathbb{C}) = \infty$, par exemple tous les réels de $[0, 1]$
conviennent. c) $b(\mathbb{N}) = 2$ : seuls $0$ et $1$ conviennent. d) $b(\mathbb{N}^*) = 1$ :
seul $1$ convient.

**2.** a) Soit $\mathcal{A}$ l'ensemble des entiers $n \geq 2$. Si $z_1, z_2 \geq 2$, alors
$z_1 z_2 \geq 4$ et $z_1^2 + z_2^2 \geq 8$ sont des entiers au moins égaux à $2$ : la partie
$\mathcal{A}$ est de type S. Aucun de ses éléments n'est de module au plus $1$, donc
$b(\mathcal{A}) = 0$.

b) $\mathbb{Z}$ est de type S : un produit d'entiers et une somme de carrés d'entiers sont des
entiers. Ses éléments de module au plus $1$ sont $-1$, $0$ et $1$, donc $b(\mathbb{Z}) = 3$.

**3.** $\overline{\mathcal{A}}$ n'est pas vide car $\mathcal{A}$ ne l'est pas. Soient $w_1$ et
$w_2$ dans $\overline{\mathcal{A}}$ : ils s'écrivent $w_1 = \overline{z_1}$ et
$w_2 = \overline{z_2}$ avec $z_1, z_2 \in \mathcal{A}$. Le conjugué d'un produit est le produit
des conjugués, et de même pour une somme, donc
$$w_1 w_2 = \overline{z_1 z_2} \qquad \text{et} \qquad w_1^2 + w_2^2 = \overline{z_1^2 + z_2^2} .$$
Comme $z_1 z_2$ et $z_1^2 + z_2^2$ sont dans $\mathcal{A}$, ces deux nombres sont dans
$\overline{\mathcal{A}}$. Donc $\overline{\mathcal{A}}$ est de type S.

Le passage au conjugué associe à chaque élément de $\mathcal{A}$ un élément de
$\overline{\mathcal{A}}$, sans oubli ni répétition, et ne change pas le module :
$|\overline{z}| = |z|$. Donc $b(\overline{\mathcal{A}}) = b(\mathcal{A})$.

**4.** a) $j$ est une racine cubique de l'unité différente de $1$, donc $j^3 = 1$ et
$$0 = j^3 - 1 = (j - 1)(1 + j + j^2) .$$
Comme $j \neq 1$, on obtient $1 + j + j^2 = 0$. (On peut aussi calculer directement :
$j^2 = e^{4i\pi/3} = -\frac{1}{2} - \frac{\sqrt{3}}{2}\,i$.)

b) $\mathbb{Z}[j]$ contient $0$, il n'est pas vide. La somme de deux éléments de
$\mathbb{Z}[j]$ est dans $\mathbb{Z}[j]$. Pour le produit, avec $j^2 = -1 - j$ :
$$(a + bj)(c + dj) = ac + (ad + bc)\,j + bd\,j^2 = (ac - bd) + (ad + bc - bd)\,j ,$$
qui est dans $\mathbb{Z}[j]$ car $ac - bd$ et $ad + bc - bd$ sont entiers. Si $z_1$ et $z_2$ sont
dans $\mathbb{Z}[j]$, alors $z_1 z_2$, $z_1^2$ et $z_2^2$ y sont, donc aussi la somme
$z_1^2 + z_2^2$. La partie $\mathbb{Z}[j]$ est de type S.

c) Soit $z = a + bj$ avec $a, b$ entiers. Sa partie réelle est $a - \frac{b}{2}$ et sa partie
imaginaire $\frac{\sqrt{3}}{2}\,b$, donc
$$|z|^2 = \left(a - \frac{b}{2}\right)^2 + \frac{3b^2}{4} = a^2 - ab + b^2 .$$
C'est un entier positif ou nul. Donc $|z| \leq 1$ si et seulement si $a^2 - ab + b^2$ vaut $0$
ou $1$.

- $a^2 - ab + b^2 = 0$ : alors $(2a - b)^2 + 3b^2 = 0$, donc $b = 0$ puis $a = 0$, et $z = 0$.
- $a^2 - ab + b^2 = 1$ : alors $(2a - b)^2 + 3b^2 = 4$, donc $3b^2 \leq 4$ et $b \in \{-1, 0, 1\}$.
  Pour $b = 0$ : $4a^2 = 4$, $a = \pm 1$. Pour $b = 1$ : $(2a - 1)^2 = 1$, $a = 0$ ou $a = 1$.
  Pour $b = -1$ : $(2a + 1)^2 = 1$, $a = 0$ ou $a = -1$.

On obtient $0$ et les six nombres $1$, $-1$, $j$, $-j$, $1 + j$, $-1 - j$, dont on vérifie
qu'ils ont bien un module au plus $1$. Comme $1 + j = -j^2$, ces six nombres sont $\pm 1$, $\pm j$,
$\pm j^2$. **Conclusion :** $b(\mathbb{Z}[j]) = 7$.

d) Le produit de deux nombres complexes non nuls n'est pas nul, et il est dans $\mathbb{Z}[j]$
d'après b). Il reste à voir que si $z_1$ et $z_2$ sont dans $\mathbb{Z}[j]$ et non nuls, alors
$z_1^2 + z_2^2 \neq 0$.

Supposons $z_1^2 + z_2^2 = 0$. Alors $(z_1 - iz_2)(z_1 + iz_2) = 0$, donc $z_1 = \varepsilon i z_2$
avec $\varepsilon = 1$ ou $\varepsilon = -1$. Écrivons $z_1 = a + bj$ et $z_2 = c + dj$. Alors
$$z_1 = \left(a - \frac{b}{2}\right) + \frac{\sqrt{3}}{2}\,b\, i , \qquad
\varepsilon i z_2 = -\varepsilon\,\frac{\sqrt{3}}{2}\,d + \varepsilon \left(c - \frac{d}{2}\right) i .$$
En identifiant les parties réelles : $a - \frac{b}{2} = -\varepsilon \frac{\sqrt{3}}{2}\,d$. Si
$d \neq 0$, on aurait $\sqrt{3} = -\varepsilon\,\frac{2a - b}{d}$, un rationnel : c'est faux. Donc
$d = 0$, puis $2a = b$. En identifiant les parties imaginaires :
$\frac{\sqrt{3}}{2}\,b = \varepsilon c$. Si $b \neq 0$, on aurait encore $\sqrt{3}$ rationnel. Donc
$b = 0$, puis $a = 0$, et $z_1 = 0$ : c'est contraire à l'hypothèse.

Donc $z_1^2 + z_2^2$ est un élément non nul de $\mathbb{Z}[j]$, et $\mathbb{Z}[j]^*$ est de
type S. Ses éléments de module au plus $1$ sont ceux de c) sauf $0$ :
$b(\mathbb{Z}[j]^*) = 6$.

**5.** a) $0 \in \mathcal{R}$ car $0^2 = 0 \in \mathbb{Z}[j]$. Soient $z_1, z_2 \in \mathcal{R}$ ;
posons $w_1 = z_1^2$ et $w_2 = z_2^2$, qui sont dans $\mathbb{Z}[j]$. On a vu en 4 b) que
$\mathbb{Z}[j]$ est stable par somme et par produit. Alors :

- $(z_1 z_2)^2 = w_1 w_2 \in \mathbb{Z}[j]$, donc $z_1 z_2 \in \mathcal{R}$ ;
- $(z_1^2 + z_2^2)^2 = w_1^2 + 2 w_1 w_2 + w_2^2 \in \mathbb{Z}[j]$, donc
  $z_1^2 + z_2^2 \in \mathcal{R}$.

La partie $\mathcal{R}$ est de type S.

b) Soit $z \in \mathbb{C}$. Si $z \in \mathcal{R}$ et $|z| \leq 1$, alors $z^2 \in \mathbb{Z}[j]$ et
$|z^2| = |z|^2 \leq 1$, donc $z^2$ est l'un des sept nombres $0$, $\pm 1$, $\pm j$, $\pm j^2$
trouvés en 4 c). Réciproquement, si $z^2$ est l'un de ces sept nombres, alors $z \in \mathcal{R}$
et $|z|^2 = |z^2| \leq 1$.

Il reste à compter les $z$ dont le carré est l'un de ces sept nombres. Le seul $z$ tel que
$z^2 = 0$ est $0$. Chacun des six autres nombres $w$ est non nul et a exactement deux racines
carrées, $z$ et $-z$, qui sont distinctes. Deux nombres $w$ différents n'ont pas de racine carrée
commune. On obtient $1 + 6 \times 2 = 13$ nombres.

Plus précisément, les six nombres $\pm 1, \pm j, \pm j^2$ sont les $e^{ik\pi/3}$ pour
$k = 0, \ldots, 5$, et leurs racines carrées sont les douze nombres $e^{ik\pi/6}$ pour
$k = 0, \ldots, 11$ : ce sont les racines douzièmes de l'unité.

**Conclusion :** $b(\mathcal{R}) = 13$.

**Bilan.** Pour une partie $\mathcal{A}$ de type S, le nombre $b(\mathcal{A})$ d'éléments dans le
disque de rayon $1$ peut valoir $0$, $1$, $2$, $3$, $6$, $7$, $13$ ou $\infty$ : les exemples
$\{n \geq 2\}$, $\{0\}$ ou $\mathbb{N}^*$, $\mathbb{N}$, $\mathbb{Z}$, $\mathbb{Z}[j]^*$,
$\mathbb{Z}[j]$, $\mathcal{R}$ et $\mathbb{C}$ le montrent. Dans $\mathbb{Z}[j]$, les éléments du
disque sont $0$ et les racines sixièmes de l'unité, dans $\mathcal{R}$ ce sont $0$ et les racines
douzièmes de l'unité.

## Going further

- Trouver une partie de type S telle que $b(\mathcal{A}) = 5$, puis une telle que
  $b(\mathcal{A}) = 9$. On pourra s'inspirer de $\mathbb{Z}[j]$ et de $\mathcal{R}$, en
  remplaçant $j$ par $i$.
- Dans la suite du sujet, on montrait que si $b(\mathcal{A})$ est fini, il vaut au plus $17$,
  puis on cherchait toutes les valeurs possibles : voir les exercices 40602 et 40603. La valeur
  $4$, par exemple, est impossible. Pouvez-vous voir pourquoi un ensemble de type S qui
  contient $j$ ne peut pas avoir pour seuls éléments de module $1$ les nombres $1$, $j$ et
  $j^2$ ?
