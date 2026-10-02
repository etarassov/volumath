---
id: "10438"
title: "(m + n)!/(m + n)ᵐ⁺ⁿ < m! n!/(mᵐ nⁿ)"
grade: 12
theme: combinatorics
difficulty: 3
duration_min: 30
tags: [inegalite, factorielle, denombrement, coefficients-binomiaux, double-comptage]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2016-2017 n° 2 (algèbre)"
  reference: "2017-10_ofm-2016-2017-envoi-2.pdf, Exercices du groupe B, exercice 2 ; corrigé 2017-10_ofm-2016-2017-envoi-2-solutions.pdf (qui utilise la formule du binôme ; la solution ci-dessous compte des listes, comme le suggère la remarque probabiliste du corrigé)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2016-2017-envoi-2.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2017-10_ofm-2016-2017-envoi-2.pdf"
---

## Statement

Soient $m$ et $n$ deux entiers strictement positifs. Montrer que

$$\frac{(m + n)!}{(m + n)^{m+n}} < \frac{m!\,n!}{m^m\,n^n} .$$

## Hints

1. Chasse les dénominateurs. Montre que l'inégalité revient à $\binom{m+n}{m}\,m^m\,n^n < (m + n)^{m+n}$.
2. Une urne contient $m + n$ boules numérotées. Combien y a-t-il de listes de $m + n$ numéros de boules, quand un même numéro peut apparaître plusieurs fois ?
3. Peins $m$ boules en blanc et $n$ boules en noir. Combien de ces listes contiennent exactement $m$ boules blanches ?
4. Toutes les listes contiennent-elles exactement $m$ boules blanches ?

## Solution

**Étape 1 : une forme équivalente.** Tous les nombres en jeu sont strictement positifs. En multipliant les deux membres par $\frac{m^m\,n^n\,(m + n)^{m+n}}{m!\,n!}$, l'inégalité à démontrer devient

$$\frac{(m + n)!}{m!\,n!}\,m^m\,n^n < (m + n)^{m+n}, \qquad \text{c'est-à-dire} \qquad \binom{m+n}{m}\,m^m\,n^n < (m + n)^{m+n} .$$

Nous allons interpréter les deux membres comme des nombres de listes.

**Étape 2 : toutes les listes.** Une urne contient $m + n$ boules numérotées de $1$ à $m + n$. Les boules $1$ à $m$ sont blanches, les boules $m + 1$ à $m + n$ sont noires. On s'intéresse aux listes $(u_1, u_2, \ldots, u_{m+n})$ de $m + n$ numéros de boules, un même numéro pouvant apparaître plusieurs fois (on tire $m + n$ boules avec remise, en notant l'ordre). Il y a $m + n$ choix pour chaque terme, donc

$$(m + n)^{m+n} \text{ listes en tout.}$$

**Étape 3 : les listes avec exactement $m$ boules blanches.** Pour fabriquer une telle liste :

- on choisit les $m$ places, parmi $m + n$, où l'on met une boule blanche : $\binom{m+n}{m}$ choix ;
- on remplit chacune de ces $m$ places avec l'une des $m$ boules blanches : $m^m$ choix ;
- on remplit chacune des $n$ autres places avec l'une des $n$ boules noires : $n^n$ choix.

Chaque liste ayant exactement $m$ boules blanches est obtenue une fois et une seule. Il y a donc

$$\binom{m+n}{m}\,m^m\,n^n \text{ listes avec exactement } m \text{ boules blanches.}$$

**Étape 4 : il y a d'autres listes.** La liste $(m + 1, m + 1, \ldots, m + 1)$, où l'on tire chaque fois la boule noire numéro $m + 1$, existe car $n \geqslant 1$. Elle contient $0$ boule blanche, et $0 \neq m$ car $m \geqslant 1$. Les listes avec exactement $m$ boules blanches ne sont donc pas toutes les listes, et

$$\binom{m+n}{m}\,m^m\,n^n < (m + n)^{m+n} .$$

**Conclusion.** D'après l'étape 1, on a bien

$$\frac{(m + n)!}{(m + n)^{m+n}} < \frac{m!\,n!}{m^m\,n^n} .$$

## Going further

1. On tire $m + n$ fois une boule dans l'urne, avec remise, et on note $X$ le nombre de boules blanches obtenues. Quelle est la loi de $X$ ? Exprimer $P(X = m)$, et retrouver l'inégalité à partir de $P(X = m) < 1$.
2. Si tu connais la formule du binôme de Newton, développe $(m + n)^{m+n}$ et retrouve l'inégalité en ne gardant qu'un seul terme de la somme.
