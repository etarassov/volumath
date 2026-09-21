---
id: "8826"
title: "Le plus petit n sans solution non nulle"
grade: 12
theme: arithmetic
difficulty: 5
duration_min: 50
tags: [carres modulo 8, descente infinie, equation diophantienne, minimum]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2025, entraînement de mi-parcours du Groupe A"
  reference: "Poly-2025-compresse.pdf, Groupe A, « Entraînement de mi-parcours », exercice 4, p. 87 (la solution imprimée affirme que la seule façon d'obtenir 0 modulo 8 est 0+0+0+0, ce qui est faux : 4+4+0+0 et 4+4+4+4 conviennent aussi ; la conclusion reste valable, l'argument est refait ici)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2025/09/Poly-2025-compresse.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly-2025-compresse.pdf"
---

## Statement

Trouver le plus petit entier naturel $n$ pour lequel la seule solution $(a,b,c,d)$ en entiers relatifs de l'équation
$$a^2 + b^2 + c^2 = n\,d^2$$
soit $(a,b,c,d) = (0,0,0,0)$.

## Hints

1. Comme dans tout problème de minimum, il y a deux choses à faire : exhiber une solution non nulle pour chaque $n$ plus petit, et démontrer qu'il n'y en a aucune pour la valeur annoncée.
2. Pour les petites valeurs de $n$, cherche des solutions avec $d = 1$ : il s'agit alors d'écrire $n$ comme somme de trois carrés.
3. Pour la valeur critique, travaille modulo $8$. Commence par dresser la liste des restes possibles de $x^2$ modulo $8$.
4. Astuce d'écriture : si $n = 7$, alors $-7 \equiv 1 \pmod 8$, donc l'équation devient $a^2+b^2+c^2+d^2 \equiv 0 \pmod 8$, qui est plus symétrique.
5. Compte les nombres impairs parmi $a, b, c, d$. Regarde d'abord la congruence modulo $4$, puis modulo $8$. Termine par une descente infinie.

## Solution

On va montrer que la réponse est $n = 7$.

### Partie 1 : pour $n \leqslant 6$, il y a une solution non nulle

Il suffit à chaque fois de prendre $d = 1$ et d'écrire $n$ comme somme de trois carrés.

| $n$ | solution $(a,b,c,d)$ |
|---|---|
| $0$ | $(0,0,0,1)$ |
| $1$ | $(1,0,0,1)$ |
| $2$ | $(1,1,0,1)$ |
| $3$ | $(1,1,1,1)$ |
| $4$ | $(2,0,0,1)$ |
| $5$ | $(2,1,0,1)$ |
| $6$ | $(2,1,1,1)$ |

Aucune de ces valeurs de $n$ ne convient donc.

### Partie 2 : pour $n = 7$, il n'y a que la solution nulle

**Les carrés modulo 8.** Un entier $x$ est soit impair, soit congru à $2$ modulo $4$, soit multiple de $4$. Dans ces trois cas :

- $x = 2k+1$ donne $x^2 = 4k(k+1)+1 \equiv 1 \pmod 8$, car $k(k+1)$ est pair ;
- $x = 4k+2$ donne $x^2 = 16k^2+16k+4 \equiv 4 \pmod 8$ ;
- $x = 4k$ donne $x^2 = 16k^2 \equiv 0 \pmod 8$.

Donc
$$x^2 \equiv 0, \; 1 \; \text{ou} \; 4 \pmod 8 ,$$
et $x^2 \equiv 1$ **exactement** lorsque $x$ est impair.

**Une descente infinie.** Supposons qu'il existe une solution non nulle de
$$a^2+b^2+c^2 = 7d^2 .$$
Parmi toutes les solutions non nulles, choisissons-en une pour laquelle $a^2+b^2+c^2+d^2$ est le plus petit possible (c'est possible : un ensemble non vide d'entiers naturels a un plus petit élément).

Comme $7 \equiv -1 \pmod 8$, l'équation donne
$$a^2+b^2+c^2+d^2 \equiv a^2+b^2+c^2-7d^2 = 0 \pmod 8 .$$

Notons $k$ le nombre d'entiers impairs parmi $a$, $b$, $c$, $d$. Chaque impair contribue $1$ modulo $8$, chaque pair contribue $0$ ou $4$, donc contribue $0$ modulo $4$. En regardant la congruence **modulo 4** :
$$k \equiv 0 \pmod 4 .$$
Comme $0 \leqslant k \leqslant 4$, cela laisse $k = 0$ ou $k = 4$.

Si $k = 4$, les quatre nombres sont impairs et la somme des carrés vaut $1+1+1+1 = 4$ modulo $8$, ce qui n'est pas $0$. Donc
$$k = 0 : \quad a, \, b, \, c, \, d \text{ sont tous pairs.}$$

Écrivons $a = 2a'$, $b = 2b'$, $c = 2c'$, $d = 2d'$. En reportant :
$$4a'^2+4b'^2+4c'^2 = 7 \cdot 4 d'^2 , \qquad \text{donc} \qquad a'^2+b'^2+c'^2 = 7 d'^2 .$$

Le quadruplet $(a',b',c',d')$ est donc encore solution, il est encore non nul (sinon $(a,b,c,d)$ le serait), et
$$a'^2+b'^2+c'^2+d'^2 = \frac{a^2+b^2+c^2+d^2}{4} < a^2+b^2+c^2+d^2 .$$

Cela contredit le choix de la solution minimale. Il n'existe donc aucune solution non nulle.

### Conclusion

$$\boxed{n = 7 .}$$

### Attention à un piège de comptage

Il est tentant d'écrire : « les carrés valent $0$, $1$ ou $4$ modulo $8$, et la seule façon d'obtenir $0$ en additionnant quatre de ces nombres est $0+0+0+0$ ». C'est faux : $4+4+0+0 = 8 \equiv 0$ et $4+4+4+4 = 16 \equiv 0$ conviennent aussi. Heureusement, ces cas-là correspondent eux aussi à des entiers **pairs**, donc la conclusion tient ; mais il faut la justifier comme ci-dessus, en comptant les impairs, et non en prétendant que tous les carrés sont nuls modulo $8$.

## Going further

Montrer plus généralement que pour tout entier $k \geqslant 0$, l'équation $a^2+b^2+c^2 = 7 \cdot 4^k d^2$ n'a que la solution nulle. En déduire quels entiers de la forme $4^k(8m+7)$ ne sont pas somme de trois carrés.
