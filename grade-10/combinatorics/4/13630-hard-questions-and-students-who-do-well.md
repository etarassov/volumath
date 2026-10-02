---
id: "13630"
title: "Questions difficiles et élèves qui réussissent"
grade: 10
theme: combinatorics
difficulty: 4
duration_min: 40
tags: [double comptage, inegalites, proportions, exemple, raisonnement par l absurde]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "Coupe Animath de printemps 2016 (31 mai 2016)"
  reference: "2017-09_coupe_printemps_2016.pdf, énoncés lycée, exercice 8 ; corrigé 2017-09_coupe_printemps_2016_corrige.pdf, exercice 8 ; aussi dans stage_ete_2016.pdf (POFM), page 29"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/09/coupe_printemps_2016.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2017-09_coupe_printemps_2016.pdf"
---

## Statement

a) Une classe a passé un contrôle. On sait qu'au moins les deux tiers des questions de ce contrôle étaient difficiles : pour chacune de ces questions difficiles, au moins les deux tiers des élèves n'ont pas su y répondre. On sait aussi qu'au moins les deux tiers des élèves ont bien réussi le contrôle : chacun d'eux a su répondre à au moins les deux tiers des questions. Est-ce possible ?

b) La réponse serait-elle la même si l'on remplaçait partout « deux tiers » par « trois quarts » ?

c) Et si l'on remplaçait partout « deux tiers » par « sept dixièmes » ?

## Hints

1. Pour a), essaie avec une toute petite classe : trois élèves et un contrôle de trois questions.
2. Pour b) et c), remplace la fraction par un nombre $p$ et suppose que la situation est possible. Compte de deux façons le nombre de couples formés d'un élève qui a bien réussi et d'une question à laquelle il a su répondre.
3. Pour majorer ce nombre, sépare les questions difficiles des autres. Combien d'élèves qui ont bien réussi, au plus, ont su répondre à une question difficile ? À une question qui n'est pas difficile ?
4. Tu dois arriver à une inégalité qui oblige $p$ à être au plus égal à $\frac{2}{3}$.

## Solution

**a) C'est possible.** Prenons une classe de trois élèves, Alice, Bruno et Chloé, et un contrôle de trois questions. Voici qui a su répondre à quoi :

| | question 1 | question 2 | question 3 | réponses justes |
|---|---|---|---|---|
| Alice | oui | oui | non | 2 |
| Bruno | oui | non | oui | 2 |
| Chloé | non | non | non | 0 |
| élèves qui ont su répondre | 2 | 1 | 1 | |

Les deux tiers de $3$ font $2$.

- Alice et Bruno ont chacun su répondre à $2$ questions sur $3$ : ils ont bien réussi. Cela fait $2$ élèves sur $3$, soit les deux tiers de la classe.
- Les questions 2 et 3 ont chacune été manquées par $2$ élèves sur $3$ : elles sont difficiles. Cela fait $2$ questions sur $3$, soit les deux tiers du contrôle.

Les deux conditions sont donc remplies.

**b) et c) Ce n'est plus possible.** On va montrer plus généralement ceci : si $p$ est un nombre strictement compris entre $\frac{2}{3}$ et $1$, il est impossible qu'au moins une proportion $p$ des questions soient difficiles (manquées par une proportion au moins $p$ des élèves) et qu'au moins une proportion $p$ des élèves aient bien réussi (en répondant à une proportion au moins $p$ des questions). Cela s'applique à $p = \frac{3}{4}$ et à $p = \frac{7}{10}$, qui sont tous deux plus grands que $\frac{2}{3}$.

Supposons au contraire que ce soit possible. On note :

- $n$ le nombre d'élèves et $m$ le nombre de questions ;
- $g$ le nombre d'élèves qui ont bien réussi, avec $g \ge p\,n$ ;
- $d$ le nombre de questions difficiles, avec $d \ge p\,m$, et $f = m - d$ le nombre des autres questions, que l'on appelle faciles.

Comme $d \ge p\,m$, on a $f \le m - p\,m = (1 - p)\,m$.

Une question difficile est manquée par au moins $p\,n$ élèves, donc elle est réussie par au plus $n - p\,n = (1 - p)\,n$ élèves.

On compte de deux façons le nombre $N$ de couples (élève qui a bien réussi, question à laquelle il a su répondre).

*En partant des élèves.* Chacun des $g$ élèves qui ont bien réussi a su répondre à au moins $p\,m$ questions, donc

$$N \ge g \times p\,m .$$

*En partant des questions.* Une question difficile a été réussie par au plus $(1 - p)\,n$ élèves en tout, donc par au plus $(1 - p)\,n$ élèves qui ont bien réussi. Une question facile a été réussie par au plus $g$ élèves qui ont bien réussi, puisqu'il n'y en a que $g$. Donc

$$N \le d \times (1 - p)\,n + f \times g = (m - f)(1 - p)\,n + f\,g = (1 - p)\,m\,n + f \times \left( g - (1 - p)\,n \right) .$$

Comme $p > \frac{1}{2}$, on a $1 - p < p$, donc $(1 - p)\,n < p\,n \le g$ : le nombre $g - (1 - p)\,n$ est positif. On peut donc y remplacer $f$ par le nombre plus grand $(1 - p)\,m$ :

$$N \le (1 - p)\,m\,n + (1 - p)\,m \times \left( g - (1 - p)\,n \right) = (1 - p)\,m \times \left( n + g - n + p\,n \right) = (1 - p)\,m\,(g + p\,n) .$$

*On compare.* Les deux encadrements de $N$ donnent $g \, p\,m \le (1 - p)\,m\,(g + p\,n)$. On divise par $m$, puis on regroupe les termes en $g$ :

$$p\,g \le (1 - p)\,g + p(1 - p)\,n, \qquad \text{donc} \qquad (2p - 1)\,g \le p(1 - p)\,n .$$

Comme $2p - 1 > 0$ et $g \ge p\,n$, le membre de gauche est au moins $(2p - 1)\,p\,n$. Donc $(2p - 1)\,p\,n \le p(1 - p)\,n$, et en divisant par $p\,n$, qui est positif :

$$2p - 1 \le 1 - p, \qquad \text{c'est-à-dire} \qquad p \le \frac{2}{3} .$$

C'est contraire à l'hypothèse $p > \frac{2}{3}$. La situation est donc impossible.

**Pourquoi $\frac{2}{3}$ est la limite.** Dans l'exemple de la question a), toutes les inégalités ci-dessus sont des égalités : $N = 4$, $g\,p\,m = 2 \times \frac{2}{3} \times 3 = 4$, et $d(1 - p)\,n + f\,g = 2 \times 1 + 1 \times 2 = 4$. Il n'y a aucune marge, et c'est pour cela qu'une proportion plus grande que $\frac{2}{3}$ ne peut plus marcher.

**Conclusion.**

- **a)** Oui, c'est possible, par exemple avec trois élèves et trois questions.
- **b)** Non : avec « trois quarts », c'est impossible.
- **c)** Non : avec « sept dixièmes », c'est impossible aussi.

## Going further

1. Que se passe-t-il si l'on remplace partout « deux tiers » par « la moitié » ?
2. Dans la démonstration, à quels endroits a-t-on utilisé que $p$ est plus grand que $\frac{1}{2}$ ?
