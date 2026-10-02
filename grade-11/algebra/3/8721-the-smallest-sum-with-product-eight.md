---
id: "8721"
title: "La plus petite somme quand le produit vaut 8"
grade: 11
theme: algebra
difficulty: 3
duration_min: 25
tags: [inegalite, moyenne-arithmetique, moyenne-geometrique, minimum, cas-d-egalite]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2024, cours de Groupe A"
  reference: "poly_valbonne_2024.pdf, Groupe A, « Inégalités 1 » (Maena), exercice 9"
  url: "https://maths-olympiques.fr/wp-content/uploads/2024/09/poly_valbonne_2024.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/poly_valbonne_2024.pdf"
---

## Statement

Soient $a$, $b$, $c$ trois réels strictement positifs tels que

$$abc = 8 .$$

Quelle est la plus petite valeur que peut prendre $a+b+c$ ?

## Hints

1. Essaie d'abord quelques triplets : $(2,2,2)$, $(1,2,4)$, $(1,1,8)$, $(8,1,1)$, $\left(\frac{1}{2}, 4, 4\right)$. Que remarques-tu ?
2. Une question « quelle est la plus petite valeur ? » demande deux choses : montrer que la somme ne descend jamais en dessous d'un certain nombre, **et** exhiber un triplet qui atteint ce nombre.
3. L'outil est l'inégalité arithmético-géométrique à trois termes :
   $$\frac{u+v+w}{3} \geqslant \sqrt[3]{uvw} \quad \text{pour } u,v,w \geqslant 0 .$$
4. Pour la démontrer, pose $u = U^3$, $v = V^3$, $w = W^3$ et sers-toi de la factorisation
   $$U^3+V^3+W^3-3UVW = (U+V+W)\left(U^2+V^2+W^2-UV-VW-WU\right) .$$

## Solution

**Réponse : la plus petite valeur est $6$.**

### Étape 1 : l'outil, l'inégalité arithmético-géométrique

> Pour tous réels $U, V, W \geqslant 0$ : $\quad U^3 + V^3 + W^3 \;\geqslant\; 3\,UVW$.

*Démonstration.* On part de la factorisation

$$U^3+V^3+W^3-3UVW = (U+V+W)\left(U^2+V^2+W^2-UV-VW-WU\right) .$$

Le premier facteur est positif, puisque $U, V, W \geqslant 0$. Pour le second, multiplions-le par $2$ :

$$2U^2+2V^2+2W^2-2UV-2VW-2WU = (U-V)^2 + (V-W)^2 + (W-U)^2 \;\geqslant\; 0 .$$

Le second facteur est donc positif lui aussi, et le produit de deux nombres positifs est positif. D'où l'inégalité.

*Quand y a-t-il égalité ?* Il faut que le produit soit nul. Si $U, V, W$ ne sont pas tous nuls, le premier facteur est strictement positif, donc c'est le second qui s'annule, c'est-à-dire que la somme des trois carrés $(U-V)^2+(V-W)^2+(W-U)^2$ est nulle. Une somme de carrés est nulle seulement si chaque carré l'est, donc $U = V = W$.

### Étape 2 : on minore $a+b+c$

Posons $U = \sqrt[3]{a}$, $V = \sqrt[3]{b}$, $W = \sqrt[3]{c}$. Ce sont trois réels strictement positifs, et

$$U^3 + V^3 + W^3 = a+b+c, \qquad UVW = \sqrt[3]{abc} = \sqrt[3]{8} = 2 .$$

L'inégalité de l'étape 1 donne alors

$$a+b+c \;\geqslant\; 3 \times 2 = 6 .$$

### Étape 3 : la valeur $6$ est atteinte

Prenons $a = b = c = 2$. Alors $abc = 2 \times 2 \times 2 = 8$, l'hypothèse est vérifiée, et

$$a+b+c = 6 .$$

### Conclusion

La somme $a+b+c$ est toujours supérieure ou égale à $6$, et elle vaut $6$ pour $a=b=c=2$. La plus petite valeur possible est donc

$$\boxed{6} .$$

*Une erreur classique à éviter.* Beaucoup s'arrêtent après l'étape 2 en écrivant « donc le minimum est $6$ ». Mais une minoration ne dit pas que la borne est atteinte : on aurait tout aussi bien pu écrire $a+b+c \geqslant 5$, ce qui est vrai et ne donne pas le minimum. L'étape 3 est indispensable.

## Going further

1. Même question avec $abc = 1$, puis avec $abc = k^3$ pour $k > 0$ quelconque.

2. Et si on demandait le **maximum** de $a+b+c$ sous la contrainte $abc = 8$ ? Regarde le triplet $\left(t,\, t,\, \frac{8}{t^2}\right)$ quand $t$ devient très grand.

3. Toujours avec $abc = 8$ : quelle est la plus petite valeur de $ab+bc+ca$ ? *Indication : applique la même inégalité à $ab$, $bc$, $ca$.*
