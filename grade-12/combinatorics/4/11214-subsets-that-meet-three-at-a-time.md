---
id: "11214"
title: "Des parties qui se rencontrent trois par trois"
grade: 12
theme: combinatorics
difficulty: 4
duration_min: 40
tags: [ensembles, parties, complementaire, intersection, denombrement]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2013-2014 n° 2 (combinatoire)"
  reference: "2017-10_ofm-2013-2014-envoi-2.pdf, Exercices du groupe A, exercice 9 (le nombre de parties est 2^(n−1) : pdftotext l'imprime « 2 n−1 ») ; corrigé 2017-10_ofm-2013-2014-envoi-2-solutions.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2013-2014-envoi-2.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2017-10_ofm-2013-2014-envoi-2.pdf"
---

## Statement

Soit $E$ un ensemble à $n$ éléments, avec $n \geqslant 1$. On choisit une famille $\mathcal{F}$
de parties de $E$, formée d'exactement $2^{n-1}$ parties différentes. On suppose que, pour trois
parties $A$, $B$, $C$ de la famille $\mathcal{F}$, pas forcément distinctes, on a toujours
$$A \cap B \cap C \neq \varnothing .$$

Montrer que l'intersection de toutes les parties de la famille $\mathcal{F}$ n'est pas vide :
il existe un élément de $E$ qui appartient à toutes les parties de $\mathcal{F}$.

## Hints

1. Une partie $A$ et son complémentaire $\overline{A}$ peuvent-ils être tous les deux dans
   $\mathcal{F}$ ? L'ensemble vide peut-il être dans $\mathcal{F}$ ?
2. Range les $2^n$ parties de $E$ par paires $\{A, \overline{A}\}$. Combien y a-t-il de paires ?
   Combien de parties de chaque paire sont dans $\mathcal{F}$ ?
3. Soient $A$ et $B$ deux parties de $\mathcal{F}$. Montre que $A \cap B$ est dans $\mathcal{F}$,
   en regardant son complémentaire.

## Solution

Pour une partie $A$ de $E$, on note $\overline{A}$ son complémentaire dans $E$, c'est-à-dire
l'ensemble des éléments de $E$ qui ne sont pas dans $A$.

**Étape 1. Exactement une partie de chaque paire.**

Rangeons les $2^n$ parties de $E$ par paires $\{A, \overline{A}\}$. Une partie n'est jamais égale
à son complémentaire, puisque $E$ n'est pas vide. Chaque partie est donc dans une seule paire, et
il y a $\frac{2^n}{2} = 2^{n-1}$ paires.

Les deux parties d'une même paire ne peuvent pas être toutes les deux dans $\mathcal{F}$. En effet,
en prenant $A$, $\overline{A}$ et encore $A$, on aurait
$A \cap \overline{A} \cap A = \varnothing$, ce qui est interdit.

La famille $\mathcal{F}$ contient donc au plus une partie de chaque paire. Comme elle contient
$2^{n-1}$ parties, autant que de paires, elle en contient **exactement une** de chaque paire :
pour toute partie $A$ de $E$, une et une seule des deux parties $A$ et $\overline{A}$ est dans
$\mathcal{F}$.

**Étape 2. L'intersection de deux parties de $\mathcal{F}$ est dans $\mathcal{F}$.**

Soient $A$ et $B$ dans $\mathcal{F}$, et notons $I = A \cap B$. Supposons que $I$ ne soit pas dans
$\mathcal{F}$. D'après l'étape 1, c'est alors $\overline{I}$ qui est dans $\mathcal{F}$. Mais
$$A \cap B \cap \overline{I} = I \cap \overline{I} = \varnothing ,$$
ce qui est interdit pour trois parties de $\mathcal{F}$. Donc $A \cap B$ est dans $\mathcal{F}$.

**Étape 3. L'intersection de toutes les parties est dans $\mathcal{F}$.**

Notons $A_1, A_2, \ldots, A_m$ les parties de $\mathcal{F}$, avec $m = 2^{n-1}$. D'après l'étape 2,
$A_1 \cap A_2$ est dans $\mathcal{F}$. En lui appliquant encore l'étape 2 avec $A_3$, on obtient
que $A_1 \cap A_2 \cap A_3$ est dans $\mathcal{F}$. En continuant de proche en proche jusqu'à
$A_m$, on obtient que
$$A_1 \cap A_2 \cap \cdots \cap A_m$$
est dans $\mathcal{F}$.

**Étape 4. L'ensemble vide n'est pas dans $\mathcal{F}$.**

Si $\varnothing$ était dans $\mathcal{F}$, en le prenant trois fois on aurait
$\varnothing \cap \varnothing \cap \varnothing = \varnothing$, ce qui est interdit.

L'intersection de toutes les parties de $\mathcal{F}$ est dans $\mathcal{F}$ (étape 3), et elle
n'est pas vide (étape 4).

**Conclusion : il existe un élément de $E$ qui appartient à toutes les parties de la famille
$\mathcal{F}$.**

## Going further

- On peut même décrire toutes ces familles. Soit $x$ un élément commun à toutes les parties de
  $\mathcal{F}$. Il y a exactement $2^{n-1}$ parties de $E$ qui contiennent $x$, et $\mathcal{F}$
  en est formée de $2^{n-1}$. La famille $\mathcal{F}$ est donc la famille de **toutes** les
  parties qui contiennent $x$.
- Le mot « trois » est indispensable. Avec $E = \{1, 2, 3\}$, la famille
  $\{1, 2\}, \{1, 3\}, \{2, 3\}, \{1, 2, 3\}$ contient $4 = 2^{3-1}$ parties, et deux quelconques
  d'entre elles ont un élément commun. Pourtant aucun élément n'est dans toutes.
