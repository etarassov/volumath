---
id: "7151"
title: "Quatre nombres dont la somme vaut quatre"
grade: 11
theme: algebra
difficulty: 3
duration_min: 25
tags: [inegalites, factorisation, moyenne arithmetique, cas d egalite]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique junior 2013-2016 (Cachan), stage 2013"
  reference: "stage_junior_2013.pdf, « Exercices d'échauffement », exercice 9 (repris en 2014, exercice 5)"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_junior_2013.pdf"
---

## Statement

Soient $a$, $b$, $c$, $d$ des nombres positifs ou nuls tels que

$$a + b + c + d = 4 .$$

Montrer que

$$ab + bc + cd + da \leqslant 4 .$$

## Hints

1. Ne cherche pas à majorer chaque terme séparément : la somme $ab + bc + cd + da$ se
   factorise.
2. Regarde les quatre termes dans l'ordre : $ab$, $bc$, $cd$, $da$. Mets $b$ en facteur dans
   les deux premiers, et $d$ dans les deux derniers.
3. Tu obtiens un produit de deux nombres dont tu connais la somme. Quel est le plus grand
   produit possible ?
4. Pour tous réels $u$ et $v$, que vaut $\left(\frac{u+v}{2}\right)^2 - uv$ ?

## Solution

**La factorisation.** Regroupons les quatre termes :

$$ab + bc + cd + da = b(a + c) + d(c + a) = (a + c)(b + d) .$$

**Ce que l'on sait de ces deux facteurs.** Posons $u = a + c$ et $v = b + d$. Ces deux
nombres sont positifs ou nuls, et

$$u + v = a + b + c + d = 4 .$$

**Le produit est majoré.** Pour tous réels $u$ et $v$,

$$\left(\frac{u+v}{2}\right)^2 - uv = \frac{u^2 + 2uv + v^2 - 4uv}{4} = \frac{(u-v)^2}{4} \geqslant 0 ,$$

donc

$$uv \leqslant \left(\frac{u+v}{2}\right)^2 = \left(\frac{4}{2}\right)^2 = 4 .$$

**Conclusion.**

$$ab + bc + cd + da = uv \leqslant 4 .$$

**Cas d'égalité.** L'inégalité est une égalité exactement lorsque $u = v$, c'est-à-dire
lorsque $a + c = b + d = 2$. Par exemple $a = b = c = d = 1$ convient, mais aussi
$a = 2$, $b = 2$, $c = 0$, $d = 0$ : on vérifie alors $ab + bc + cd + da = 4 + 0 + 0 + 0 = 4$.

## Going further

Le point clé est la factorisation $ab + bc + cd + da = (a+c)(b+d)$, qui n'est pas visible au
premier coup d'œil. Elle rend le problème beaucoup plus simple, puisqu'il ne reste plus que
deux nombres au lieu de quatre, et qu'on connaît leur somme.

Attention à l'ordre des termes : la somme $ab + bc + cd + da$ ne contient **pas** $ac$ ni
$bd$. Si on les ajoutait, on obtiendrait $ab+ac+ad+bc+bd+cd$, qui est une autre expression,
majorée par $6$ et non par $4$.

Une question pour continuer : le cas d'égalité n'est pas unique, on l'a vu. Décris toutes les
façons d'atteindre $4$.
