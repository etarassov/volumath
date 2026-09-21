---
id: "7217"
title: "Les trente-quatre caméléons"
grade: 9
theme: logic-reasoning
difficulty: 4
duration_min: 35
tags: [invariant, modulo, couleurs, difference]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique junior de Cachan 2017"
  reference: "Poly-CJ-17.pdf, « Débutants », jeudi 26 matin (Yohann d'Anello), invariants, exercice 8 (repris dans Poly_final_CJ18.pdf, jeudi 25 matin, Vincent Jugé, exercice 13)"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly-CJ-17.pdf"
---

## Statement

Sur une île déserte vivent $34$ caméléons : $7$ jaunes, $10$ rouges et $17$ verts.

Quand deux caméléons de couleurs différentes se rencontrent, ils prennent tous les deux la
troisième couleur. Quand deux caméléons de la même couleur se rencontrent, il ne se passe rien.

Au bout d'un an, tous les caméléons de l'île sont de la même couleur.

Laquelle ? Il faut déterminer cette couleur **et** montrer que c'est la seule possible.

## Hints

1. Note $j$, $r$, $v$ les nombres de caméléons jaunes, rouges et verts. Écris ce que devient le
   triplet $(j, r, v)$ après chacune des trois sortes de rencontres.
2. Chacun des trois nombres change de $-1$, $-1$ et $+2$. Regarde ce que deviennent les
   différences $r - j$, $j - v$ et $v - r$.
3. Ces différences varient de $0$, $3$ ou $-3$. Que peux-tu dire de leur reste dans la division
   par $3$ ?
4. À la fin, deux des trois nombres valent $0$. Que valent alors les différences ?

## Solution

Notons $(j, r, v)$ le nombre de caméléons jaunes, rouges et verts. Au départ
$$(j, r, v) = (7, 10, 17) .$$

**Les trois rencontres possibles.**

- Un jaune et un rouge deviennent verts : $(j, r, v) \to (j-1,\ r-1,\ v+2)$.
- Un jaune et un vert deviennent rouges : $(j, r, v) \to (j-1,\ r+2,\ v-1)$.
- Un rouge et un vert deviennent jaunes : $(j, r, v) \to (j+2,\ r-1,\ v-1)$.

**L'invariant.**

Regardons la différence $r - j$ dans chacun des trois cas :

- premier cas : $(r-1) - (j-1) = r - j$, elle ne change pas ;
- deuxième cas : $(r+2) - (j-1) = r - j + 3$, elle augmente de $3$ ;
- troisième cas : $(r-1) - (j+2) = r - j - 3$, elle diminue de $3$.

Dans tous les cas, $r - j$ varie de $0$, de $+3$ ou de $-3$ : **son reste dans la division par $3$
ne change jamais.**

Le même calcul vaut pour $j - v$ et pour $v - r$.

**Les valeurs de départ.**

$$r - j = 10 - 7 = 3, \qquad j - v = 7 - 17 = -10, \qquad v - r = 17 - 10 = 7 .$$

Modulo $3$ :
$$r - j \equiv 0, \qquad j - v \equiv -10 \equiv 2, \qquad v - r \equiv 7 \equiv 1 \pmod 3 .$$

Ces trois restes, $0$, $2$ et $1$, resteront les mêmes jusqu'à la fin.

**La situation finale.**

Tous les caméléons sont de la même couleur : deux des trois nombres valent $0$ et le troisième
vaut $34$. Il y a trois possibilités.

- **Tous jaunes** : $(34, 0, 0)$. Alors $r - j = -34$. Or $-34 = -36 + 2$, donc
  $r - j \equiv 2 \pmod 3$, alors qu'il devrait valoir $0$. Impossible.
- **Tous rouges** : $(0, 34, 0)$. Alors $j - v = 0$, alors qu'il devrait valoir $2$ modulo $3$.
  Impossible.
- **Tous verts** : $(0, 0, 34)$. Alors $r - j = 0 \equiv 0$ ; $j - v = -34 \equiv 2$ ;
  $v - r = 34 \equiv 1$ (car $34 = 33 + 1$). Les trois restes sont les bons. Rien n'interdit ce
  cas.

**Conclusion.**

Les deux premières couleurs sont impossibles. Comme l'énoncé nous assure que tous les caméléons
finissent de la même couleur, cette couleur ne peut être que le **vert**.

## Going further

Attention à ce que la preuve démontre exactement : elle dit que **si** tous les caméléons
deviennent d'une même couleur, **alors** cette couleur est le vert. Elle ne démontre pas que cela
arrive : c'est l'énoncé qui nous le garantit.

Vérifions tout de même que c'est faisable. Faisons se rencontrer $7$ fois un jaune et un rouge :
on passe de $(7, 10, 17)$ à $(0, 3, 31)$. Puis faisons se rencontrer... il ne reste que des rouges
et des verts, dont la rencontre donne des jaunes. Après une rencontre : $(2, 2, 30)$. Puis deux
rencontres jaune-rouge : $(0, 0, 34)$. Tous verts, en effet.
