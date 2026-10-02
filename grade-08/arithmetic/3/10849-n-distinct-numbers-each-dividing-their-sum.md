---
id: "10849"
title: "n nombres dont chacun divise leur somme"
grade: 8
theme: arithmetic
difficulty: 3
duration_min: 20
tags: [divisibilite, construction, puissances-de-deux, diviseurs]
adapted_from: null
see_also: ["7864"]
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2018-2019 n° 2 (arithmétique)"
  reference: "2018-11_envoi-2.pdf, Exercices Communs, exercice 4 ; corrigé 2018-12_corrige-envoi-2.pdf (le corrigé passe par les fractions égyptiennes ; la construction ci-dessous est plus directe. Il recopie aussi l'énoncé avec « n strictement positif » au lieu de n ⩾ 3, ce qui est faux pour n = 2)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2018/11/envoi-2.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2018-11_envoi-2.pdf"
---

## Statement

Soit $n \geqslant 3$ un entier.

Montrer qu'il existe $n$ entiers strictement positifs, **tous différents**, tels que chacun d'eux divise leur somme.

*Par exemple, pour $n = 3$, les nombres $1$, $2$ et $3$ conviennent : leur somme vaut $6$, et $1$, $2$ et $3$ divisent $6$.*

## Hints

1. Pour $n = 4$, cherche un quatrième nombre à ajouter à $1$, $2$, $3$.
2. Que devient la somme si le nombre que tu ajoutes est égal à la somme des nombres que tu as déjà ?
3. Recommence : écris la liste obtenue pour $n = 5$, puis pour $n = 6$, et calcule chaque fois la somme.

## Solution

### La construction

On part de $1$, $2$, $3$, puis on ajoute à chaque fois **un nombre égal à la somme de tous les nombres déjà écrits** :

| nombres choisis | somme |
|---|---|
| $1,\ 2,\ 3$ | $6$ |
| $1,\ 2,\ 3,\ 6$ | $12$ |
| $1,\ 2,\ 3,\ 6,\ 12$ | $24$ |
| $1,\ 2,\ 3,\ 6,\ 12,\ 24$ | $48$ |

Quand on ajoute un nombre égal à la somme $S$ des précédents, la nouvelle somme vaut $S + S = 2S$ : **la somme double à chaque étape.**

Pour $n$ nombres, on obtient donc la liste
$$1,\ 2,\ 3,\ 6,\ 12,\ 24,\ \ldots,\ 3 \times 2^{n-3},$$
et leur somme vaut $6 \times 2^{n-3} = 3 \times 2^{n-2}$ (on part de $6$ et on double $n - 3$ fois).

### Les nombres sont tous différents

Chaque nombre ajouté est égal à la somme des précédents, donc plus grand que chacun d'eux. La liste est rangée dans l'ordre croissant, sans répétition.

### Chaque nombre divise la somme

Notons $S = 3 \times 2^{n-2}$ la somme totale.

- Les nombres $1$, $2$ et $3$ divisent $6$, et $6$ divise $S = 6 \times 2^{n-3}$. Donc $1$, $2$ et $3$ divisent $S$.
- Chacun des autres nombres est égal à la somme des nombres écrits avant lui. Or, d'une étape à la suivante, la somme double. Chacune des sommes intermédiaires $6, 12, 24, \ldots$ divise donc toutes celles qui viennent après, et en particulier la somme finale $S$.

**Les $n$ nombres $1, 2, 3, 6, 12, \ldots, 3 \times 2^{n-3}$ sont tous différents, et chacun divise leur somme $3 \times 2^{n-2}$.**

## Going further

1. Montre que c'est impossible pour $n = 2$ : si deux entiers positifs différents divisent chacun leur somme, que se passe-t-il ?
2. Une autre méthode. On a
   $$\frac{1}{2} + \frac{1}{3} + \frac{1}{6} = 1 .$$
   Multiplie cette égalité par $6$ : que retrouves-tu ? Plus généralement, soient $a_1, \ldots, a_n$ des entiers différents tels que
   $$\frac{1}{a_1} + \frac{1}{a_2} + \cdots + \frac{1}{a_n} = 1 ,$$
   et $N$ un multiple commun de tous les $a_i$. Montre que les nombres $N / a_1, \ldots, N / a_n$ conviennent.
3. Pour $n = 7$, la liste ci-dessus a pour somme $96$. Peut-on trouver sept nombres qui conviennent avec une somme plus petite ?
