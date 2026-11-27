---
id: "40561"
title: "Sommes de cubes pairs distincts, de 288 en 288"
grade: 9
theme: arithmetic
difficulty: 4
duration_min: 40
tags: [cubes, entiers-distincts, decomposition, identite, construction, progression-arithmetique]
adapted_from: null
see_also: ["40562", "40563"]
same_as: []
created: 2026-11-27
source:
  name: "Concours général des lycées 2016, mathématiques, série S"
  reference: "cg-2016-s-sujet.pdf, problème I « Sommes de cubes », questions 1 et 5 (a et b)"
  url: "https://www.freemaths.fr/annales-composition-mathematiques-concours-general/concours-general-mathematiques-sujet-serie-s-2016.pdf"
  original_language: "fr"
  local_copy: "sources/originals/concours-general/cg-2016-s-sujet.pdf"
---

## Statement

On note $S_0$ l'ensemble des entiers strictement positifs qui peuvent s'écrire comme une somme de
cubes d'entiers **pairs** strictement positifs, deux à deux distincts. La somme peut n'avoir qu'un
seul terme. Par exemple, $216 = 6^3$ et $1072 = 2^3 + 4^3 + 10^3$ appartiennent à $S_0$.

1. Montrer que $2016$ appartient à $S_0$.

2. On admet que, pour tout nombre réel $x$,
$$(2x+12)^3 + (2x+4)^3 + (2x+2)^3 - (2x+10)^3 - (2x+8)^3 - (2x)^3 = 288.$$

   a) Montrer qu'il existe un entier $u$ tel que les trois nombres $u$, $u + 288$ et $u + 576$
   appartiennent à $S_0$.

   b) On dit que des nombres $u_1, u_2, \ldots, u_n$ sont *en progression arithmétique de raison
   $288$* si $u_{i+1} - u_i = 288$ pour tout entier $i$ tel que $1 \leqslant i < n$. Montrer que,
   pour tout entier $n \geqslant 2$, il existe $n$ éléments de $S_0$ en progression arithmétique de
   raison $288$.

## Hints

1. **Question 1.** $2016$ est divisible par $8 = 2^3$. Si $2016 = (2a)^3 + (2b)^3 + \cdots$,
   que vaut $a^3 + b^3 + \cdots$ ?
2. **Question 1.** Il reste à écrire $252$ comme une somme de cubes d'entiers distincts.
   Commencer par le plus grand cube possible.
3. **Question 2a.** Écrire l'égalité admise sans signe moins :
   $(2x+12)^3 + (2x+4)^3 + (2x+2)^3 = (2x)^3 + (2x+8)^3 + (2x+10)^3 + 288$. Avec $x = 1$, on
   obtient deux éléments de $S_0$ dont la différence est $288$.
4. **Question 2a.** Pour avancer de $288$ une deuxième fois, utiliser l'égalité avec une autre
   valeur de $x$, choisie pour que les six nombres en jeu soient tous différents des six premiers.
   On remplace d'abord un groupe de trois cubes, puis l'autre.
5. **Question 2b.** Prendre $n - 1$ valeurs de $x$ assez éloignées les unes des autres, par
   exemple $x = 7, 14, 21, \ldots$, et remplacer les groupes un par un.

## Solution

**1.** Le cube d'un entier pair $2a$ vaut $(2a)^3 = 8a^3$. Comme $2016 = 8 \times 252$, il suffit
d'écrire $252$ comme une somme de cubes d'entiers distincts, puis de doubler chacun de ces entiers.

Le plus grand cube inférieur à $252$ est $6^3 = 216$. Il reste $252 - 216 = 36$, et
$36 = 27 + 8 + 1 = 3^3 + 2^3 + 1^3$. Donc $252 = 6^3 + 3^3 + 2^3 + 1^3$, puis
$$2016 = 8 \times 252 = 12^3 + 6^3 + 4^3 + 2^3.$$
Vérification : $1728 + 216 + 64 + 8 = 2016$.

**Conclusion :** $2016$ est la somme des cubes des entiers pairs distincts $2$, $4$, $6$ et $12$, donc
$2016$ appartient à $S_0$.

**2.** Pour un entier $x \geqslant 1$, regroupons les six nombres pairs de l'égalité admise en deux
groupes de trois :
$$B(x) : \; 2x,\ 2x+8,\ 2x+10 \qquad \text{et} \qquad C(x) : \; 2x+2,\ 2x+4,\ 2x+12.$$
Ces six nombres sont pairs, strictement positifs, deux à deux distincts, et compris entre $2x$ et
$2x + 12$. L'égalité admise dit que la somme des cubes du groupe $C(x)$ est égale à la somme des
cubes du groupe $B(x)$, plus $288$.

