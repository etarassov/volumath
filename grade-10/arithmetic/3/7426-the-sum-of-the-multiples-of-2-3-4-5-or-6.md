---
id: "7426"
title: "La somme des multiples de 2, 3, 4, 5 ou 6"
grade: 10
theme: arithmetic
difficulty: 3
duration_min: 30
tags: [inclusion-exclusion, multiples, somme-des-entiers, ppcm]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Grésillon 2011, chasse au trésor"
  reference: "stage_ete_2011.pdf, « Chasse au Trésor », exercices des débutants, exercice 2"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2011.pdf"
---

## Statement

Calculer la somme de tous les entiers compris entre $1$ et $1000$ (bornes comprises) qui sont
multiples de $2$, ou de $3$, ou de $4$, ou de $5$, ou de $6$.

Attention au sens du « ou » : un nombre comme $12$, qui est multiple de plusieurs de ces nombres
à la fois, doit être compté **une seule fois**.

## Hints

1. Commence par simplifier la liste. Un multiple de $4$ est aussi un multiple de $2$, et un
   multiple de $6$ est aussi un multiple de $2$. Que reste-t-il vraiment à considérer ?
2. Si $S_d$ désigne la somme des multiples de $d$ compris entre $1$ et $1000$, on a
   $$S_d = d + 2d + 3d + \dots = d\,(1 + 2 + \dots + k),$$
   où $k$ est le nombre de multiples de $d$ inférieurs ou égaux à $1000$.
3. Pour ne compter chaque nombre qu'une fois, utilise le principe d'inclusion-exclusion sur les
   trois ensembles « multiples de $2$ », « multiples de $3$ », « multiples de $5$ ». Les
   intersections font apparaître les multiples de $6$, de $10$, de $15$ et de $30$.

## Solution

**On simplifie la liste.**

Tout multiple de $4$ est un multiple de $2$, et tout multiple de $6$ est un multiple de $2$. Les
conditions « multiple de $4$ » et « multiple de $6$ » n'apportent donc aucun nombre nouveau.

Il s'agit donc de sommer les entiers de $1$ à $1000$ qui sont multiples de $2$, de $3$ ou de $5$.

**Une formule pour les multiples d'un nombre $d$.**

Notons $S_d$ la somme des multiples de $d$ compris entre $1$ et $1000$, et $k_d$ le nombre de ces
multiples, c'est-à-dire la partie entière de $\dfrac{1000}{d}$. Alors
$$S_d = d + 2d + \dots + k_d\,d = d\,\bigl(1 + 2 + \dots + k_d\bigr) = d \cdot \frac{k_d (k_d+1)}{2}.$$

Calculons ce dont nous avons besoin.

| $d$ | $k_d$ | $S_d = d \cdot \dfrac{k_d(k_d+1)}{2}$ |
|---|---|---|
| $2$ | $500$ | $2 \cdot \frac{500 \times 501}{2} = 250\,500$ |
| $3$ | $333$ | $3 \cdot \frac{333 \times 334}{2} = 166\,833$ |
| $5$ | $200$ | $5 \cdot \frac{200 \times 201}{2} = 100\,500$ |
| $6$ | $166$ | $6 \cdot \frac{166 \times 167}{2} = 83\,166$ |
| $10$ | $100$ | $10 \cdot \frac{100 \times 101}{2} = 50\,500$ |
| $15$ | $66$ | $15 \cdot \frac{66 \times 67}{2} = 33\,165$ |
| $30$ | $33$ | $30 \cdot \frac{33 \times 34}{2} = 16\,830$ |

**Le principe d'inclusion-exclusion.**

Un entier est à la fois multiple de $2$ et de $3$ exactement lorsqu'il est multiple de $6$ ; à la
fois multiple de $2$ et de $5$ lorsqu'il est multiple de $10$ ; à la fois multiple de $3$ et de
$5$ lorsqu'il est multiple de $15$ ; et multiple des trois lorsqu'il est multiple de $30$.

La somme cherchée vaut donc
$$S = S_2 + S_3 + S_5 - S_6 - S_{10} - S_{15} + S_{30}.$$

*Pourquoi ces signes ?* Un nombre multiple d'exactement un des trois nombres $2$, $3$, $5$ est
compté une fois dans les trois premiers termes, et n'apparaît nulle part ailleurs. Un nombre
multiple d'exactement deux d'entre eux est compté deux fois, puis retranché une fois : il compte
bien pour une fois. Un nombre multiple des trois est compté trois fois, retranché trois fois, puis
rajouté une fois : il compte lui aussi pour une fois.

**Le calcul.**
$$S = 250\,500 + 166\,833 + 100\,500 - 83\,166 - 50\,500 - 33\,165 + 16\,830.$$

Additionnons les termes positifs :
$$250\,500 + 166\,833 + 100\,500 + 16\,830 = 534\,663.$$

Additionnons les termes négatifs :
$$83\,166 + 50\,500 + 33\,165 = 166\,831.$$

Donc
$$S = 534\,663 - 166\,831 = 367\,832.$$

**Conclusion : la somme cherchée vaut $\boxed{367\,832}$.**

## Going further

Calculer de même la somme des entiers de $1$ à $1000$ qui ne sont multiples **d'aucun** des
nombres $2$, $3$ et $5$. (Un raccourci : la somme de tous les entiers de $1$ à $1000$ vaut
$500\,500$.)
