---
id: "3619"
title: "Deux racines entières, l'une multiple de l'autre"
grade: 10
theme: algebra
difficulty: 3
duration_min: 25
tags: [equation-du-second-degre, factorisation, diviseurs, somme-et-produit]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), AMC 8 training, Berkeley mini Math Tournament 2025"
  reference: "Handout-5091-5540.pdf, problème 11 de l'Individual Round (corrigé dans Handout-5092-5540.pdf)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-5091-5540.pdf"
---

## Statement

On s'intéresse aux entiers $n$ pour lesquels l'équation

$$x^2 - nx + 80 = 0$$

possède deux solutions entières strictement positives, l'une étant un multiple entier de l'autre.

Trouve tous ces entiers $n$, puis donne leur somme.

## Hints

1. Si $p$ et $q$ sont les deux solutions, on peut factoriser $x^2 - nx + 80$ sous la forme $(x - p)(x - q)$. Développe et compare.
2. Tu obtiens deux conditions : une sur $p + q$ et une sur $pq$. Laquelle limite le plus les possibilités ?
3. Écris $q = kp$ avec $k$ entier, et reporte dans la condition sur le produit.

## Solution

**Étape 1. Traduire « les solutions sont $p$ et $q$ ».**

Si l'équation $x^2 - nx + 80 = 0$ a pour solutions $p$ et $q$, alors le polynôme se factorise :

$$x^2 - nx + 80 = (x - p)(x - q)$$

Développons le membre de droite :

$$(x-p)(x-q) = x^2 - (p+q)x + pq$$

En comparant les deux écritures terme à terme :

$$p + q = n \qquad \text{et} \qquad pq = 80$$

**Étape 2. Utiliser la condition « l'une est un multiple de l'autre ».**

Quitte à échanger les noms, supposons que $q$ soit un multiple de $p$ : $q = kp$ avec $k$ entier, $k \geqslant 1$.

La condition $pq = 80$ devient

$$k p^2 = 80$$

Comme $p$ et $k$ sont des entiers strictement positifs, $p^2$ doit être un diviseur de $80$.

**Étape 3. Trouver les valeurs possibles de $p$.**

Les carrés parfaits qui divisent $80 = 2^4 \times 5$ sont $1$, $4$ et $16$. Donc

$$p = 1, \quad p = 2 \quad \text{ou} \quad p = 4$$

Pour chacun, on calcule $k = \dfrac{80}{p^2}$ puis $q = kp$ et $n = p + q$ :

| $p$ | $k = 80/p^2$ | $q = kp$ | $n = p + q$ |
|---|---|---|---|
| $1$ | $80$ | $80$ | $81$ |
| $2$ | $20$ | $40$ | $42$ |
| $4$ | $5$ | $20$ | $24$ |

**Étape 4. Vérifier.**

- $x^2 - 81x + 80 = (x-1)(x-80)$ : les solutions $1$ et $80$ sont entières, positives, et $80 = 80 \times 1$.
- $x^2 - 42x + 80 = (x-2)(x-40)$ : $40 = 20 \times 2$.
- $x^2 - 24x + 80 = (x-4)(x-20)$ : $20 = 5 \times 4$.

Toutes les autres factorisations de $80$ en deux facteurs, comme $5 \times 16$ ou $8 \times 10$, échouent : ni $16$ n'est un multiple de $5$, ni $10$ un multiple de $8$.

**Étape 5. Conclure.**

$$81 + 42 + 24 = 147$$

**Réponse.** Les entiers convenables sont $24$, $42$ et $81$, et leur somme vaut $147$.

## Going further

Le cas $k = 1$ mérite un mot : il correspondrait à deux solutions égales, donc à $p^2 = 80$, ce qui est impossible avec $p$ entier puisque $80$ n'est pas un carré parfait. La condition « l'une est un multiple de l'autre » n'interdit donc pas la racine double en principe, mais elle ne se produit pas ici.

Si on remplaçait $80$ par $144$, on trouverait en plus la solution double $p = q = 12$, donnant $n = 24$.
