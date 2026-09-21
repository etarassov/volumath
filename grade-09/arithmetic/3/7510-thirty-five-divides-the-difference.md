---
id: "7510"
title: "35 divise 3⁶ⁿ − 2⁶ⁿ"
grade: 9
theme: arithmetic
difficulty: 3
duration_min: 25
tags: [divisibilite, puissances, recurrence, factorisation]
adapted_from: null
see_also: ["7620"]
created: 2026-09-20
source:
  name: "POFM, stage olympique de Montpellier 2012, La Muraille"
  reference: "stage_ete_2012.pdf, chapitre V « La Muraille », exercice 7. La Muraille ne donne pas de solution pour cet exercice : la solution ci-dessous a été rédigée pour ce recueil."
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2012.pdf"
---

## Statement

Montrer que pour tout entier $n \geqslant 1$, le nombre

$$3^{6n} - 2^{6n}$$

est divisible par $35$.

## Hints

1. Les exposants sont tous des multiples de $6$. Regroupe-les : $3^{6n} = (3^6)^n$.
2. Calcule $3^6$ et $2^6$. Puis calcule leur différence, et factorise-la.
3. Il te reste à savoir si $a - b$ divise toujours $a^n - b^n$. Vérifie-le sur $n = 2$ et $n = 3$ avant de le démontrer.
4. Pour la démonstration, écris $a^n - b^n = a\,(a^{n-1} - b^{n-1}) + (a - b)\,b^{\,n-1}$ et raisonne par récurrence.

## Solution

**Étape 1. On regroupe les exposants.**

Comme $3^{6n} = (3^6)^n$ et $2^{6n} = (2^6)^n$, posons

$$a = 3^6 = 729, \qquad b = 2^6 = 64.$$

Il s'agit de montrer que $35$ divise $a^n - b^n$.

**Étape 2. Le cas $n = 1$.**

$$a - b = 729 - 64 = 665 = 5 \times 7 \times 19 = 35 \times 19.$$

Donc $35$ divise $a - b$. C'est le point de départ : tout va découler de là.

**Étape 3. $a - b$ divise $a^n - b^n$.**

Montrons par récurrence sur $n \geqslant 1$ que $a - b$ divise $a^n - b^n$.

*Initialisation.* Pour $n = 1$, $a^1 - b^1 = a - b$ est bien divisible par $a - b$.

*Hérédité.* Supposons que $a - b$ divise $a^{n} - b^{n}$ pour un certain $n \geqslant 1$. Alors

$$a^{n+1} - b^{n+1} = a \times a^{n} - b \times b^{n}.$$

Ajoutons et retranchons $a\,b^{n}$ :

$$a^{n+1} - b^{n+1} = a\,a^{n} - a\,b^{n} + a\,b^{n} - b\,b^{n} = a\,(a^{n} - b^{n}) + (a - b)\,b^{n}.$$

Le premier terme est divisible par $a-b$ grâce à l'hypothèse de récurrence, et le second l'est manifestement. Leur somme l'est donc aussi.

La récurrence est terminée.

**Étape 4. On conclut.**

Pour tout $n \geqslant 1$, le nombre $a - b = 665$ divise $a^n - b^n = 3^{6n} - 2^{6n}$. Or $35$ divise $665$, donc $35$ divise $3^{6n} - 2^{6n}$.

## Going further

La propriété démontrée à l'étape 3, « $a - b$ divise $a^n - b^n$ », est l'une des plus utiles de toute l'arithmétique. On peut aussi l'écrire directement sous forme de produit :

$$a^n - b^n = (a-b)\,\big(a^{n-1} + a^{n-2}b + a^{n-3}b^2 + \cdots + b^{n-1}\big).$$

Pour $n = 2$ on retrouve $a^2 - b^2 = (a-b)(a+b)$, et pour $n = 3$ l'identité $a^3 - b^3 = (a-b)(a^2+ab+b^2)$.

Au passage, on a démontré plus que demandé : c'est même $665$ qui divise $3^{6n} - 2^{6n}$, donc aussi $19$, et $5 \times 19 = 95$, etc. Et pourquoi l'énoncé choisit-il l'exposant $6n$ plutôt que $n$ ? Parce que pour $n = 1$, $3 - 2 = 1$ ne donne aucune information : c'est le regroupement par paquets de $6$ qui fait apparaître $35$.
