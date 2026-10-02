---
id: "12026"
title: "Anne, Bernard et le nombre 2013"
grade: 10
theme: combinatorics
difficulty: 4
duration_min: 40
tags: [principe-des-tiroirs, jeu, strategie-gagnante, restes, puissances-de-2, sous-ensembles]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, test d'entraînement de janvier 2013"
  reference: "2017-10_ofm-2012-2013-test-janvier.pdf, exercice 8 (sujet olympique) ; corrigé 2017-10_ofm-2012-2013-test-janvier-corrige.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2012-2013-test-janvier.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2017-10_ofm-2012-2013-test-janvier.pdf"
---

## Statement

Soit $n \geqslant 1$ un entier. Anne écrit au tableau $n$ entiers strictement positifs, tous différents. Bernard efface alors certains de ces nombres : il peut n'en effacer aucun, mais il ne doit pas les effacer tous. Devant chacun des nombres restants, il écrit un signe $+$ ou un signe $-$, puis il effectue le calcul obtenu.

Si le résultat est divisible par $2013$, c'est Bernard qui gagne. Sinon, c'est Anne.

Déterminer, selon la valeur de $n$, lequel des deux joueurs peut gagner à coup sûr.

## Hints

1. Le résultat de Bernard est toujours de la forme : (somme d'un groupe de nombres) moins (somme d'un autre groupe), les deux groupes n'ayant aucun nombre en commun.
2. Combien y a-t-il de façons de choisir un groupe (éventuellement vide) parmi les $n$ nombres d'Anne ? Comparez ce nombre à $2013$ quand $n = 11$, et pensez aux restes dans la division par $2013$.
3. Quand $n$ est petit, Anne doit choisir des nombres dont les combinaisons avec des $+$ et des $-$ ne valent jamais $0$ et restent petites. Essayez $1, 2, 4, 8, \ldots$

## Solution

**Réponse.** Si $n \leqslant 10$, Anne peut gagner à coup sûr. Si $n \geqslant 11$, c'est Bernard.

**Si $n \geqslant 11$, Bernard gagne.** Soient $x_1, \ldots, x_n$ les nombres écrits par Anne. Appelons *groupe* un ensemble de certains de ces nombres, éventuellement vide, et *somme du groupe* la somme de ses nombres (elle vaut $0$ pour le groupe vide).

Pour former un groupe, on décide pour chacun des $n$ nombres s'il en fait partie ou non : il y a donc $2^n$ groupes. Comme $n \geqslant 11$, il y en a au moins $2^{11} = 2048$, soit plus que $2013$. Or le reste d'une somme dans la division par $2013$ ne peut prendre que $2013$ valeurs, de $0$ à $2012$. D'après le principe des tiroirs, il existe donc deux groupes différents $X$ et $Y$ dont les sommes ont le même reste dans la division par $2013$. La différence de ces deux sommes est alors divisible par $2013$.

Dans cette différence, les nombres qui sont à la fois dans $X$ et dans $Y$ s'en vont. Il reste

$$(\text{somme de } X) - (\text{somme de } Y) = (\text{somme des nombres de } X \text{ qui ne sont pas dans } Y) - (\text{somme des nombres de } Y \text{ qui ne sont pas dans } X) .$$

Bernard joue donc ainsi : il garde les nombres qui sont dans un seul des deux groupes, il écrit $+$ devant ceux de $X$ et $-$ devant ceux de $Y$, et il efface tous les autres. Il garde au moins un nombre, car $X$ et $Y$ sont différents. Le résultat est la différence ci-dessus, divisible par $2013$ : Bernard gagne.

**Si $n \leqslant 10$, Anne gagne.** Anne écrit les nombres $1, 2, 4, \ldots, 2^{n-1}$. Quoi que fasse Bernard, son résultat s'écrit $A - B$, où $A$ est la somme des nombres précédés d'un $+$ et $B$ la somme des nombres précédés d'un $-$. Ces deux groupes de puissances de $2$ n'ont aucun nombre en commun, et ils ne sont pas vides tous les deux.

- *Le résultat n'est pas nul.* Parmi les nombres que Bernard a gardés, prenons le plus grand, $2^a$. Disons qu'il est précédé d'un $+$ (l'autre cas est pareil). Alors $A \geqslant 2^a$. Les nombres du groupe des $-$ sont des puissances de $2$ différentes, toutes plus petites que $2^a$, donc
$$B \leqslant 1 + 2 + 4 + \cdots + 2^{a-1} = 2^a - 1 < 2^a \leqslant A .$$
(La somme $1 + 2 + \cdots + 2^{a-1}$ vaut $2^a - 1$ : en lui ajoutant $1$, on obtient $2 + 2 + 4 + \cdots$, puis $4 + 4 + \cdots$, et ainsi de suite jusqu'à $2^a$.) Donc $A \neq B$.
- *Le résultat est petit.* $A$ et $B$ sont compris entre $0$ et $1 + 2 + \cdots + 2^{n-1} = 2^n - 1 \leqslant 2^{10} - 1 = 1023$. Donc $A - B$ est compris entre $-1023$ et $1023$.

Un entier non nul compris entre $-1023$ et $1023$ n'est pas divisible par $2013$, car les multiples de $2013$ dans cet intervalle se réduisent à $0$. Bernard ne peut donc pas gagner.

**Conclusion.** Anne a une stratégie gagnante quand $n \leqslant 10$, et Bernard quand $n \geqslant 11$.

## Going further

Le nombre $2013$ ne joue presque aucun rôle : il compte seulement parce que $2^{10} = 1024 \leqslant 2013 < 2048 = 2^{11}$. La même démonstration marche pour n'importe quel entier $N \geqslant 2$ à la place de $2013$ : Anne gagne quand $2^n \leqslant N$, et Bernard quand $2^n > N$. Par exemple avec $N = 1000$, Anne gagne jusqu'à $n = 9$ et Bernard à partir de $n = 10$.
