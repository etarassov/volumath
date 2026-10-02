---
id: "2211"
title: "Des triplets pythagoriciens à partir d'une fraction"
grade: 11
theme: arithmetic
difficulty: 4
duration_min: 35
tags: [triplet-pythagoricien, trigonometrie, parametrage, identite]
adapted_from: null
see_also: ["0782"]
same_as: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Advanced, Trigonometry #1"
  reference: "Handout-834-918.pdf, problème 10 « Pythagorean Triples via Uniformization »"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-834-918.pdf"
---

## Statement

On appelle **triplet pythagoricien** un triplet $(a, b, c)$ d'entiers strictement positifs tel que $a^2 + b^2 = c^2$. Le plus connu est $(3, 4, 5)$.

On rappelle que si $t = \tan\dfrac{\theta}{2}$, alors

$$\sin\theta = \frac{2t}{1 + t^2} \qquad \text{et} \qquad \cos\theta = \frac{1 - t^2}{1 + t^2}.$$

Soient $p$ et $q$ deux entiers tels que $0 < p < q$. On note $\theta$ l'unique angle de $]0\,;\,\dfrac{\pi}{2}[$ tel que $\tan\dfrac{\theta}{2} = \dfrac{p}{q}$.

1. Exprimer $\sin\theta$ et $\cos\theta$ à l'aide de $p$ et de $q$.
2. En déduire un triplet pythagoricien construit à partir de $p$ et de $q$, puis vérifier directement par le calcul que ce triplet convient.
3. Quels triplets obtient-on pour $(p, q) = (1, 2)$, $(1, 3)$, $(2, 3)$ et $(1, 4)$ ?

## Hints

1. Remplace simplement $t$ par $\dfrac{p}{q}$ dans les deux formules, puis multiplie le numérateur et le dénominateur par $q^2$ pour faire disparaître les fractions étagées.
2. Un triangle rectangle d'hypoténuse $1$ a pour côtés de l'angle droit $\sin\theta$ et $\cos\theta$. Que se passe-t-il si on agrandit ce triangle d'un facteur bien choisi ?
3. Le facteur d'agrandissement à prendre est le dénominateur commun des deux fractions.
4. Pour la vérification directe, développe $(2pq)^2 + \left(q^2 - p^2\right)^2$ et cherche à reconnaître un carré.

## Solution

**1. Le sinus et le cosinus.**

On remplace $t$ par $\dfrac{p}{q}$ :

$$\sin\theta = \frac{2 \times \dfrac{p}{q}}{1 + \dfrac{p^2}{q^2}} = \frac{\dfrac{2p}{q}}{\dfrac{q^2 + p^2}{q^2}} = \frac{2p}{q} \times \frac{q^2}{p^2 + q^2} = \frac{2pq}{p^2 + q^2},$$

$$\cos\theta = \frac{1 - \dfrac{p^2}{q^2}}{1 + \dfrac{p^2}{q^2}} = \frac{\dfrac{q^2 - p^2}{q^2}}{\dfrac{q^2 + p^2}{q^2}} = \frac{q^2 - p^2}{p^2 + q^2}.$$

Les deux quantités sont bien strictement positives, puisque $0 < p < q$.

**2. Le triplet.**

Considérons le triangle rectangle d'hypoténuse $1$ dont un angle aigu vaut $\theta$. Ses deux côtés de l'angle droit mesurent $\sin\theta$ et $\cos\theta$, c'est-à-dire

$$\frac{2pq}{p^2+q^2} \qquad \text{et} \qquad \frac{q^2-p^2}{p^2+q^2}.$$

Ces deux fractions ont le même dénominateur $p^2 + q^2$. Agrandissons donc le triangle dans le rapport $p^2 + q^2$ : les trois longueurs sont multipliées par ce facteur, et le triangle reste rectangle. On obtient un triangle rectangle de côtés

$$a = 2pq, \qquad b = q^2 - p^2, \qquad c = p^2 + q^2 .$$

Ce sont trois entiers strictement positifs.

**La vérification directe.**

$$a^2 + b^2 = (2pq)^2 + \left(q^2 - p^2\right)^2 = 4p^2q^2 + q^4 - 2p^2q^2 + p^4 = p^4 + 2p^2q^2 + q^4 .$$

Or

$$c^2 = \left(p^2 + q^2\right)^2 = p^4 + 2p^2q^2 + q^4 .$$

Les deux résultats sont identiques, donc $a^2 + b^2 = c^2$ : **$(2pq,\; q^2 - p^2,\; p^2+q^2)$ est bien un triplet pythagoricien pour tous entiers $0 < p < q$.**

**3. Quelques exemples.**

| $p$ | $q$ | $a = 2pq$ | $b = q^2 - p^2$ | $c = p^2+q^2$ | triplet |
|---|---|---|---|---|---|
| 1 | 2 | 4 | 3 | 5 | $(4, 3, 5)$ |
| 1 | 3 | 6 | 8 | 10 | $(6, 8, 10)$ |
| 2 | 3 | 12 | 5 | 13 | $(12, 5, 13)$ |
| 1 | 4 | 8 | 15 | 17 | $(8, 15, 17)$ |

On reconnaît le triangle $3$, $4$, $5$, puis son double $6$, $8$, $10$, puis les triangles $5$, $12$, $13$ et $8$, $15$, $17$.

**D'où vient l'idée ?**

Si $(a, b, c)$ est un triplet pythagoricien, le triangle de côtés $\dfrac{a}{c}$, $\dfrac{b}{c}$ et $1$ est rectangle d'hypoténuse $1$ : le sinus et le cosinus de ses angles aigus sont donc des nombres **rationnels**. La construction ci-dessus fait exactement le chemin inverse : on part d'un nombre rationnel $\dfrac pq$, on fabrique un angle dont le sinus et le cosinus sont rationnels, et on agrandit pour revenir à des entiers.

**Ce qu'il faut retenir.** Une substitution trigonométrique, faite pour simplifier des calculs d'angles, fournit ici une machine à produire des triangles rectangles à côtés entiers : il suffit de choisir deux entiers $p < q$.

## Going further

1. Montrer réciproquement que si $(a, b, c)$ est un triplet pythagoricien, alors le nombre $t = \dfrac{b}{a + c}$ est rationnel, et que la construction ci-dessus appliquée à ce $t$ redonne un triangle semblable au triangle de départ.
2. Pour quels couples $(p, q)$ le triplet obtenu est-il **primitif**, c'est-à-dire avec $a$, $b$ et $c$ sans diviseur commun autre que $1$ ? Comparer les lignes $(1,2)$ et $(1,3)$ du tableau.
3. Existe-t-il un triplet pythagoricien dont les trois nombres sont impairs ?
4. Trouver tous les triplets pythagoriciens dont l'hypoténuse vaut $25$.
