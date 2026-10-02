---
id: "8315"
title: "La somme de deux racines est irrationnelle"
grade: 11
theme: arithmetic
difficulty: 4
duration_min: 35
tags: [irrationnel, raisonnement-par-l-absurde, racine-carree, nombres-premiers]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2020, cours du Groupe A"
  reference: "Polycopie-Valbonne-2020-v2.pdf, Groupe A, « Découverte des Mathématiques » (Antoine), exercice 5. Le corrigé publié s'arrête à « on raisonne de la même manière » ; la démonstration est ici écrite en entier."
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Polycopie-Valbonne-2020-v2.pdf"
---

## Statement

Un nombre réel est dit **rationnel** s'il peut s'écrire comme un quotient de deux entiers, et
**irrationnel** sinon.

Montrer que $\sqrt{2} + \sqrt{3}$ est irrationnel.

## Hints

1. Raisonne par l'absurde : suppose que $\sqrt2 + \sqrt3$ soit rationnel, et cherche une contradiction.
2. Les racines carrées sont pénibles à manipuler. Un réflexe utile : élever au carré.
3. Calcule $(\sqrt2 + \sqrt3)^2$. Le résultat fait apparaître un seul radical. Lequel ?
4. Tu obtiens que $\sqrt6$ serait rationnel. Il reste à démontrer que c'est faux. Reprends la preuve classique de l'irrationalité de $\sqrt2$ et adapte-la.
5. Pour $\sqrt6$ : écris $\sqrt 6 = \tfrac{a}{b}$ avec la fraction irréductible, puis $6b^2 = a^2$, et regarde la divisibilité par $2$, puis par $3$.

## Solution

**Étape 1 : on se ramène à $\sqrt 6$.**

Raisonnons par l'absurde et supposons que $x = \sqrt2 + \sqrt3$ soit rationnel.

Alors $x^2$ est rationnel aussi, puisque le produit de deux rationnels est rationnel. Or

$$x^2 = \left(\sqrt2 + \sqrt3\right)^2 = 2 + 2\sqrt2\sqrt3 + 3 = 5 + 2\sqrt6 .$$

Donc

$$\sqrt 6 = \frac{x^2 - 5}{2}$$

serait rationnel, comme différence puis quotient de rationnels.

Il suffit donc de démontrer que $\sqrt 6$ est irrationnel pour aboutir à une contradiction.

**Étape 2 : $\sqrt 6$ est irrationnel.**

Supposons par l'absurde que $\sqrt6 = \dfrac{a}{b}$ avec $a$ et $b$ entiers, $b \neq 0$, et la
fraction **irréductible**, c'est-à-dire $a$ et $b$ premiers entre eux. On peut toujours se
ramener à ce cas en simplifiant.

En élevant au carré :

$$6 = \frac{a^2}{b^2} , \qquad \text{donc} \qquad a^2 = 6b^2 .$$

*Le facteur 2.* Le nombre $a^2 = 6b^2 = 2 \times (3b^2)$ est pair. Or si $a$ était impair, $a^2$
serait impair (le produit de deux impairs est impair). Donc $a$ est pair : écrivons $a = 2a'$.

En remplaçant : $4a'^2 = 6b^2$, donc

$$2a'^2 = 3b^2 .$$

*Le facteur 2, de nouveau.* Le membre de gauche est pair, donc $3b^2$ est pair. Comme $3$ est
impair, c'est $b^2$ qui est pair, donc $b$ est pair.

*La contradiction.* On a montré que $a$ et $b$ sont tous les deux pairs. Ils ont donc $2$ comme
diviseur commun, ce qui contredit le fait que la fraction $\tfrac{a}{b}$ était irréductible.

Donc $\sqrt6$ n'est pas rationnel.

**Conclusion.**

L'étape 1 montrait que si $\sqrt2 + \sqrt3$ était rationnel, alors $\sqrt6$ le serait. L'étape 2
montre que $\sqrt6$ ne l'est pas. Donc

$$\sqrt2 + \sqrt3 \text{ est irrationnel.}$$

## Going further

Remarquons que l'étape 2 n'a utilisé que le facteur $2$ de $6$ : le même raisonnement montre
que $\sqrt{2k}$ est irrationnel dès que $k$ est impair.

Plus généralement, on peut montrer que $\sqrt{N}$ est irrationnel pour tout entier $N$ qui n'est
pas un carré parfait. L'ingrédient est toujours le même : dans la décomposition en facteurs
premiers de $a^2$, chaque exposant est pair, alors que dans celle de $N b^2$ au moins un exposant
est impair.

Une variante de la preuve de l'étape 2, dite **descente infinie**, consiste à ne pas supposer la
fraction irréductible : de $(a, b)$ on fabrique $(a', b')$ strictement plus petits qui marchent
aussi, et on ne peut pas descendre indéfiniment dans les entiers positifs.
