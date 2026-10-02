---
id: "7060"
title: "Une inégalité à trois inconnues"
grade: 11
theme: algebra
difficulty: 4
duration_min: 30
tags: [inegalite, somme-de-carres, cas-d-egalite]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique junior de Cachan 2010"
  reference: "stage_junior_2010.pdf, jeudi 28 octobre (algèbre), cours et exercices de l'après-midi (Pierre Bornsztein), exercice 5"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_junior_2010.pdf"
---

## Statement

Montrer que pour tous réels $a$, $b$, $c$ :
$$a^2 + 4b^2 + 8c^2 \geq 3ab + 4bc + 2ca .$$

Pour quels triplets $(a ; b ; c)$ y a-t-il égalité ?

## Hints

1. Le seul outil dont tu as besoin est : **un carré est positif**. Autrement dit
   $x^2 + y^2 \geq 2xy$, qui se réécrit $(x-y)^2 \geq 0$.
2. Il y a trois termes à faire apparaître à droite : $3ab$, $4bc$ et $2ca$. Traite-les
   séparément, en découpant les trois carrés de gauche.
3. Pour faire apparaître $4bc$, quelle combinaison de $b^2$ et de $c^2$ utiliser ?
   $b^2 + 4c^2 \geq 4bc$, car $(b - 2c)^2 \geq 0$.
4. Pour $3ab$, cherche $\alpha a^2 + \beta b^2 \geq 3ab$ avec $\alpha$ et $\beta$ bien choisis.
   Essaie $\dfrac34 a^2 + 3b^2$.
5. Vérifie ensuite que les morceaux de $a^2$, de $b^2$ et de $c^2$ utilisés se recollent
   exactement en $a^2 + 4b^2 + 8c^2$.

## Solution

**Trois inégalités élémentaires.**

Tout repose sur le fait qu'un carré est positif. Écrivons trois identités :

$$\frac34 (a - 2b)^2 = \frac34 a^2 - 3ab + 3b^2 \geq 0 ,$$
$$\frac14 (a - 4c)^2 = \frac14 a^2 - 2ac + 4c^2 \geq 0 ,$$
$$(b - 2c)^2 = b^2 - 4bc + 4c^2 \geq 0 .$$

**On additionne.**

Additionnons ces trois inégalités. À gauche, les termes en $a^2$ donnent
$\dfrac34 a^2 + \dfrac14 a^2 = a^2$ ; ceux en $b^2$ donnent $3b^2 + b^2 = 4b^2$ ; ceux en
$c^2$ donnent $4c^2 + 4c^2 = 8c^2$. Les termes croisés donnent $-3ab - 2ac - 4bc$.

On obtient donc exactement
$$a^2 + 4b^2 + 8c^2 - 3ab - 4bc - 2ca \geq 0 ,$$
c'est-à-dire l'inégalité demandée. $\blacksquare$

Autrement dit, on vient d'écrire l'identité
$$a^2 + 4b^2 + 8c^2 - 3ab - 4bc - 2ca
= \frac34 (a - 2b)^2 + \frac14 (a - 4c)^2 + (b - 2c)^2 .$$

**Le cas d'égalité.**

Une somme de trois quantités positives est nulle exactement quand chacune l'est. L'égalité a
donc lieu si et seulement si
$$a = 2b, \qquad a = 4c, \qquad b = 2c .$$

Ces trois conditions sont compatibles, et se résument à
$$\boxed{a = 4t, \quad b = 2t, \quad c = t, \qquad t \in \mathbb R .}$$

Vérifions sur $t = 1$, c'est-à-dire $(a ; b ; c) = (4 ; 2 ; 1)$ :
$$a^2 + 4b^2 + 8c^2 = 16 + 16 + 8 = 40, \qquad
3ab + 4bc + 2ca = 24 + 8 + 8 = 40 . \ \checkmark$$

## Going further

Comment trouve-t-on les coefficients $\dfrac34$, $\dfrac14$ et $1$ ? On ne les devine pas, on
les calcule.

On commence par découper chacun des trois carrés de gauche en deux morceaux, un pour chaque
terme croisé où la lettre apparaît :
$$a^2 = \alpha a^2 + \alpha' a^2, \qquad 4b^2 = \beta b^2 + \beta' b^2,
\qquad 8c^2 = \gamma c^2 + \gamma' c^2 .$$

Puis on écrit ce que chaque paire doit vérifier. L'inégalité $\alpha a^2 + \beta b^2 \geq
3ab$ vient de $\left(\sqrt\alpha\, a - \sqrt\beta\, b\right)^2 \geq 0$, qui donne
$\alpha a^2 + \beta b^2 \geq 2\sqrt{\alpha\beta}\,ab$ : il faut donc
$2\sqrt{\alpha\beta} = 3$, soit $4\alpha\beta = 9$. De même $4\alpha'\gamma = 4$ pour le
terme $2ca$, et $4\beta'\gamma' = 16$ pour le terme $4bc$.

Le choix $\alpha = \dfrac34$, $\beta = 3$, $\alpha' = \dfrac14$, $\gamma = 4$,
$\beta' = 1$, $\gamma' = 4$ vérifie les trois conditions, ainsi que
$\beta + \beta' = 4$ et $\gamma + \gamma' = 8$.

Il y a une autre façon d'écrire la même chose, sans fractions : en multipliant tout par $4$,
$$4\left(a^2 + 4b^2 + 8c^2 - 3ab - 4bc - 2ca\right) = (2a - 3b - 2c)^2 + 7(b - 2c)^2 .$$
Deux carrés suffisent donc, au lieu de trois. Vérifie-le en développant.
