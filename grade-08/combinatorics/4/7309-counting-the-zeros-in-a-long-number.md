---
id: "7309"
title: "Combien de zéros dans 123456789101112…2007 ?"
grade: 8
theme: combinatorics
difficulty: 4
duration_min: 35
tags: [denombrement, chiffres, ecriture-decimale, cas]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Grésillon 2007"
  reference: "stage_ete_2007.pdf, « En TPE », exercice 75"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2007.pdf"
---

## Statement

On écrit à la suite, sans espace et sans virgule, tous les entiers de $1$ à $2007$ :

$$123456789101112131415161718192021 \ldots 20062007 .$$

Combien de fois le chiffre $0$ apparaît-il dans ce très long nombre ?

## Hints

1. N'essaie pas de compter dans le nombre entier. Compte plutôt, pour chaque entier de $1$ à $2007$, combien de zéros il contient, puis additionne.
2. Sépare les entiers selon leur nombre de chiffres : ceux de $1$ à $9$, ceux de $10$ à $99$, ceux de $100$ à $999$, ceux de $1000$ à $1999$, et enfin $2000$ à $2007$.
3. Pour les nombres à deux chiffres, le premier chiffre n'est jamais $0$. Il ne reste que le chiffre des unités à examiner.
4. Pour les nombres à trois chiffres, compte séparément les zéros au rang des dizaines et les zéros au rang des unités. Combien de nombres de $100$ à $999$ ont un $0$ aux dizaines ?
5. Pour les nombres de $1000$ à $1999$, le premier chiffre est toujours $1$. Chacun des trois autres rangs vaut $0$ dans exactement un dixième des cas.

## Solution

Comptons les zéros apportés par chaque tranche de nombres.

**Tranche 1 : les entiers de $1$ à $9$.**

Aucun d'eux ne contient de zéro. Total : aucun zéro.

**Tranche 2 : les entiers de $10$ à $99$.**

Un tel nombre s'écrit avec deux chiffres, et le premier n'est jamais $0$. Seul le chiffre des unités peut valoir $0$, ce qui arrive pour
$$10,\ 20,\ 30,\ 40,\ 50,\ 60,\ 70,\ 80,\ 90 ,$$
soit $9$ nombres, chacun apportant un zéro. Total : $9$ zéros.

**Tranche 3 : les entiers de $100$ à $999$.**

Un tel nombre s'écrit $\overline{abc}$ avec $a \neq 0$. Comptons les zéros rang par rang.

- *Zéros au rang des dizaines* ($b = 0$) : il y a $9$ choix pour $a$ (de $1$ à $9$) et $10$ choix pour $c$, soit $9 \times 10 = 90$ nombres.
- *Zéros au rang des unités* ($c = 0$) : de même, $9 \times 10 = 90$ nombres.

Un nombre comme $200$ est compté une fois dans chaque liste, ce qui est correct puisqu'il apporte bien deux zéros. Total : $90 + 90 = 180$ zéros.

**Tranche 4 : les entiers de $1000$ à $1999$.**

Un tel nombre s'écrit $\overline{1bcd}$, et il y en a $1000$. Le premier chiffre vaut toujours $1$, donc seuls $b$, $c$ et $d$ peuvent être nuls.

Pour le rang de $b$ : quand $b = 0$, il reste $10 \times 10 = 100$ choix pour $c$ et $d$. Il y a donc $100$ nombres avec $b = 0$. Même chose pour $c$, et même chose pour $d$.

Total : $100 + 100 + 100 = 300$ zéros.

**Tranche 5 : les entiers de $2000$ à $2007$.**

Écrivons-les : $2000, 2001, 2002, 2003, 2004, 2005, 2006, 2007$.

- $2000$ contient trois zéros.
- Chacun des sept autres contient deux zéros (ceux des centaines et des dizaines).

Total : $3 + 7 \times 2 = 3 + 14 = 17$ zéros.

**Le total.**

$$0 + 9 + 180 + 300 + 17 = 506 .$$

**Conclusion.** Le chiffre $0$ apparaît $\boxed{506}$ fois.

## Going further

1. Combien de chiffres ce long nombre compte-t-il en tout ?
2. Combien de fois le chiffre $1$ y apparaît-il ? (Attention, ce n'est pas la même méthode : le chiffre $1$ peut occuper le premier rang.)
3. Quel est le $2007$-ième chiffre de ce long nombre ?
