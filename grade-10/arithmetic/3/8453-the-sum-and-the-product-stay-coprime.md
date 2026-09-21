---
id: "8453"
title: "La somme et le produit restent premiers entre eux"
grade: 10
theme: arithmetic
difficulty: 3
duration_min: 25
tags: [pgcd, premiers entre eux, diviseur commun, nombre premier]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2021, cours de Groupe B"
  reference: "Poly-2021-Valbonne.pdf, Groupe B, « Factorisation et divisibilité » (Antoine Derimay), exercice 4"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/02/Poly-2021-Valbonne.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly-2021-Valbonne.pdf"
---

## Statement

Soient $a$ et $b$ deux entiers **premiers entre eux**, c'est-à-dire dont le seul diviseur commun positif est $1$.

Montrer que $a + b$ et $ab$ sont eux aussi premiers entre eux.

## Hints

1. Commence par essayer sur des exemples : $a = 4$, $b = 9$, puis $a = 5$, $b = 12$. Puis un contre-exemple à la réciproque : que se passe-t-il si $a = 2$ et $b = 4$ ?
2. Soit $d$ un diviseur commun de $a+b$ et de $ab$. Le but est de montrer que $d$ divise $1$. Fabrique, à partir de $a+b$ et de $ab$, une quantité où $b$ seul apparaît.
3. Que vaut $b \times (a + b) - ab$ ?
4. Tu obtiens que $d$ divise $a^2$ et $b^2$. Pourquoi cela force-t-il $d = 1$ ? Pense aux facteurs premiers.

## Solution

Soit $d$ un diviseur commun positif de $a + b$ et de $ab$. Montrons que $d = 1$.

### Étape 1. $d$ divise $b^2$ et $a^2$

Calculons :

$$b(a + b) - ab = ab + b^2 - ab = b^2.$$

Comme $d$ divise $a+b$, il divise $b(a+b)$. Comme $d$ divise $ab$, il divise la différence :

$$d \mid b^2.$$

Le même calcul avec $a$ à la place de $b$ donne

$$a(a + b) - ab = a^2 + ab - ab = a^2, \qquad \text{donc} \qquad d \mid a^2.$$

### Étape 2. Si $a$ et $b$ sont premiers entre eux, $a^2$ et $b^2$ le sont aussi

Supposons que $a^2$ et $b^2$ aient un diviseur commun plus grand que $1$. Alors ils ont un **facteur premier commun** $p$.

Comme $p$ est premier et divise $a^2 = a \times a$, il divise $a$. De même, $p$ divise $b$. Donc $p$ est un diviseur commun de $a$ et $b$ supérieur à $1$, ce qui contredit l'hypothèse.

Donc $a^2$ et $b^2$ sont premiers entre eux :

$$\mathrm{PGCD}(a^2, b^2) = 1.$$

### Étape 3. Conclusion

Par l'étape 1, $d$ est un diviseur commun de $a^2$ et de $b^2$. Par l'étape 2, le seul diviseur commun positif de ces deux nombres est $1$. Donc

$$d = 1.$$

Tout diviseur commun positif de $a+b$ et de $ab$ vaut $1$ : ces deux nombres sont bien **premiers entre eux**.

## Going further

Vérifions sur un exemple. Avec $a = 4$ et $b = 9$, qui sont premiers entre eux, on a $a + b = 13$ et $ab = 36$. Et $13$ est premier et ne divise pas $36$ : tout va bien.

**La réciproque est fausse**, et c'est instructif. Prenons $a = 2$ et $b = 4$, qui ne sont pas premiers entre eux. Alors $a + b = 6$ et $ab = 8$, dont le PGCD vaut $2$ : le résultat tombe en défaut, comme prévu.

Le point clé de la démonstration est l'étape où l'on fabrique $b^2$ à partir de $a+b$ et de $ab$. C'est un réflexe utile : quand deux expressions sont données, on cherche des combinaisons qui éliminent l'une des inconnues. C'est exactement ce que l'on fait aussi pour montrer qu'une fraction est irréductible.

Le même raisonnement montre plus généralement que si $a$ et $b$ sont premiers entre eux, alors $a + b$ est premier avec $a$, avec $b$, avec $ab$, et plus généralement avec $a^k b^m$ pour tous exposants.
