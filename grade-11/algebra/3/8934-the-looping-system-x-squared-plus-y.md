---
id: "8934"
title: "Le système en boucle x² + y = 2x"
grade: 11
theme: algebra
difficulty: 3
duration_min: 30
tags: [systeme, changement-de-variable, carre, equation-polynomiale]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2026, Groupe D"
  reference: "Poly-Valbonne-2026.pdf, chapitre VI « Groupe D », entraînement de fin de parcours, exercice 1"
  url: "https://maths-olympiques.fr/wp-content/uploads/2026/09/Poly-Valbonne-2026.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly-Valbonne-2026.pdf"
---

## Statement

Déterminer tous les triplets $(x, y, z)$ de nombres réels tels que

$$x^2 + y = 2x, \qquad y^2 + z = 2y, \qquad z^2 + x = 2z.$$

Les trois équations se répondent en boucle : la première relie $x$ à $y$, la deuxième $y$ à $z$, et la troisième ramène $z$ à $x$.

## Hints

1. Isolez $y$ dans la première équation : $y = 2x - x^2$. Cette expression ne vous rappelle-t-elle pas un carré, à un signe et une constante près ?
2. Calculez $y - 1$. Vous devriez trouver quelque chose de très court.
3. Posez $u = x - 1$, $v = y - 1$, $w = z - 1$, et réécrivez les trois équations avec ces nouvelles lettres.
4. Vous obtenez $v = -u^2$, $w = -v^2$, $u = -w^2$. Enchaînez les trois pour éliminer $v$ et $w$ et n'avoir plus qu'une équation en $u$.
5. Il reste $u = -u^8$, c'est-à-dire $u(1 + u^7) = 0$. Combien l'équation $u^7 = -1$ a-t-elle de solutions **réelles** ?

## Solution

### Étape 1 : le bon changement de variable

Isolons $y$ dans la première équation : $y = 2x - x^2$. Alors

$$y - 1 = 2x - x^2 - 1 = -\left(x^2 - 2x + 1\right) = -(x-1)^2.$$

Les trois équations ont exactement la même forme, donc de la même façon $z - 1 = -(y-1)^2$ et $x - 1 = -(z-1)^2$.

Cela invite à poser

$$u = x - 1, \qquad v = y - 1, \qquad w = z - 1,$$

et le système devient

$$v = -u^2, \qquad w = -v^2, \qquad u = -w^2.$$

Ce système-là dit la même chose que le premier, mais il est bien plus simple : chaque inconnue est directement donnée par la précédente.

### Étape 2 : faire le tour de la boucle

Partons de la troisième relation et remontons :

$$u = -w^2 = -\left(-v^2\right)^2 = -v^4 = -\left(-u^2\right)^4 = -u^8.$$

(Les signes moins disparaissent à chaque fois qu'on élève au carré, et il ne reste que celui de tête.)

Donc $u + u^8 = 0$, c'est-à-dire

$$u\left(1 + u^7\right) = 0.$$

Un produit est nul si et seulement si l'un des facteurs l'est, donc $u = 0$ ou $u^7 = -1$.

L'équation $u^7 = -1$ n'a qu'une seule solution réelle, $u = -1$ : en effet la fonction $t \mapsto t^7$ est strictement croissante sur $\mathbb{R}$, donc elle ne prend chaque valeur qu'une fois.

### Étape 3 : redescendre vers $x$, $y$, $z$

**Premier cas : $u = 0$.** Alors $v = -u^2 = 0$, puis $w = -v^2 = 0$. Donc $x = y = z = 1$.

**Second cas : $u = -1$.** Alors $v = -u^2 = -1$, puis $w = -v^2 = -1$. Donc $x = y = z = 0$.

### Étape 4 : vérification

Il faut vérifier que ces deux triplets conviennent vraiment, car nous avons enchaîné des implications.

- Pour $(x,y,z) = (1,1,1)$ : $x^2 + y = 1 + 1 = 2 = 2x$, et les deux autres équations sont identiques. C'est bon.
- Pour $(x,y,z) = (0,0,0)$ : $x^2 + y = 0 = 2x$, idem pour les deux autres. C'est bon.

### Conclusion

$$\boxed{(x,y,z) = (0,0,0) \quad \text{ou} \quad (x,y,z) = (1,1,1).}$$

*Ce qu'il faut retenir.* Le système avait l'air compliqué parce que les carrés et les termes en $2x$ se mélangeaient. Le déplacement d'une unité, $u = x-1$, a fait disparaître tout le bruit d'un coup. Chercher le changement de variable qui simplifie l'écriture est souvent plus rentable que se lancer dans les calculs tels qu'ils viennent.

## Going further

1. Démontrez directement, sans le changement de variable, qu'une solution vérifie forcément $x \leqslant 1$, $y \leqslant 1$ et $z \leqslant 1$. (Regardez $y = 2x - x^2$ et cherchez le maximum de cette expression.)
2. Reprenez le même problème avec quatre inconnues qui tournent en rond :
   $$x^2 + y = 2x, \qquad y^2 + z = 2y, \qquad z^2 + t = 2z, \qquad t^2 + x = 2t.$$
   La même méthode donne cette fois $u = -u^{16}$. Quelles sont les solutions ? Et avec $n$ inconnues ?
