---
id: "11010"
title: "Un ensemble stable par ab + 1"
grade: 12
theme: arithmetic
difficulty: 4
duration_min: 50
tags: [maths-expertes, congruences, nombres-premiers, bijection, restes]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2019-2020 n° 3 (arithmétique)"
  reference: "2020-01_sujet-envoi-3.pdf, Exercices Seniors, exercice 17 ; corrigé 2020-02_corrige-commente-envoi-3.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2020/01/sujet-envoi-3.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2020-01_sujet-envoi-3.pdf"
---

## Statement

Soit $S$ un ensemble non vide d'entiers strictement positifs, qui vérifie la propriété suivante : pour
tous $a$ et $b$ dans $S$ (pas forcément distincts), l'entier $ab + 1$ appartient aussi à $S$.

Montrer qu'il n'y a qu'un nombre fini de nombres premiers qui ne divisent aucun élément de $S$.

## Hints

1. Fixe un nombre premier $p$ qui ne divise aucun élément de $S$, et regarde l'ensemble $R$ des restes modulo $p$ des éléments de $S$. Le reste $0$ n'en fait pas partie.
2. Fixe $r \in R$. Montre que $s \mapsto rs + 1$ (calculé modulo $p$) envoie $R$ dans $R$ et ne prend jamais deux fois la même valeur.
3. Il « mélange » donc $R$ sans rien perdre. Compare la somme des éléments de $R$ avant et après.
4. Tu dois trouver que $R$ n'a qu'un seul élément $r$. Que dit alors $r \cdot r + 1$ ?

## Solution

Soit $p$ un nombre premier qui ne divise aucun élément de $S$. On va montrer que $p$ est petit : plus
précisément, si $s_0$ est un élément quelconque de $S$, fixé une fois pour toutes, alors
$p \leqslant s_0^2 - s_0 + 1$. Il n'y a qu'un nombre fini de nombres premiers inférieurs à cette borne,
ce qui prouvera le résultat.

**L'ensemble des restes.** Soit $R$ l'ensemble des restes modulo $p$ des éléments de $S$. Il n'est pas
vide, il ne contient pas $0$, et il a $k$ éléments, avec $1 \leqslant k \leqslant p - 1$. Si $r$ et $s$ sont
dans $R$, il existe $a, b \in S$ avec $a \equiv r$ et $b \equiv s \pmod p$, et $ab + 1 \in S$ a pour reste celui
de $rs + 1$ : **le reste de $rs + 1$ est dans $R$.**

**Une permutation de $R$.** Fixons $r \in R$ et considérons l'application qui à $s \in R$ associe le reste
de $rs + 1$ modulo $p$. Elle envoie $R$ dans $R$. Elle ne prend pas deux fois la même valeur : si
$rs + 1 \equiv rs' + 1 \pmod p$, alors $p$ divise $r(s - s')$ ; comme $p$ ne divise pas $r$, le lemme
d'Euclide donne $p \mid s - s'$, donc $s = s'$ (deux restes distincts diffèrent de moins de $p$).

Une application d'un ensemble fini dans lui-même qui ne prend jamais deux fois la même valeur atteint
tous les éléments. Les restes de $rs + 1$, pour $s \in R$, sont donc exactement les éléments de $R$, une
fois chacun.

**On compare les sommes.** Notons $\Sigma$ la somme des éléments de $R$. En sommant les deux listes
(qui contiennent les mêmes éléments), on obtient
$$\Sigma \equiv \sum_{s \in R} (rs + 1) = r\,\Sigma + k \pmod p , \qquad \text{donc} \qquad (1 - r)\,\Sigma \equiv k \pmod p .$$

- Si $p$ divisait $\Sigma$, on aurait $k \equiv 0 \pmod p$, impossible car $1 \leqslant k \leqslant p - 1$.
- Donc $p$ ne divise pas $\Sigma$. Si $r$ et $r'$ sont deux éléments de $R$, on a $(1 - r)\Sigma \equiv k \equiv (1 - r')\Sigma$,
  donc $p$ divise $(r' - r)\,\Sigma$, et par le lemme d'Euclide $p$ divise $r' - r$, d'où $r = r'$.

**$R$ a un seul élément.** Tous les éléments de $S$ ont donc le même reste $r$ modulo $p$. Comme
$r \cdot r + 1$ a aussi un reste dans $R$, on a $r^2 + 1 \equiv r$, c'est-à-dire $p \mid r^2 - r + 1$.
Comme $s_0 \equiv r \pmod p$, on a aussi $s_0^2 - s_0 + 1 \equiv r^2 - r + 1 \equiv 0$ : $p$ divise
$s_0^2 - s_0 + 1$. Ce nombre vaut au moins $1$ (car $s_0^2 \geqslant s_0$), donc
$$p \leqslant s_0^2 - s_0 + 1 .$$

**Conclusion.** Tout nombre premier qui ne divise aucun élément de $S$ est au plus égal à
$s_0^2 - s_0 + 1$. Il n'y en a donc qu'un nombre fini.
