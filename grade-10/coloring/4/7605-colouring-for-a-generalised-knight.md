---
id: "7605"
title: "Un coloriage pour le cavalier (m, n)"
grade: 10
theme: coloring
difficulty: 4
duration_min: 45
tags: [coloriage, parite, pgcd, echiquier, cavalier]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Montpellier 2013, test de sélection"
  reference: "stage_ete_2013.pdf, chapitre XII « Test de sélection du 4 juin 2013 », exercice 5 (la pièce y est appelée « condylure »)"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2013.pdf"
---

## Statement

On joue sur un damier **infini dans les quatre directions** : il a une infinité de lignes vers le haut et vers le bas, une infinité de colonnes vers la gauche et vers la droite. Au départ, aucune case n'est coloriée.

Soient $m$ et $n$ deux entiers strictement positifs. Une pièce appelée **cavalier $(m, n)$** se déplace ainsi : à chaque coup, elle avance de $m$ cases dans une direction (horizontale ou verticale), puis de $n$ cases dans la direction perpendiculaire. Le cavalier des échecs est donc le cavalier $(2, 1)$.

Pour quelles valeurs de $m$ et de $n$ peut-on colorier les cases du damier en bleu et en rouge de façon qu'**à chaque coup, le cavalier $(m, n)$ change de couleur de case** ?

## Hints

1. Le damier n'est pas colorié au départ : c'est à vous de choisir le coloriage, et il n'est pas obligé de ressembler à un échiquier.
2. Commencez par le vrai cavalier des échecs, le cavalier $(2,1)$, sur un échiquier ordinaire. Pourquoi change-t-il de couleur à chaque coup ?
3. Sur un échiquier ordinaire, on change de couleur exactement quand la somme (déplacement horizontal) $+$ (déplacement vertical) est impaire. Quand cette somme $m + n$ est-elle impaire ?
4. Si $m$ et $n$ sont tous les deux impairs, l'échiquier ne marche plus. Mais alors le déplacement vertical est toujours impair : essayez un coloriage en bandes horizontales.
5. Si $m$ et $n$ sont tous les deux pairs, ramenez-vous aux cas précédents en coloriant par gros blocs carrés au lieu de cases isolées.

## Solution

**Réponse : c'est possible pour toutes les valeurs de $m$ et de $n$.**

Repérons chaque case par un couple d'entiers $(x\,;y)$ : $x$ est le numéro de sa colonne, $y$ celui de sa ligne. Un coup du cavalier $(m,n)$ transforme $(x\,;y)$ soit en $(x \pm m\,;y \pm n)$, soit en $(x \pm n\,;y \pm m)$.

Trois cas, selon les parités de $m$ et de $n$.

**Cas 1 : $m$ et $n$ n'ont pas la même parité.**

On colorie le damier comme un échiquier : la case $(x\,;y)$ est bleue si $x + y$ est pair, rouge si $x + y$ est impair.

Après un coup, la somme $x + y$ a changé de $\pm m \pm n$. Or $m + n$ est impair (une somme d'un pair et d'un impair), et changer un signe ne change pas la parité, car $-m$ et $m$ ont la même parité. Donc $x+y$ change de parité à chaque coup : le cavalier change bien de couleur.

Le cavalier des échecs, qui est le cavalier $(2,1)$, est exactement ce cas : c'est la raison bien connue pour laquelle il change de couleur à chaque saut.

**Cas 2 : $m$ et $n$ sont tous les deux impairs.**

L'échiquier ne convient plus : $m + n$ est pair. Mais remarquons ceci : quel que soit le coup joué, le déplacement vertical vaut $\pm m$ ou $\pm n$, donc il est **impair** dans tous les cas.

On colorie alors le damier en **bandes horizontales** : la case $(x\,;y)$ est bleue si $y$ est pair, rouge si $y$ est impair. Le numéro de ligne change de parité à chaque coup, donc la couleur change à chaque coup.

**Cas 3 : $m$ et $n$ sont tous les deux pairs.**

Notons $2^k$ la plus grande puissance de $2$ qui divise à la fois $m$ et $n$ ; ici $k \geqslant 1$. Écrivons

$$m = 2^k m_1 \qquad \text{et} \qquad n = 2^k n_1 .$$

Par le choix de $k$, les entiers $m_1$ et $n_1$ ne sont pas tous les deux pairs : ils relèvent donc du cas 1 ou du cas 2.

Découpons maintenant le damier en **blocs carrés de $2^k$ cases de côté**, comme un damier de damiers. Un bloc est lui aussi repéré par un couple d'entiers $(X\,;Y)$, et la case $(x\,;y)$ appartient au bloc

$$X = \left\lfloor \frac{x}{2^k} \right\rfloor, \qquad Y = \left\lfloor \frac{y}{2^k} \right\rfloor .$$

Un coup déplace la case de $\pm m = \pm 2^k m_1$ horizontalement et de $\pm n = \pm 2^k n_1$ verticalement : le numéro de bloc, lui, se déplace exactement de $\pm m_1$ et de $\pm n_1$. Autrement dit, **le bloc se comporte comme un cavalier $(m_1, n_1)$ sur le damier des blocs**.

Il suffit donc de colorier tous les blocs par la recette du cas 1 ou du cas 2 appliquée à $(m_1, n_1)$, puis de donner à chaque case la couleur de son bloc. À chaque coup, le cavalier change de bloc et le bloc change de couleur, donc la case change de couleur.

**Conclusion.** Dans les trois cas on a construit un coloriage qui convient. Il est donc possible de colorier le damier pour **toutes** les valeurs de $m$ et de $n$.

## Going further

Les trois coloriages obtenus sont, respectivement : l'échiquier ordinaire, des bandes horizontales de hauteur $1$, et, dans le troisième cas, un échiquier ou des bandes dont le motif de base est un carré de $2^k$ cases de côté. Le cavalier $(4, 6)$, par exemple, a $2^k = 2$ et $(m_1, n_1) = (2,3)$, donc son coloriage est un échiquier dont chaque « case » est un carré $2 \times 2$.

Une question qui va plus loin : le coloriage est-il unique ? Autrement dit, pour un couple $(m, n)$ donné, existe-t-il d'autres coloriages en deux couleurs qui conviennent ?
