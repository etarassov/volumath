---
id: "12206"
title: "Quand n(n + 2015) est un carré parfait"
grade: 9
theme: arithmetic
difficulty: 4
duration_min: 35
tags: [carre-parfait, nombres-premiers, decomposition-en-facteurs-premiers, identites-remarquables, raisonnement-par-l-absurde, divisibilite]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, test de sélection de janvier 2015"
  reference: "2017-10_ofm-2014-2015-test-janvier.pdf, exercices du groupe B, exercice 3 ; corrigé 2017-10_ofm-2014-2015-test-janvier-corrige.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2014-2015-test-janvier.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2017-10_ofm-2014-2015-test-janvier.pdf"
---

## Statement

Soit $n$ un entier strictement positif tel que $n(n + 2015)$ est le carré d'un entier.

**a)** Démontrer que $n$ n'est pas un nombre premier.

**b)** Donner un exemple d'un tel entier $n$.

## Hints

1. Décompose $2015$ en produit de facteurs premiers.
2. Pour **a)**, suppose que $n = p$ est premier et que $p(p + 2015) = m^2$. Pourquoi $p$ divise-t-il $m$ ? Écris $m = pr$ et simplifie.
3. Tu dois trouver que $p$ divise $2015$. Il ne reste que trois cas à examiner.
4. Pour **b)**, cherche $n$ tel que $n$ et $n + 2015$ soient **tous les deux** des carrés : $n = a^2$ et $n + 2015 = b^2$. Factorise $b^2 - a^2$.

## Solution

On a $2015 = 5 \times 13 \times 31$, et ces trois nombres sont premiers.

**a)** Raisonnons par l'absurde : supposons que $n = p$ est un nombre premier et qu'il existe un entier $m$ tel que $p(p + 2015) = m^2$.

*$p$ divise $m$.* Le nombre premier $p$ divise $m^2$. Dans la décomposition de $m^2$ en facteurs premiers, chaque nombre premier de la décomposition de $m$ apparaît deux fois, et il n'y en a pas d'autre. Comme $p$ apparaît dans la décomposition de $m^2$, il apparaît dans celle de $m$ : $p$ divise $m$. On écrit $m = pr$ avec $r$ entier.

*$p$ divise $2015$.* L'égalité devient $p(p + 2015) = p^2 r^2$. En divisant par $p$ :

$$p + 2015 = p\,r^2, \qquad \text{donc} \qquad 2015 = p\,r^2 - p = p\,(r^2 - 1).$$

Ainsi $p$ divise $2015$, donc $p$ vaut $5$, $13$ ou $31$, et $r^2 = \dfrac{2015}{p} + 1$.

*Les trois cas.*

- Si $p = 5$ : $r^2 = 403 + 1 = 404$. Or $20^2 = 400$ et $21^2 = 441$, donc $404$ n'est pas un carré.
- Si $p = 13$ : $r^2 = 155 + 1 = 156$. Or $12^2 = 144$ et $13^2 = 169$, donc $156$ n'est pas un carré.
- Si $p = 31$ : $r^2 = 65 + 1 = 66$. Or $8^2 = 64$ et $9^2 = 81$, donc $66$ n'est pas un carré.

Dans les trois cas on aboutit à une contradiction. **Donc $n$ n'est pas un nombre premier.**

**b)** Cherchons $n$ tel que $n$ et $n + 2015$ soient tous les deux des carrés parfaits : alors leur produit sera aussi un carré. On veut $n = a^2$ et $n + 2015 = b^2$ avec $a$, $b$ entiers positifs, c'est-à-dire

$$b^2 - a^2 = 2015, \qquad \text{soit} \qquad (b - a)(b + a) = 2015.$$

Prenons par exemple $b - a = 31$ et $b + a = 65$ (car $31 \times 65 = 2015$). En additionnant, $2b = 96$, donc $b = 48$ et $a = 17$.

On obtient $n = 17^2 = 289$. Vérification : $n + 2015 = 2304 = 48^2$, donc

$$n(n + 2015) = 17^2 \times 48^2 = (17 \times 48)^2 = 816^2.$$

**Un exemple : $n = 289$.**

## Going further

Le corrigé officiel donne un autre exemple : $n = 1612 = 4 \times 403$. Alors $n + 2015 = 3627 = 9 \times 403$, et $n(n + 2015) = 36 \times 403^2 = 2418^2$. Ici, $n$ et $n + 2015$ ne sont pas des carrés, mais ils sont de la forme $4k$ et $9k$ avec le même $k$.

Il n'y a qu'un nombre fini de solutions. Avec un ordinateur, on trouve exactement $13$ valeurs de $n$ : $289$, $405$, $496$, $1612$, $2197$, $5041$, $5580$, $14625$, $31744$, $39601$, $77077$, $202005$ et $1014049$. La plus grande vient de $b - a = 1$ et $b + a = 2015$, c'est-à-dire $a = 1007$.

Pourquoi un nombre fini ? Si $n(n+2015) = m^2$, alors $m > n$, et $4m^2 = (2n + 2015)^2 - 2015^2$. Le nombre $2015^2$ s'écrit donc $(2n + 2015 - 2m)(2n + 2015 + 2m)$, et il n'a qu'un nombre fini de façons de se décomposer en produit de deux entiers.
