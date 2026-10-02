---
id: "7935"
title: "Une divisibilité à deux inconnues"
grade: 12
theme: arithmetic
difficulty: 4
duration_min: 35
tags: [divisibilite, nombres-premiers-entre-eux, lemme-de-gauss, encadrement]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Montpellier 2016, test de fin de parcours"
  reference: "stage_ete_2016.pdf, test de fin de parcours du mercredi 24 août, Groupe B, exercice 4 (énoncé p. 213, solution p. 216)"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2016.pdf"
---

## Statement

Trouver tous les couples d'entiers naturels $(m, n)$ tels que

$$1 + m(m+n) \quad \text{divise} \quad (n+1)(m+n) - 1 .$$

## Hints

1. Pose $s = m + n$ et $d = 1 + ms$ pour alléger l'écriture. Récris la condition.
2. Un diviseur de deux nombres divise leur somme. Ajoute $d$ à la quantité divisée : que devient-elle ?
3. Montre que $d$ et $s$ sont premiers entre eux, en regardant $d - ms$.
4. Le lemme de Gauss donne alors une divisibilité entre deux nombres positifs. Compare leurs tailles.

## Solution

**La réponse : les couples $(0, n)$ pour tout $n$, et les couples $(1, n)$ pour tout $n$.**

Posons

$$s = m+n \qquad \text{et} \qquad d = 1 + ms .$$

La condition s'écrit : $d$ divise $(n+1)s - 1$.

**Étape 1 : on ajoute $d$.**

Un diviseur de deux nombres divise leur somme. Comme $d$ divise $d$, la condition entraîne que $d$ divise

$$\left[(n+1)s - 1\right] + \left[1 + ms\right] = (n+1)s + ms = s\left(n + 1 + m\right) = s(s+1) .$$

**Étape 2 : $d$ et $s$ sont premiers entre eux.**

On a

$$d - m \times s = 1 .$$

Cette relation de Bézout montre que $\mathrm{PGCD}(d, s) = 1$.

**Étape 3 : le lemme de Gauss.**

$d$ divise le produit $s(s+1)$ et $d$ est premier avec $s$ : d'après le lemme de Gauss,

$$d \ \text{ divise } \ s+1 .$$

**Étape 4 : on compare les tailles.**

Les deux nombres $d$ et $s+1$ sont des entiers strictement positifs, donc

$$d \le s+1 , \qquad \text{c'est-à-dire} \qquad 1 + ms \le s + 1 , \qquad \text{c'est-à-dire} \qquad ms \le s .$$

Autrement dit $s(m-1) \le 0$. Comme $s = m+n \ge 0$, deux cas se présentent :

- si $s = 0$, alors $m = n = 0$ ;
- si $s > 0$, alors $m - 1 \le 0$, donc $m = 0$ ou $m = 1$.

Dans tous les cas, $m \le 1$.

**Étape 5 : on vérifie que $m = 0$ et $m = 1$ conviennent vraiment.**

Jusqu'ici nous avons seulement montré que $m \le 1$ est **nécessaire**. Reprenons l'énoncé de départ.

- **Si $m = 0$ :** alors $1 + m(m+n) = 1$, et $1$ divise n'importe quel entier. Tous les couples $(0, n)$ conviennent.
- **Si $m = 1$ :** alors $1 + m(m+n) = 1 + (1+n) = n+2$, et la quantité à diviser vaut
  $$(n+1)(1+n) - 1 = (n+1)^2 - 1 = n^2 + 2n = n(n+2) .$$
  Or $n+2$ divise $n(n+2)$. Tous les couples $(1, n)$ conviennent.

**Conclusion.** Les solutions sont exactement

$$m = 0 \ \text{ et } \ n \ \text{quelconque}, \qquad \text{ou} \qquad m = 1 \ \text{ et } \ n \ \text{quelconque} .$$
