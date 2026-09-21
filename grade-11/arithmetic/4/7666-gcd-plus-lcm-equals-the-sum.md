---
id: "7666"
title: "PGCD + PPCM = la somme"
grade: 11
theme: arithmetic
difficulty: 4
duration_min: 30
tags: [pgcd, ppcm, divisibilite, factorisation]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Montpellier 2013, cours d'arithmétique du groupe A"
  reference: "stage_ete_2013.pdf, chapitre II, groupe A, cours d'arithmétique, exercice sur PGCD(x,y) + PPCM(x,y) = x + y"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2013.pdf"
---

## Statement

Soient $x$ et $y$ deux entiers strictement positifs tels que

$$\mathrm{PGCD}(x, y) + \mathrm{PPCM}(x, y) = x + y .$$

Démontrer que l'un des deux nombres divise l'autre.

## Hints

1. Notez $d = \mathrm{PGCD}(x,y)$ et écrivez $x$ et $y$ en fonction de $d$. Que peut-on dire des deux quotients obtenus ?
2. Exprimez le PPCM avec la même notation. Rappelez-vous que $\mathrm{PGCD}(x,y) \times \mathrm{PPCM}(x,y) = xy$.
3. Remplacez tout dans l'équation et simplifiez par $d$.
4. Il reste une équation en deux entiers. Elle se factorise : essayez de faire apparaître un produit égal à $0$.

## Solution

**Mise en place.**

Posons $d = \mathrm{PGCD}(x, y)$. Par définition du PGCD, on peut écrire

$$x = d\,a \qquad \text{et} \qquad y = d\,b$$

où $a$ et $b$ sont des entiers strictement positifs **premiers entre eux**, c'est-à-dire $\mathrm{PGCD}(a,b) = 1$.

Le PPCM se calcule alors grâce à la relation $\mathrm{PGCD}(x,y) \times \mathrm{PPCM}(x,y) = xy$ :

$$\mathrm{PPCM}(x,y) = \frac{xy}{d} = \frac{(da)(db)}{d} = d\,ab .$$

**Traduire l'hypothèse.**

L'équation de l'énoncé devient

$$d + d\,ab = d\,a + d\,b .$$

Comme $d \geqslant 1$, on peut diviser les deux membres par $d$ :

$$1 + ab = a + b .$$

**Factoriser.**

Regroupons tout dans le membre de gauche :

$$ab - a - b + 1 = 0 .$$

Ce membre de gauche se factorise :

$$ab - a - b + 1 = a(b - 1) - (b - 1) = (a - 1)(b - 1) .$$

L'équation s'écrit donc

$$(a-1)(b-1) = 0 .$$

Un produit de deux entiers est nul seulement si l'un des deux est nul. Donc

$$a = 1 \qquad \text{ou} \qquad b = 1 .$$

**Conclure.**

- Si $a = 1$, alors $x = d\,a = d$. Or $d$ divise $y$ par définition du PGCD, donc **$x$ divise $y$**.
- Si $b = 1$, alors $y = d$, et de même **$y$ divise $x$**.

Dans les deux cas, l'un des deux nombres divise l'autre. $\blacksquare$

**La réciproque est vraie aussi.** Si $x$ divise $y$, alors $\mathrm{PGCD}(x,y) = x$ et $\mathrm{PPCM}(x,y) = y$, donc la somme vaut bien $x + y$. La condition de l'énoncé caractérise donc exactement les couples où l'un divise l'autre.

## Going further

Le passage par $x = da$, $y = db$ avec $a$ et $b$ premiers entre eux est **le premier réflexe** de tout problème mêlant PGCD et PPCM : il transforme une question sur deux nombres quelconques en une question sur deux nombres premiers entre eux, ce qui est presque toujours plus simple.

La factorisation $ab - a - b + 1 = (a-1)(b-1)$ est la même astuce que celle qui sert à résoudre les équations du type $ab + \alpha a + \beta b = \gamma$ : on ajoute ou retranche la constante qui manque pour reconnaître un produit.

**Deux variantes à essayer.**

1. Trouver tous les couples $(x,y)$ d'entiers strictement positifs tels que $\mathrm{PGCD}(x,y) + \mathrm{PPCM}(x,y) = 2(x+y)$. La même méthode donne $2 + ab = 2a + 2b$, soit $(a-2)(b-2) = 2$, ce qui ne laisse que quelques cas.
2. Trouver tous les couples tels que $\mathrm{PPCM}(x,y) - \mathrm{PGCD}(x,y) = 143$. Ici $d(ab - 1) = 143 = 11 \times 13$, et il suffit d'examiner les diviseurs de $143$.
