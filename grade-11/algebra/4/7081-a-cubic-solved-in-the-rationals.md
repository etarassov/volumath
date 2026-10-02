---
id: "7081"
title: "Une équation de degré 3 résolue dans les rationnels"
grade: 11
theme: algebra
difficulty: 4
duration_min: 40
tags: [equation, degre-trois, rationnels, fraction-irreductible, lemme-de-gauss, factorisation]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique junior de Cachan 2011, groupe des avancés"
  reference: "stage_junior_2011.pdf, « Arithmétique », TD du groupe des avancés, exercice 8"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_junior_2011.pdf"
---

## Statement

Trouver tous les nombres **rationnels** $x$ qui vérifient

$$5x^3 + 3x^2 + 3x - 2 = 0.$$

## Hints

1. Un rationnel s'écrit $x = \dfrac{p}{q}$ avec $p$ et $q$ entiers, $q \neq 0$, et la fraction **irréductible**, c'est-à-dire $p$ et $q$ premiers entre eux.
2. Remplace $x$ par $\dfrac{p}{q}$ dans l'équation, puis multiplie tout par $q^3$ pour ne plus avoir que des entiers.
3. Dans l'égalité obtenue, mets $q$ en facteur dans tous les termes où il apparaît. Tu obtiens $5p^3 = q \times (\text{un entier})$, donc $q$ divise $5p^3$. Comme $q$ n'a aucun facteur commun avec $p$, que peux-tu dire ?
4. Recommence en isolant cette fois le terme en $q^3$ : tu trouveras que $p$ divise $2$.
5. Il ne reste que huit candidats. Teste-les.
6. Une fois la solution trouvée, tu peux factoriser le polynôme pour vérifier qu'il n'y en a pas d'autre, même parmi les nombres réels.

## Solution

**Mise en place.** Supposons que $x$ soit un rationnel solution et écrivons-le sous forme irréductible

$$x = \frac{p}{q}, \qquad p \in \mathbb{Z}, \quad q \in \mathbb{Z}^*, \quad \mathrm{PGCD}(p, q) = 1.$$

En remplaçant dans l'équation puis en multipliant par $q^3$, on obtient une égalité entre entiers :

$$(\star) \qquad 5p^3 + 3p^2 q + 3p q^2 - 2q^3 = 0.$$

**Ce que divise $q$.** Isolons le seul terme de $(\star)$ où $q$ ne figure pas :

$$5p^3 = -3p^2 q - 3p q^2 + 2q^3 = q\left(-3p^2 - 3pq + 2q^2\right).$$

Le membre de droite est un multiple de $q$, donc $q$ divise $5p^3$. Or $p$ et $q$ sont premiers entre eux, donc $q$ et $p^3$ le sont aussi. Le lemme de Gauss donne alors $q \mid 5$, c'est-à-dire

$$q \in \{-5, -1, 1, 5\}.$$

**Ce que divise $p$.** Isolons cette fois le seul terme de $(\star)$ où $p$ ne figure pas :

$$2q^3 = 5p^3 + 3p^2 q + 3p q^2 = p\left(5p^2 + 3pq + 3q^2\right).$$

Donc $p$ divise $2q^3$, et comme $p$ est premier avec $q^3$, le lemme de Gauss donne $p \mid 2$, c'est-à-dire

$$p \in \{-2, -1, 1, 2\}.$$

**Les candidats.** Quitte à changer les signes de $p$ et de $q$ en même temps, on peut supposer $q > 0$, donc $q \in \{1, 5\}$. Les valeurs possibles de $x$ sont donc

$$1, \quad -1, \quad 2, \quad -2, \quad \frac{1}{5}, \quad -\frac{1}{5}, \quad \frac{2}{5}, \quad -\frac{2}{5}.$$

Il n'y a plus qu'à les essayer. En notant $P(x) = 5x^3 + 3x^2 + 3x - 2$ :

| $x$ | $1$ | $-1$ | $2$ | $-2$ | $\frac15$ | $-\frac15$ | $\frac25$ | $-\frac25$ |
|---|---|---|---|---|---|---|---|---|
| $P(x)$ | $9$ | $-7$ | $56$ | $-36$ | $-\frac{31}{25}$ | $-\frac{63}{25}$ | $0$ | $-\frac{76}{25}$ |

Une seule valeur annule $P$.

**Vérification.** Pour $x = \dfrac{2}{5}$ :

$$5 \times \frac{8}{125} + 3 \times \frac{4}{25} + 3 \times \frac{2}{5} - 2 = \frac{8}{25} + \frac{12}{25} + \frac{30}{25} - \frac{50}{25} = 0. \quad \checkmark$$

**Conclusion.** La seule solution rationnelle de l'équation est

$$\boxed{x = \frac{2}{5}}.$$

## Going further

Maintenant qu'on connaît une racine, on peut factoriser. Comme $\dfrac{2}{5}$ est racine, le polynôme se met sous la forme $(5x - 2) \times Q(x)$ avec $Q$ de degré $2$. En développant, on trouve

$$5x^3 + 3x^2 + 3x - 2 = (5x - 2)\left(x^2 + x + 1\right).$$

Le facteur $x^2 + x + 1$ a pour discriminant $1 - 4 = -3 < 0$, donc il ne s'annule pour aucun réel. Autrement dit $\dfrac{2}{5}$ n'est pas seulement la seule racine rationnelle : c'est la seule racine **réelle**.

La méthode employée ici ne dépend pas de l'équation choisie. Pour une équation polynomiale quelconque à coefficients entiers

$$c_n x^n + \ldots + c_1 x + c_0 = 0,$$

le même raisonnement montre que toute racine rationnelle $\dfrac{p}{q}$ écrite sous forme irréductible vérifie $p \mid c_0$ et $q \mid c_n$. Cela ramène toujours la recherche des racines rationnelles à une liste finie de candidats à tester.
