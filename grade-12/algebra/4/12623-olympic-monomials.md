---
id: "12623"
title: "Les monômes olympiques"
grade: 12
theme: algebra
difficulty: 4
duration_min: 45
tags: [polynomes, plusieurs-variables, identification-des-coefficients, invariant, symetrie]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, test de sélection du 31 mars 2021"
  reference: "2021-12_Enonce-Test-4.pdf, exercice 5 (senior) ; corrigé 2021-04_Corrige-Test-4-Web.pdf (coquille sans conséquence page 10 : le développement écrit « by² » au lieu de « by³ »)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2021/12/Énoncé-Test-4.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2021-12_Enonce-Test-4.pdf"
---

## Statement

Un polynôme à coefficients entiers en les trois variables $x$, $y$ et $z$ est une somme de termes de la forme $c\, x^i y^j z^k$, où $c$ est un entier relatif et $i$, $j$, $k$ sont des entiers naturels. Par exemple, $x^2 - 3xy^2z + 7$ en est un. En revanche, $\pi xyz$, $\frac{x}{y^2 + 1}$ ou $\sqrt{xy} + z$ n'en sont pas.

On dit qu'un tel polynôme $P$ est **olympique** s'il existe trois polynômes $A$, $B$ et $C$ à coefficients entiers en $x$, $y$, $z$ tels que
$$P = (x + y + z)\,A + (xy + yz + zx)\,B + xyz\,C.$$

Trouver le plus grand entier $n$ pour lequel il existe des entiers naturels $i$, $j$, $k$ de somme $i + j + k = n$ tels que le polynôme $x^i y^j z^k$ ne soit **pas** olympique.

## Hints

1. Deux remarques simples pour commencer. Si $P$ est olympique, alors $P \times Q$ l'est aussi, pour n'importe quel polynôme $Q$. Et si l'on échange les noms de deux variables dans un polynôme olympique, il reste olympique. Pourquoi ?
2. Essaie d'écrire $x^3$ sous la forme demandée. Le produit $(x + y + z)\,x^2$ contient $x^3$, mais aussi $x^2y + x^2z$ en trop. Comment les enlever ?
3. Fais de même avec $x^2y^2$, en partant de $(xy + yz + zx)\,xy$. Déduis-en que tout monôme de degré au moins 4 est olympique.
4. Il reste à montrer que $x^2y$ n'est pas olympique. Ne garde que les termes de degré 3. Écris $A = ax^2 + by^2 + cz^2 + dxy + exz + fyz$, $B = gx + hy + iz$ et $C = j$, développe, et cherche une combinaison des coefficients qui vaut toujours 0.

## Solution

On note $s_1 = x + y + z$, $s_2 = xy + yz + zx$ et $s_3 = xyz$. Un polynôme est olympique quand il s'écrit $s_1A + s_2B + s_3C$, avec $A$, $B$, $C$ à coefficients entiers. Le **degré** du monôme $x^iy^jz^k$ est $i + j + k$.

**Deux propriétés des polynômes olympiques.**

- *Produit.* Si $P = s_1A + s_2B + s_3C$ et si $Q$ est un polynôme à coefficients entiers, alors $PQ = s_1(AQ) + s_2(BQ) + s_3(CQ)$, et $AQ$, $BQ$, $CQ$ sont encore à coefficients entiers. Donc $PQ$ est olympique.
- *Échange des variables.* Les polynômes $s_1$, $s_2$, $s_3$ ne changent pas quand on échange deux variables. Si l'on échange par exemple $x$ et $y$ partout dans l'égalité $P = s_1A + s_2B + s_3C$, on obtient une écriture du même type pour le nouveau polynôme. Donc il est encore olympique.

**Trois monômes olympiques.** D'abord $xyz = s_3 \times 1$ est olympique. Ensuite, on vérifie en développant que
$$x^3 = (x + y + z)\,x^2 - (xy + yz + zx)\,x + xyz.$$
En effet, le membre de droite vaut $x^3 + x^2y + x^2z - x^2y - xyz - x^2z + xyz = x^3$. Donc $x^3$ est olympique, avec $A = x^2$, $B = -x$, $C = 1$. De même,
$$x^2y^2 = (xy + yz + zx)\,xy - xyz\,(x + y),$$
car le membre de droite vaut $x^2y^2 + xy^2z + x^2yz - x^2yz - xy^2z = x^2y^2$. Donc $x^2y^2$ est olympique, avec $A = 0$, $B = xy$, $C = -(x + y)$.

