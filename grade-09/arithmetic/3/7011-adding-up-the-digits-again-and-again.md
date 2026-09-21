---
id: "7011"
title: "Additionner les chiffres, encore et encore"
grade: 9
theme: arithmetic
difficulty: 3
duration_min: 25
tags: [somme des chiffres, divisibilite par neuf, encadrement]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique junior de Cachan 2011, groupe des débutants"
  reference: "stage_junior_2011.pdf, « Arithmétique », TD (Antoine Taveneaux), exercice 10"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_junior_2011.pdf"
---

## Statement

On construit une suite de nombres. Le premier terme est
$$a_1 = 3^{2012} .$$
Chaque terme suivant est la **somme des chiffres** du terme précédent. Ainsi $a_2$ est la
somme des chiffres de $3^{2012}$, puis $a_3$ est la somme des chiffres de $a_2$, et ainsi de
suite.

Que vaut $a_{10}$ ?

## Hints

1. Un nombre et la somme de ses chiffres laissent le même reste dans la division par $9$.
   Pourquoi ?
2. $3^{2012}$ est-il un multiple de $9$ ? Que peut-on alors dire de tous les termes de la
   suite ?
3. $3^{2012}$ a beaucoup de chiffres, mais combien au maximum ? Majore alors $a_2$, puis
   $a_3$, puis $a_4$… La suite dégringole très vite.

## Solution

**Étape 1 : tous les termes sont des multiples de $9$.**

Écrivons un entier $n$ en base dix :
$$n = c_k 10^k + c_{k-1} 10^{k-1} + \cdots + c_1 \times 10 + c_0 .$$
Comme $10 \equiv 1 \pmod 9$, on a $10^i \equiv 1 \pmod 9$ pour tout $i$, donc
$$n \equiv c_k + c_{k-1} + \cdots + c_1 + c_0 \pmod 9 .$$
Autrement dit, **un nombre et la somme de ses chiffres ont le même reste modulo $9$.**

Or $3^{2012} = 9^{1006}$ est un multiple de $9$. Donc $a_2$ est un multiple de $9$, puis $a_3$
aussi, et ainsi de suite : **tous les termes de la suite sont des multiples de $9$.** En
particulier aucun n'est nul, puisque la somme des chiffres d'un entier strictement positif
l'est aussi.

**Étape 2 : la suite dégringole.**

Majorons d'abord $3^{2012}$ :
$$3^{2012} = 9^{1006} < 10^{1006} .$$
Donc $3^{2012}$ s'écrit avec au plus $1006$ chiffres. Chaque chiffre valant au plus $9$,
$$a_2 \leq 9 \times 1006 = 9054 .$$

Maintenant $a_2 \leq 9054 < 10000$ : c'est un nombre d'au plus $4$ chiffres, donc
$$a_3 \leq 9 \times 4 = 36 .$$

Puis $a_3 \leq 36$ : c'est un nombre d'au plus $2$ chiffres, donc
$$a_4 \leq 9 \times 2 = 18 .$$

Enfin $a_4 \leq 18$. Mais $a_4$ est un multiple de $9$ non nul, donc $a_4 = 9$ ou $a_4 = 18$.

- Si $a_4 = 9$, alors $a_5 = 9$.
- Si $a_4 = 18$, alors $a_5 = 1 + 8 = 9$.

Dans les deux cas $a_5 = 9$.

**Étape 3 : la suite se stabilise.**

La somme des chiffres de $9$ vaut $9$. Donc $a_6 = 9$, $a_7 = 9$, et ainsi de suite.

**Conclusion.** $a_{10} = \boxed{9}$.

## Going further

Le nombre auquel on aboutit en additionnant les chiffres jusqu'à n'obtenir qu'un seul chiffre
s'appelle la **racine numérique**. Le raisonnement ci-dessus montre qu'elle vaut toujours le
reste de $n$ modulo $9$, sauf quand ce reste est $0$, auquel cas elle vaut $9$.

Le calcul ne dépend donc pas du tout de $3^{2012}$ lui-même : n'importe quel multiple de $9$
aurait donné la même réponse.
