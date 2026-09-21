---
id: "7923"
title: "Cinq nombres et leurs sommes deux à deux"
grade: 10
theme: algebra
difficulty: 3
duration_min: 35
tags: [systeme, ordre, sommes, disjonction de cas]
adapted_from: null
see_also: ["7105", "5216"]
created: 2026-09-20
source:
  name: "POFM, stage olympique de Montpellier 2016, Coupe Animath"
  reference: "stage_ete_2016.pdf, épreuve de la Coupe Animath du 31 mai 2016, exercice 5 (énoncé p. 28, solution p. 31)"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2016.pdf"
---

## Statement

Soient $a < b < c < d < e$ cinq nombres réels. On calcule les dix sommes de deux de ces nombres (deux nombres distincts à chaque fois).

Les trois plus petites de ces dix sommes valent $32$, $36$ et $37$ ; les deux plus grandes valent $48$ et $51$.

Trouver toutes les valeurs possibles de $e$.

## Hints

1. Quelle est forcément la plus petite des dix sommes ? Et la deuxième plus petite ? Justifie l'ordre.
2. Même question du côté des grandes : quelles sont les deux plus grandes sommes ?
3. La troisième plus petite somme n'est pas déterminée d'avance : il y a deux candidates. Lesquelles ?
4. Dans le cas qui ne marche pas, calcule $a + c + d + e$ de deux façons différentes.

## Solution

**La réponse : $e = \dfrac{55}{2}$, et c'est la seule valeur possible.**

**Étape 1 : les deux plus petites sommes.**

Comme $a < b < c < d < e$, toute somme contenant $a$ est plus petite que la même somme où l'on remplace $a$ par un nombre plus grand. On voit ainsi que la plus petite somme est $a+b$, et que la deuxième plus petite est $a+c$ : en effet, toute autre somme est supérieure ou égale à l'une des deux (elle contient soit $a$ et un nombre au moins égal à $c$, soit deux nombres au moins égaux à $b$ et $c$).

Donc

$$a + b = 32 \qquad \text{et} \qquad a + c = 36 .$$

**Étape 2 : les deux plus grandes sommes.**

Le même raisonnement par le haut donne : la plus grande somme est $d+e$ et la deuxième plus grande est $c+e$. Donc

$$c + e = 48 \qquad \text{et} \qquad d + e = 51 .$$

**Étape 3 : la troisième plus petite somme.**

Il y a deux candidates pour la troisième plus petite somme, $a+d$ et $b+c$, et on ne sait pas d'avance laquelle est la plus petite des deux. Examinons les deux cas.

**Cas 1 : $a + d = 37$.** Calculons alors la quantité $a + c + d + e$ de deux façons :

$$a + c + d + e = (a+c) + (d+e) = 36 + 51 = 87 ,$$
$$a + c + d + e = (a+d) + (c+e) = 37 + 48 = 85 .$$

On obtient $87 = 85$ : c'est absurde. Ce cas est impossible.

**Cas 2 : $b + c = 37$.** C'est donc celui-ci.

**Étape 4 : on calcule.**

On dispose de

$$a + b = 32, \qquad a + c = 36, \qquad b + c = 37 .$$

En additionnant les trois, chaque nombre apparaît deux fois :

$$2(a + b + c) = 32 + 36 + 37 = 105 , \qquad \text{donc} \qquad a + b + c = \frac{105}{2} .$$

En retirant $a + b = 32$ :

$$c = \frac{105}{2} - 32 = \frac{105 - 64}{2} = \frac{41}{2} .$$

Enfin, de $c + e = 48$ :

$$e = 48 - \frac{41}{2} = \frac{96 - 41}{2} = \frac{55}{2} .$$

**Étape 5 : vérification.**

On trouve $a = 36 - c = \frac{31}{2}$, $b = 32 - a = \frac{33}{2}$, $c = \frac{41}{2}$, $d = 51 - e = \frac{47}{2}$, $e = \frac{55}{2}$. L'ordre $a < b < c < d < e$ est respecté. Les dix sommes, rangées dans l'ordre croissant, valent

$$32, \ 36, \ 37, \ 39, \ 40, \ 43, \ 44, \ 44, \ 48, \ 51 .$$

Les trois plus petites sont bien $32$, $36$, $37$ et les deux plus grandes $48$ et $51$. ✓

**Conclusion.** La seule valeur possible est $e = \boxed{\dfrac{55}{2}}$, soit $27{,}5$.
