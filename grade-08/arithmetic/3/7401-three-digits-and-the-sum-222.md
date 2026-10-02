---
id: "7401"
title: "Trois chiffres et la somme des nombres qu'ils forment"
grade: 8
theme: arithmetic
difficulty: 3
duration_min: 20
tags: [numeration, chiffres, somme, algebre-litterale]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Grésillon 2011, chasse au trésor"
  reference: "stage_ete_2011.pdf, « Chasse au Trésor », exercices des débutants, exercice 1 (l'énoncé d'origine faisait d'abord résoudre une grille de sudoku pour obtenir les trois chiffres)"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2011.pdf"
---

## Statement

On choisit trois chiffres différents, tous compris entre $1$ et $9$. Par exemple $2$, $5$ et $7$.

Avec ces trois chiffres, on écrit tous les nombres de trois chiffres qui utilisent chacun d'eux
**une fois et une seule**. Avec $2$, $5$ et $7$, cela donne les six nombres
$$257, \quad 275, \quad 527, \quad 572, \quad 725, \quad 752.$$

On additionne ces six nombres, puis on divise le résultat par la somme des trois chiffres de
départ.

1. Fais le calcul avec $2$, $5$ et $7$.
2. Recommence avec trois autres chiffres de ton choix.
3. Que remarques-tu ? Démontre-le.

## Hints

1. Fais vraiment les deux calculs des questions 1 et 2 avant de chercher à démontrer quoi que ce
   soit. Le résultat est le même les deux fois : c'est lui qu'il faut expliquer.
2. Appelle $a$, $b$ et $c$ les trois chiffres. Combien y a-t-il de nombres au total ? Dans ces
   nombres, combien de fois le chiffre $a$ occupe-t-il la place des centaines ? celle des
   dizaines ? celle des unités ?
3. Un nombre de trois chiffres qui s'écrit $\overline{xyz}$ vaut $100x + 10y + z$. Additionne les
   six écritures de cette forme et regroupe les termes.

## Solution

**Le calcul avec $2$, $5$ et $7$.**

$$257 + 275 + 527 + 572 + 725 + 752 = 3108.$$

La somme des trois chiffres vaut $2 + 5 + 7 = 14$, et
$$3108 \div 14 = 222.$$

Si on recommence avec, disons, $1$, $3$ et $4$, on trouve
$$134 + 143 + 314 + 341 + 413 + 431 = 1776, \qquad 1 + 3 + 4 = 8, \qquad 1776 \div 8 = 222.$$

**On obtient $222$ à chaque fois.** Démontrons-le.

**La démonstration.**

Appelons $a$, $b$ et $c$ les trois chiffres choisis. Il y a six façons de les ranger, donc six
nombres. Écrivons-les tous les six :
$$\overline{abc}, \quad \overline{acb}, \quad \overline{bac}, \quad \overline{bca}, \quad
\overline{cab}, \quad \overline{cba}.$$

Regardons la place des centaines. Le chiffre $a$ y figure dans $\overline{abc}$ et
$\overline{acb}$, c'est-à-dire **deux fois**. Pour la même raison $b$ y figure deux fois et $c$
aussi : chacun des trois chiffres occupe la place des centaines exactement deux fois. Le même
raisonnement vaut pour la place des dizaines et pour celle des unités.

Comme $\overline{xyz} = 100x + 10y + z$, la somme des six nombres vaut donc
$$S = 100 \times 2(a+b+c) + 10 \times 2(a+b+c) + 1 \times 2(a+b+c).$$

On met $2(a+b+c)$ en facteur :
$$S = 2(a+b+c) \times (100 + 10 + 1) = 2(a+b+c) \times 111 = 222 \,(a+b+c).$$

**Conclusion.** En divisant $S$ par $a+b+c$, qui n'est pas nul, on obtient
$$\frac{S}{a+b+c} = 222,$$
et ce résultat ne dépend pas des trois chiffres choisis.

## Going further

Que devient le résultat si on autorise le chiffre $0$ parmi les trois ? Attention : un nombre de
trois chiffres ne commence pas par $0$, donc il n'y a plus six nombres mais seulement quatre.