**Tout monôme de degré au moins 4 est olympique.** Soit $x^iy^jz^k$ avec $i + j + k \geqslant 4$. Quitte à échanger les noms des variables, ce qui ne change rien d'après la deuxième propriété, on peut supposer $i \geqslant j \geqslant k$.

- Si $k \geqslant 1$, alors $i$, $j$, $k$ valent tous au moins 1, et le monôme est un multiple de $xyz$.
- Si $k = 0$ et $j \geqslant 2$, alors $i \geqslant j \geqslant 2$, et le monôme est un multiple de $x^2y^2$.
- Si $k = 0$ et $j \leqslant 1$, alors $i = (i + j + k) - j \geqslant 4 - 1 = 3$, et le monôme est un multiple de $x^3$.

Dans les trois cas, d'après la première propriété, le monôme est olympique. Donc **$n \leqslant 3$**.

**Le monôme $x^2y$ n'est pas olympique.** Supposons au contraire que $x^2y = s_1A + s_2B + s_3C$.

*On ne garde que les termes de degré 3.* Quand on multiplie $s_1$ par un monôme de degré $d$, on obtient des monômes de degré $d + 1$. Donc les termes de degré 3 de $s_1A$ viennent exactement des termes de degré 2 de $A$. De même, les termes de degré 3 de $s_2B$ viennent des termes de degré 1 de $B$, et ceux de $s_3C$ du terme constant de $C$. Le membre de gauche n'a que des termes de degré 3. En ne gardant des deux côtés que les termes de degré 3, on obtient donc
$$x^2y = (x + y + z)(ax^2 + by^2 + cz^2 + dxy + exz + fyz) + (xy + yz + zx)(gx + hy + iz) + j\,xyz,$$
où $a$, $b$, $c$, $d$, $e$, $f$ sont les coefficients des termes de degré 2 de $A$, $g$, $h$, $i$ ceux des termes de degré 1 de $B$, et $j$ le terme constant de $C$.

*On développe.* Le membre de droite vaut
$$a x^3 + b y^3 + c z^3 + (a + d + g)\,x^2y + (a + e + g)\,x^2z + (b + d + h)\,xy^2$$
$$+ (b + f + h)\,y^2z + (c + e + i)\,xz^2 + (c + f + i)\,yz^2 + (d + e + f + g + h + i + j)\,xyz.$$

*On compare.* Deux polynômes égaux ont les mêmes coefficients. Regardons la combinaison
$$[\text{coef. de } x^2y] + [\text{coef. de } y^2z] + [\text{coef. de } z^2x] - [\text{coef. de } x^2z] - [\text{coef. de } y^2x] - [\text{coef. de } z^2y].$$
À droite, elle vaut
$$(a + d + g) + (b + f + h) + (c + e + i) - (a + e + g) - (b + d + h) - (c + f + i) = 0,$$
car chaque lettre apparaît une fois avec le signe $+$ et une fois avec le signe $-$. À gauche, dans $x^2y$, elle vaut $1 + 0 + 0 - 0 - 0 - 0 = 1$. On obtiendrait $1 = 0$, ce qui est absurde.

Donc $x^2y$ n'est pas olympique. C'est un monôme de degré $2 + 1 + 0 = 3$.

**Conclusion.** Tous les monômes de degré au moins 4 sont olympiques, et le monôme $x^2y$, de degré 3, ne l'est pas. Le plus grand entier cherché est **$n = 3$**.

## Going further

- La preuve que $x^2y$ n'est pas olympique n'utilise jamais que les coefficients sont entiers : $x^2y$ ne s'écrit pas $s_1A + s_2B + s_3C$, même avec des coefficients réels.
- Parmi les dix monômes de degré 3, exactement quatre sont olympiques : $x^3$, $y^3$, $z^3$ et $xyz$. Pour chacun des six autres, $x^2y$, $x^2z$, $xy^2$, $y^2z$, $xz^2$ et $yz^2$, la même combinaison de coefficients vaut $1$ ou $-1$, alors qu'elle vaut toujours 0 pour un polynôme olympique de degré 3.