Ainsi, dans une somme de cubes, **remplacer les trois cubes du groupe $B(x)$ par les trois cubes du
groupe $C(x)$ augmente la somme de exactement $288$.**

**a)** Prenons $x = 1$ et $x = 10$ :
$$B(1) : 2,\ 10,\ 12 \qquad C(1) : 4,\ 6,\ 14 \qquad B(10) : 20,\ 28,\ 30 \qquad C(10) : 22,\ 24,\ 32.$$
Ces douze nombres pairs sont tous différents. Posons
$$u = 2^3 + 10^3 + 12^3 + 20^3 + 28^3 + 30^3 = 59\,688.$$
En remplaçant le groupe $B(1)$ par le groupe $C(1)$, on obtient
$$u + 288 = 4^3 + 6^3 + 14^3 + 20^3 + 28^3 + 30^3 = 59\,976,$$
puis en remplaçant encore le groupe $B(10)$ par le groupe $C(10)$,
$$u + 576 = 4^3 + 6^3 + 14^3 + 22^3 + 24^3 + 32^3 = 60\,264.$$
Chacun de ces trois nombres est une somme de cubes de six entiers pairs strictement positifs
deux à deux distincts.

**Conclusion :** $u = 59\,688$ convient : $u$, $u + 288$ et $u + 576$ appartiennent à $S_0$.

**b)** Soit $n \geqslant 2$. On choisit les $n - 1$ valeurs $x_t = 7t$, pour $t = 1, 2, \ldots, n - 1$.
Les six nombres des groupes $B(x_t)$ et $C(x_t)$ sont compris entre $14t$ et $14t + 12$. Ces
intervalles ne se chevauchent pas (le suivant commence à $14t + 14$), donc les $6(n-1)$ nombres de
tous les groupes sont deux à deux distincts.

Pour $k = 1, 2, \ldots, n$, on note $u_k$ la somme des cubes suivants :

- pour chaque $t < k$, les trois cubes du groupe $C(x_t)$ ;
- pour chaque $t \geqslant k$, les trois cubes du groupe $B(x_t)$.

Ainsi $u_1$ utilise tous les groupes $B$, et $u_n$ tous les groupes $C$. Chaque $u_k$ est une somme
de cubes de $3(n-1)$ entiers pairs strictement positifs, deux à deux distincts, donc $u_k$
appartient à $S_0$.

Pour passer de $u_k$ à $u_{k+1}$ (avec $1 \leqslant k < n$), un seul groupe change : pour $t = k$,
le groupe $B(x_k)$ est remplacé par le groupe $C(x_k)$. La somme augmente donc de $288$ :
$u_{k+1} - u_k = 288$.

**Conclusion :** $u_1, u_2, \ldots, u_n$ sont $n$ éléments de $S_0$ en progression arithmétique de
raison $288$.

Par exemple, pour $n = 2$, on obtient $u_1 = 14^3 + 22^3 + 24^3$ et $u_2 = 16^3 + 18^3 + 26^3$, et
l'on vérifie que $u_2 - u_1 = 27\,504 - 27\,216 = 288$.

**Bilan.** $2016$ est une somme de cubes de nombres pairs distincts, et en échangeant des groupes de
trois cubes grâce à une seule égalité, on fabrique dans $S_0$ des suites de nombres aussi longues
qu'on veut qui avancent de $288$ en $288$.

## Going further

- D'où vient l'égalité admise ? En divisant par $8$, elle revient à
  $(x+6)^3 + (x+2)^3 + (x+1)^3 - (x+5)^3 - (x+4)^3 - x^3 = 36$. Remarquer que
  $6 + 2 + 1 = 5 + 4 + 0$ et $6^2 + 2^2 + 1^2 = 5^2 + 4^2 + 0^2$ : pourquoi les termes en $x^3$, en
  $x^2$ et en $x$ disparaissent-ils ?
- Dans la suite du sujet, on ajoutait à ces progressions des sommes de cubes **impairs** distincts
  qui prennent tous les restes possibles dans la division par $288$ (exercice 40562), et l'on
  montrait que tout entier assez grand est une somme de cubes d'entiers distincts
  (exercice 40563). On sait aujourd'hui que $12\,758$ est le plus grand entier qui n'est pas une
  telle somme.
