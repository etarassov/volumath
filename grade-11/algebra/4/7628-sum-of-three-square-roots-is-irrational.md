---
id: "7628"
title: "La somme de trois racines carrées est irrationnelle"
grade: 11
theme: algebra
difficulty: 4
duration_min: 35
tags: [irrationalite, racine-carree, raisonnement-par-l-absurde, elevation-au-carre]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Montpellier 2013, La Muraille"
  reference: "stage_ete_2013.pdf, chapitre X « La Muraille », exercice 13 (sans solution imprimée)"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2013.pdf"
---

## Statement

Démontrer que le nombre

$$s = \sqrt{2} + \sqrt{5} + \sqrt{13}$$

est irrationnel.

*On admettra que $\sqrt{2}$ est irrationnel.*

## Hints

1. Raisonnez par l'absurde : supposez $s$ rationnel.
2. Isolez l'une des trois racines d'un côté et les deux autres de l'autre, puis élevez au carré. Laquelle isoler ? Essayez de garder $\sqrt2$ pour la fin.
3. Après un premier carré, il ne reste qu'une seule racine carrée de chaque côté. Isolez-la et recarrez.
4. À la fin, vous devriez pouvoir exprimer $\sqrt2$ comme un quotient d'expressions rationnelles en $s$. Il faudra vérifier que le dénominateur n'est pas nul : encadrez $s$.

## Solution

**Raisonnons par l'absurde**, en supposant que $s = \sqrt2 + \sqrt5 + \sqrt{13}$ soit un nombre rationnel.

**Premier carré.**

Isolons $\sqrt2$ :

$$s - \sqrt2 = \sqrt5 + \sqrt{13} .$$

Élevons au carré des deux côtés :

$$s^2 - 2s\sqrt2 + 2 = 5 + 2\sqrt{65} + 13 = 18 + 2\sqrt{65} .$$

D'où

$$s^2 - 16 - 2s\sqrt2 = 2\sqrt{65} .$$

**Second carré.**

Élevons de nouveau au carré. En posant $u = s^2 - 16$ pour alléger :

$$\left(u - 2s\sqrt2\right)^2 = \left(2\sqrt{65}\right)^2 ,$$

c'est-à-dire

$$u^2 - 4su\sqrt2 + 8s^2 = 260 .$$

On isole le terme contenant $\sqrt2$ :

$$4su\,\sqrt2 = u^2 + 8s^2 - 260 .$$

**La conclusion.**

Si $s$ est rationnel, alors $u = s^2 - 16$ est rationnel, et le membre de droite $u^2 + 8s^2 - 260$ est rationnel. Le coefficient $4su$ est lui aussi rationnel.

Reste à vérifier qu'il n'est pas nul, car on veut diviser par lui.

- $\sqrt2 > 1$, $\sqrt5 > 2$ et $\sqrt{13} > 3$, donc $s > 6$. En particulier $s \neq 0$.
- De $s > 6$ on tire $s^2 > 36 > 16$, donc $u = s^2 - 16 > 0$ et $u \neq 0$.

Ainsi $4su \neq 0$, et

$$\sqrt2 = \frac{u^2 + 8s^2 - 260}{4su}$$

serait un quotient de deux nombres rationnels, donc un nombre rationnel. Or $\sqrt2$ est irrationnel : contradiction.

**Conclusion.** Le nombre $\sqrt2 + \sqrt5 + \sqrt{13}$ est irrationnel.

## Going further

La méthode est très générale : **on isole une racine, on élève au carré, et on recommence.** Chaque élévation au carré supprime une racine, et à la fin il ne reste plus qu'une racine dont on connaît déjà l'irrationalité. Le seul travail réel est de vérifier que le coefficient par lequel on divise n'est pas nul, ce qui se fait ici par un simple encadrement.

Deux remarques :

1. On n'a jamais eu besoin de savoir si $\sqrt5$, $\sqrt{13}$ ou $\sqrt{65}$ sont irrationnels. Seul $\sqrt2$ a servi.
2. Le résultat est en fait beaucoup plus général : **si $m$ est un entier positif qui n'est pas un carré parfait, alors $\sqrt{m}$ est irrationnel, et toute somme de telles racines l'est aussi.** La démonstration générale dépasse le cadre de cet exercice, mais le cas de trois racines se traite bien à la main, comme on vient de le voir.

Pour s'entraîner : montrer de la même façon que $\sqrt2 + \sqrt3$ est irrationnel. Un seul carré suffira presque.
