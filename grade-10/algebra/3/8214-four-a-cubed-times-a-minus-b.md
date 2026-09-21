---
id: "8214"
title: "4a³(a − b) est plus grand que a⁴ − b⁴"
grade: 10
theme: algebra
difficulty: 3
duration_min: 25
tags: [inegalites, factorisation, identites remarquables]
adapted_from: null
see_also: ["8115"]
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2019, cours de Groupe A"
  reference: "PolycopieV1-1.pdf, chapitre III « Groupe A », première partie, « TD manipulations algébriques, récurrence » (Yohann D'Anello), exercice 10"
  url: "http://maths-olympiques.fr/wp-content/uploads/2019/08/PolycopieV1-1.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/PolycopieV1-1.pdf"
---

## Statement

Soient $a$ et $b$ deux réels tels que $a > b > 0$.

Montrer que

$$4a^3(a - b) \ \ge\ a^4 - b^4 .$$

## Hints

1. Les deux membres ont un facteur commun caché. Comment factorise-t-on $a^4 - b^4$ ?
2. Commence par $a^4 - b^4 = (a^2 - b^2)(a^2 + b^2)$, puis continue à factoriser $a^2 - b^2$.
3. Tu peux aussi écrire directement $a^4 - b^4 = (a - b)(a^3 + a^2 b + a b^2 + b^3)$ ; vérifie-le en développant, tout se télescope.
4. Le facteur $a - b$ est strictement positif : tu peux donc diviser les deux membres par lui sans changer le sens de l'inégalité. Que reste-t-il à montrer ?
5. Il reste $4a^3 \ge a^3 + a^2 b + ab^2 + b^3$. Compare $a^3$ à chacun des quatre termes de droite, un par un.

## Solution

**Faire apparaître le facteur commun.**

L'identité à connaître est

$$a^4 - b^4 = (a - b)\left(a^3 + a^2 b + a b^2 + b^3\right) .$$

On peut la vérifier en développant : dans le produit, presque tout se simplifie deux à deux,

$$(a-b)(a^3 + a^2b + ab^2 + b^3) = \underbrace{a^4 + a^3b + a^2b^2 + ab^3}_{a \times \ldots} - \underbrace{(a^3 b + a^2 b^2 + a b^3 + b^4)}_{b \times \ldots} = a^4 - b^4 . $$

(C'est le cas $n = 3$ de l'identité générale $a^{n+1} - b^{n+1} = (a-b)(a^n + a^{n-1}b + \cdots + b^n)$.)

**Diviser par $a - b$.**

Comme $a > b$, on a $a - b > 0$. Diviser les deux membres d'une inégalité par un nombre strictement positif ne change pas son sens. L'inégalité à démontrer est donc équivalente à

$$4a^3 \ \ge\ a^3 + a^2 b + a b^2 + b^3 . \qquad (\star)$$

**Comparer terme à terme.**

Utilisons maintenant $a > b > 0$. Les quatre comparaisons suivantes sont immédiates :

- $a^3 \ge a^3$ (c'est une égalité) ;
- $a^3 > a^2 b$, car en divisant par $a^2 > 0$ cela revient à $a > b$ ;
- $a^3 > a b^2$, car en divisant par $a > 0$ cela revient à $a^2 > b^2$, vrai puisque $a > b > 0$ ;
- $a^3 > b^3$, car la fonction cube est croissante et $a > b$.

En additionnant ces quatre inégalités, le membre de gauche donne $4a^3$ et celui de droite donne exactement $a^3 + a^2b + ab^2 + b^3$. On obtient donc $(\star)$, et même en version stricte.

**Conclusion.**

$$\boxed{4a^3(a-b) \ \ge\ a^4 - b^4 \qquad \text{pour tous } a > b > 0 .}$$

En fait l'inégalité est même **strictement** vérifiée : les trois dernières comparaisons étant strictes, on a $4a^3 > a^3 + a^2b + ab^2 + b^3$, donc $4a^3(a-b) > a^4 - b^4$.

**Une lecture géométrique.** Le nombre $\dfrac{a^4 - b^4}{a - b}$ est la pente de la droite qui joint les points d'abscisses $b$ et $a$ sur la courbe de $x \mapsto x^4$. L'inégalité dit que cette pente est inférieure à $4a^3$, qui est la pente de la tangente au point d'abscisse $a$. C'est la convexité de la fonction $x \mapsto x^4$, redémontrée ici à la main.

## Going further

Montrer de la même manière que, pour $a > b > 0$ et tout entier $n \ge 1$,
$$n\,a^{n-1}(a - b) \ \ge\ a^n - b^n \ \ge\ n\,b^{n-1}(a-b) .$$
