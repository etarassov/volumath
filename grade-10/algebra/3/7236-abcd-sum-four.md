---
id: "7236"
title: "Quatre nombres de somme 4"
grade: 10
theme: algebra
difficulty: 3
duration_min: 20
tags: [inegalite, factorisation, carre positif, produit et somme]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique junior de Cachan 2018"
  reference: "Poly_final_CJ18.pdf, « Première journée », exercices d'échauffement, exercice 2"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly_final_CJ18.pdf"
---

## Statement

Soient $a$, $b$, $c$, $d$ quatre nombres réels positifs tels que
$$a + b + c + d = 4 .$$

Montrer que
$$ab + bc + cd + da \leqslant 4 .$$

*(Exemple, pour se faire la main : avec $a = 0{,}8$, $b = 1{,}5$, $c = 1{,}1$ et $d = 0{,}6$, on
trouve $ab+bc+cd+da = 3{,}99$.)*

## Hints

1. Regarde bien les quatre produits $ab$, $bc$, $cd$, $da$. Quels facteurs reviennent ? Essaie de
   factoriser.
2. $ab + bc + cd + da = b(a+c) + d(c+a)$. Continue.
3. Tu obtiens un produit de deux nombres dont tu connais la somme. Si $x + y = 4$, quelle est la
   plus grande valeur possible de $xy$ ?
4. Développe $(x-y)^2 \geqslant 0$.

## Solution

**La factorisation.**

$$ab + bc + cd + da = b(a + c) + d(c + a) = (a+c)(b+d) .$$

**Ce que l'on sait des deux facteurs.**

Posons
$$x = a + c \qquad \text{et} \qquad y = b + d .$$
Ce sont deux nombres positifs, et par hypothèse
$$x + y = a+b+c+d = 4 .$$

Il reste à montrer que $xy \leqslant 4$.

**Le produit de deux nombres de somme 4.**

Comme un carré est toujours positif,
$$(x - y)^2 \geqslant 0 .$$
Développons :
$$x^2 - 2xy + y^2 \geqslant 0 .$$
Ajoutons $4xy$ des deux côtés :
$$x^2 + 2xy + y^2 \geqslant 4xy, \qquad \text{c'est-à-dire} \qquad (x+y)^2 \geqslant 4xy .$$

Comme $x + y = 4$, cela donne
$$16 \geqslant 4xy, \qquad \text{donc} \qquad xy \leqslant 4 .$$

**Conclusion.**

$$ab + bc + cd + da = (a+c)(b+d) = xy \leqslant 4 .$$

**C'est bien ce qu'il fallait démontrer.**

## Going further

Quand y a-t-il égalité ? Il faut $(x-y)^2 = 0$, donc $x = y = 2$, c'est-à-dire
$$a + c = 2 \qquad \text{et} \qquad b + d = 2 .$$
Par exemple $a = b = c = d = 1$ convient, mais aussi $a = 2$, $c = 0$, $b = 2$, $d = 0$, qui donne
$ab + bc + cd + da = 4 + 0 + 0 + 0 = 4$. Il y a donc une infinité de cas d'égalité, et pas
seulement le cas symétrique.

Remarquons enfin que l'inégalité $xy \leqslant \left(\dfrac{x+y}{2}\right)^2$ que nous venons de
redémontrer est l'**inégalité arithmético-géométrique** pour deux nombres : la moyenne
géométrique $\sqrt{xy}$ ne dépasse jamais la moyenne arithmétique $\dfrac{x+y}{2}$.
