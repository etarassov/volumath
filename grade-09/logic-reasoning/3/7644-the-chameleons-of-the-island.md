---
id: "7644"
title: "Les caméléons de l'île"
grade: 9
theme: logic-reasoning
difficulty: 3
duration_min: 30
tags: [invariant, modulo 3, couleurs, differences]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Montpellier 2013, cours de stratégies de base du groupe A"
  reference: "stage_ete_2013.pdf, chapitre II, groupe A, « Cours de stratégies de base » (Pierre Bertin), exercice 12 ; variante avec d'autres effectifs au groupe B, exercice 7"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2013.pdf"
---

## Statement

Sur une île vivent $34$ caméléons : $7$ jaunes, $10$ verts et $17$ rouges.

Lorsque deux caméléons de couleurs **différentes** se rencontrent, ils prennent tous les deux la **troisième** couleur. Par exemple, si un jaune rencontre un vert, tous deux deviennent rouges.

Lorsque deux caméléons de la **même** couleur se rencontrent, il ne se passe rien.

Un an plus tard, tous les caméléons de l'île sont de la même couleur.

Laquelle ? Démontrer que c'est la seule possible.

## Hints

1. Une rencontre modifie les trois effectifs. Écrivez précisément comment : si un jaune et un vert se rencontrent, combien perd-on de jaunes, de verts, et combien gagne-t-on de rouges ?
2. Cherchez une quantité qui varie peu. Essayez la **différence** entre deux effectifs, par exemple (nombre de rouges) $-$ (nombre de verts).
3. Vérifiez que cette différence varie toujours de $0$, de $+3$ ou de $-3$. Que conserve-t-elle donc ?
4. Si tous les caméléons finissaient verts, que vaudrait cette différence ? Et au départ ?
5. Une fois les couleurs impossibles éliminées, il reste à montrer que la couleur restante est bien atteignable : construisez une suite de rencontres.

## Solution

Notons $j$, $v$ et $r$ les nombres de caméléons jaunes, verts et rouges. Au départ

$$j = 7, \qquad v = 10, \qquad r = 17 .$$

**L'invariant : les différences modulo $3$.**

Considérons la quantité $r - v$, et regardons comment elle varie à chaque rencontre.

| Rencontre | Effet sur $(j, v, r)$ | Effet sur $r - v$ |
|---|---|---|
| jaune $+$ vert | $j - 1$, $v - 1$, $r + 2$ | $+3$ |
| jaune $+$ rouge | $j - 1$, $v + 2$, $r - 1$ | $-3$ |
| vert $+$ rouge | $j + 2$, $v - 1$, $r - 1$ | $0$ |

Dans tous les cas, $r - v$ varie de $-3$, de $0$ ou de $+3$ :

> **Le reste de $r - v$ dans la division par $3$ ne change jamais.**

Le même raisonnement vaut pour $v - j$ et pour $j - r$.

**Éliminons les couleurs impossibles.**

Au départ, $r - v = 17 - 10 = 7$, et $7 = 3 \times 2 + 1$ : le reste est $1$.

- *Tous verts ?* Alors $r = 0$ et $v = 34$, donc $r - v = -34$. Or $-34 = 3 \times (-12) + 2$ : le reste est $2$, et non $1$. **Impossible.**
- *Tous jaunes ?* Alors $r = v = 0$, donc $r - v = 0$, de reste $0$. **Impossible.**

Il ne reste qu'une possibilité : **tous les caméléons sont rouges.**

**Vérifions que c'est réalisable.**

L'invariant ne fait qu'interdire ; il faut encore montrer que le cas restant peut vraiment se produire.

Partons de $(j, v, r) = (7, 10, 17)$. Faisons se rencontrer $7$ fois un jaune et un vert : chaque rencontre fait $-1$ jaune, $-1$ vert, $+2$ rouges. Au bout de $7$ rencontres :

$$(0,\ 3,\ 31) .$$

Il n'y a plus de jaunes. Faisons maintenant se rencontrer un vert et un rouge : on obtient $(2, 2, 30)$. Puis deux fois « jaune $+$ vert » : $(1, 1, 32)$, puis $(0, 0, 34)$.

Tous les caméléons sont rouges. ✔

**Conclusion.** Tous les caméléons sont devenus **rouges**, et c'était la seule couleur possible.

## Going further

Pourquoi le nombre $3$ apparaît-il ? Parce qu'à chaque rencontre, deux effectifs baissent de $1$ et le troisième monte de $2$ : une différence entre deux effectifs varie donc de $0$ ou de $\pm 3$, jamais autrement.

On peut dire la même chose autrement : les trois effectifs $j$, $v$, $r$ gardent des restes fixes modulo $3$, à permutation près. Ici $7$, $10$ et $17$ ont pour restes $1$, $1$ et $2$. Pour que tous les caméléons finissent d'une même couleur, il faut que deux des trois effectifs tombent à $0$ : leurs restes doivent donc être égaux au départ. Ce sont $j = 7$ et $v = 10$, tous deux de reste $1$ — et c'est bien la couleur restante, le rouge, qui l'emporte.

Question pour continuer : avec $(13, 15, 17)$ caméléons, peut-on arriver à une seule couleur ?
