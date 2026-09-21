---
id: "8314"
title: "Quand n² + 6n + 1 est-il un carré parfait ?"
grade: 10
theme: arithmetic
difficulty: 4
duration_min: 30
tags: [carre-parfait, factorisation, equation-diophantienne, diviseurs]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2020, cours du Groupe A"
  reference: "Polycopie-Valbonne-2020-v2.pdf, Groupe A, « Découverte des Mathématiques » (Antoine), exercice 4"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Polycopie-Valbonne-2020-v2.pdf"
---

## Statement

Déterminer tous les entiers relatifs $n$ pour lesquels

$$n^2 + 6n + 1$$

est un carré parfait, c'est-à-dire le carré d'un entier.

## Hints

1. Commence par essayer quelques valeurs, positives et négatives : $n = 0$, $n = 1$, $n = -6$, $n = -7$, $n = 5$. Tu trouveras deux réponses assez vite ; toute la difficulté est de montrer qu'il n'y en a pas d'autres.
2. Le début $n^2 + 6n$ ressemble à celui d'un carré. Complète-le : que vaut $(n+3)^2$ ?
3. Pose $u = n + 3$. L'expression devient $u^2 - 8$. On cherche donc les entiers $u$ et $m$ tels que $u^2 - 8 = m^2$.
4. Fais passer tout d'un côté : $u^2 - m^2 = 8$. Reconnais une identité remarquable.
5. $(u-m)(u+m) = 8$. Les deux facteurs sont des entiers dont le produit vaut $8$, mais ils ne peuvent pas prendre n'importe quelles valeurs : que peux-tu dire de leur **parité** ?

## Solution

**On complète le carré.**

Comme $(n+3)^2 = n^2 + 6n + 9$, on a

$$n^2 + 6n + 1 = (n+3)^2 - 8 .$$

Posons $u = n + 3$. Dire que $n^2 + 6n + 1$ est un carré parfait revient à dire qu'il existe un
entier $m \geqslant 0$ tel que

$$u^2 - 8 = m^2 .$$

**On factorise.**

L'équation se réécrit $u^2 - m^2 = 8$, c'est-à-dire

$$(u - m)(u + m) = 8 .$$

**Les deux facteurs ont la même parité.**

Notons $A = u - m$ et $B = u + m$. Alors

$$A + B = 2u ,$$

qui est pair. Deux entiers dont la somme est paire sont soit tous les deux pairs, soit tous les
deux impairs. Or leur produit vaut $8$, qui est pair : ils ne peuvent pas être tous les deux
impairs. Donc **$A$ et $B$ sont tous les deux pairs**.

**On énumère.**

Il faut donc écrire $8$ comme produit de deux entiers pairs. En tenant compte des signes, il n'y
a que deux façons :

$$8 = 2 \times 4 \qquad \text{et} \qquad 8 = (-2) \times (-4) ,$$

à l'ordre près des deux facteurs.

*Premier cas : $\{A, B\} = \{2, 4\}$.* Alors $A + B = 6 = 2u$, donc $u = 3$, et
$n = u - 3 = 0$.

*Second cas : $\{A, B\} = \{-2, -4\}$.* Alors $A + B = -6 = 2u$, donc $u = -3$, et
$n = u - 3 = -6$.

*(Les autres décompositions $8 = 1 \times 8$ et $8 = (-1) \times (-8)$ sont exclues, car un des
facteurs y est impair.)*

**Vérification.**

- Pour $n = 0$ : $0 + 0 + 1 = 1 = 1^2$. C'est bien un carré parfait.
- Pour $n = -6$ : $36 - 36 + 1 = 1 = 1^2$. C'est bien un carré parfait.

**Conclusion.** Les seuls entiers relatifs solutions sont

$$\boxed{n = 0 \quad \text{et} \quad n = -6} .$$

## Going further

Une seconde méthode consiste à **encadrer** l'expression entre deux carrés consécutifs. Pour
$n > 2$ on a

$$(n+2)^2 = n^2 + 4n + 4 < n^2 + 6n + 1 < n^2 + 6n + 9 = (n+3)^2 ,$$

donc $n^2+6n+1$ est strictement compris entre deux carrés consécutifs et ne peut pas être un
carré. Un encadrement analogue règle le cas $n < -8$, et il ne reste plus qu'à tester à la main
les onze valeurs de $-8$ à $2$. C'est correct, mais plus long que la factorisation ci-dessus.
