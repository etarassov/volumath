---
id: "7936"
title: "Une équation fonctionnelle avec des cubes"
grade: 12
theme: functions-analysis
difficulty: 5
duration_min: 45
tags: [equation-fonctionnelle, substitution, fonction-affine, identites-remarquables]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Montpellier 2016, test de fin de parcours"
  reference: "stage_ete_2016.pdf, test de fin de parcours du mercredi 24 août, Groupe C, exercice 2 (énoncé p. 216, solution p. 217)"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2016.pdf"
---

## Statement

Trouver toutes les fonctions $f : \mathbb{R} \to \mathbb{R}$ telles que, pour tous réels $x$ et $y$,

$$f\!\left(x^3\right) - f\!\left(y^3\right) = \left(x^2 + xy + y^2\right)\left(f(x) - f(y)\right) .$$

## Hints

1. Commence par le sens facile : vérifie qu'une fonction affine $f(x) = \alpha x + \beta$ est bien solution. Quelle identité remarquable sert alors ?
2. Pour le sens difficile, il faut faire disparaître le terme $f(x^3)$, qui est gênant. Écris l'équation pour $y = 1$, puis pour $y = 0$, et soustrais les deux.
3. Tu obtiens une égalité où ne figurent plus que $f(x)$, $f(0)$ et $f(1)$. Regroupe les termes en $f(x)$ : quel facteur sort ?
4. Cela donne $f(x)$ pour tout $x$ sauf une valeur. Traite cette valeur à part avec un choix bien senti de $x$ et $y$.

## Solution

**La réponse : les solutions sont exactement les fonctions affines $f(x) = \alpha x + \beta$, avec $\alpha$ et $\beta$ réels quelconques.**

**Partie A : les fonctions affines conviennent.**

Soit $f(x) = \alpha x + \beta$. Alors

$$f\!\left(x^3\right) - f\!\left(y^3\right) = \alpha\left(x^3 - y^3\right) = \alpha (x - y)\left(x^2 + xy + y^2\right) ,$$

en utilisant l'identité $x^3 - y^3 = (x-y)(x^2+xy+y^2)$. D'autre part

$$\left(x^2+xy+y^2\right)\left(f(x) - f(y)\right) = \left(x^2+xy+y^2\right) \alpha (x-y) .$$

Les deux membres sont égaux : $f$ est bien solution.

**Partie B : il n'y en a pas d'autres.**

Soit $f$ une solution. Notons $E(x, y)$ l'équation appliquée au couple $(x, y)$.

**Étape 1 : deux substitutions.**

$$E(x, 1) : \quad f\!\left(x^3\right) - f(1) = \left(x^2 + x + 1\right)\left(f(x) - f(1)\right) .$$

$$E(x, 0) : \quad f\!\left(x^3\right) - f(0) = x^2 \left(f(x) - f(0)\right) .$$

**Étape 2 : on soustrait.**

En retranchant la seconde ligne de la première, le terme $f(x^3)$ disparaît :

$$f(0) - f(1) = \left(x^2 + x + 1\right)\left(f(x) - f(1)\right) - x^2\left(f(x) - f(0)\right) .$$

Développons le membre de droite :

$$\left(x^2+x+1\right)f(x) - \left(x^2+x+1\right)f(1) - x^2 f(x) + x^2 f(0) = (x+1) f(x) - \left(x^2+x+1\right)f(1) + x^2 f(0) .$$

En isolant le terme en $f(x)$ :

$$(x+1) f(x) = f(0) - f(1) + \left(x^2+x+1\right) f(1) - x^2 f(0) .$$

**Étape 3 : on reconnaît un produit.**

Posons

$$\alpha = f(1) - f(0) \qquad \text{et} \qquad \beta = f(0) .$$

Le membre de droite se réécrit, en regroupant par puissances de $x$ :

$$x^2\left(f(1) - f(0)\right) + x\,f(1) + \left(f(0) - f(1) + f(1)\right) = \alpha x^2 + (\alpha + \beta) x + \beta .$$

Or

$$(x+1)(\alpha x + \beta) = \alpha x^2 + \beta x + \alpha x + \beta = \alpha x^2 + (\alpha+\beta)x + \beta .$$

Donc, pour tout réel $x$,

$$(x+1)\, f(x) = (x+1)\left(\alpha x + \beta\right) .$$

**Étape 4 : on simplifie, sauf en $x = -1$.**

Si $x \ne -1$, on peut diviser par $x+1 \ne 0$ et l'on obtient

$$f(x) = \alpha x + \beta .$$

**Étape 5 : la valeur en $-1$.**

Appliquons l'équation au couple $(-1, 2)$. Comme $-1$ et $2$ ont pour cubes $-1$ et $8$, et que $8 \ne -1$ et $2 \ne -1$, on connaît déjà $f(8) = 8\alpha + \beta$ et $f(2) = 2\alpha + \beta$. Par ailleurs $(-1)^2 + (-1)(2) + 2^2 = 1 - 2 + 4 = 3$. L'équation $E(-1, 2)$ s'écrit

$$f(-1) - f(8) = 3\left(f(-1) - f(2)\right) ,$$

soit

$$f(-1) - 8\alpha - \beta = 3 f(-1) - 6\alpha - 3\beta .$$

En regroupant : $-2 f(-1) = 2\alpha - 2\beta$, donc

$$f(-1) = \beta - \alpha = \alpha \times (-1) + \beta .$$

C'est exactement la valeur de la fonction affine en $-1$.

**Conclusion.** Toute solution est de la forme $f(x) = \alpha x + \beta$, et réciproquement toutes ces fonctions conviennent. Les solutions sont donc exactement les fonctions affines.
