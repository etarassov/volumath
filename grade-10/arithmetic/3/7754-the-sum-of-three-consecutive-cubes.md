---
id: "7754"
title: "La somme de trois cubes consécutifs est un multiple de 9"
grade: 10
theme: arithmetic
difficulty: 3
duration_min: 30
tags: [cubes, divisibilite, congruences, calcul-litteral]
adapted_from: null
see_also: []
same_as: ["4803"]
created: 2026-09-20
source:
  name: "POFM, stage olympique de Montpellier 2014, cours de Groupe A"
  reference: "stage_ete_2014.pdf, « Groupe A : arithmétique », lundi 25 matin (Nicolas Ségarra), exercice 10"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2014.pdf"
---

## Statement

Montrer que la somme des cubes de trois entiers consécutifs est toujours un multiple de $9$.

Par exemple $3^3 + 4^3 + 5^3 = 27 + 64 + 125 = 216 = 9 \times 24$.

## Hints

1. Appelle les trois entiers $n-1$, $n$ et $n+1$ plutôt que $n$, $n+1$, $n+2$. Le calcul sera nettement plus court, parce que les termes se compensent deux à deux.
2. Développe $(n-1)^3$ et $(n+1)^3$ et additionne-les : beaucoup de termes disparaissent.
3. Tu devrais arriver à $3n^3 + 6n$, soit $3(n^3 + 2n)$. Il reste à montrer que $n^3 + 2n$ est un multiple de $3$.
4. Pour cela, écris $n^3 + 2n = n^3 - n + 3n$, puis factorise $n^3 - n$.

## Solution

**La somme vaut $3(n^3 + 2n)$, et $n^3 + 2n$ est toujours un multiple de $3$, donc la somme est un multiple de $9$.**

**Étape 1 : on choisit bien les noms.**

Notons les trois entiers consécutifs $n-1$, $n$ et $n+1$, où $n$ est un entier. Ce choix, centré sur celui du milieu, rend le calcul symétrique.

**Étape 2 : on développe.**

$$(n-1)^3 = n^3 - 3n^2 + 3n - 1 ,$$
$$(n+1)^3 = n^3 + 3n^2 + 3n + 1 .$$

En additionnant ces deux lignes, les termes en $n^2$ s'annulent, et les constantes aussi :

$$(n-1)^3 + (n+1)^3 = 2n^3 + 6n .$$

On ajoute le cube du milieu :

$$(n-1)^3 + n^3 + (n+1)^3 = 3n^3 + 6n = 3\,(n^3 + 2n) .$$

Il y a donc déjà un facteur $3$. Il en faut un second.

**Étape 3 : $n^3 + 2n$ est un multiple de $3$.**

Écrivons

$$n^3 + 2n = (n^3 - n) + 3n .$$

Le terme $3n$ est un multiple de $3$. Quant à $n^3 - n$, il se factorise :

$$n^3 - n = n(n^2 - 1) = (n-1)\,n\,(n+1) .$$

C'est le produit de trois entiers consécutifs. Parmi trois entiers consécutifs, l'un au moins est un multiple de $3$, donc le produit l'est aussi.

Ainsi $n^3 - n$ et $3n$ sont tous deux multiples de $3$, donc leur somme $n^3 + 2n$ l'est également. Écrivons $n^3 + 2n = 3m$ avec $m$ entier.

**Étape 4 : on conclut.**

$$(n-1)^3 + n^3 + (n+1)^3 = 3\,(n^3+2n) = 3 \times 3m = 9m .$$

**Conclusion : la somme des cubes de trois entiers consécutifs est toujours un multiple de $9$.**

Vérification sur l'exemple : avec $n = 4$, on a $m = (4^3 + 2\times 4)/3 = 72/3 = 24$, et $9 \times 24 = 216$. C'est bien le résultat annoncé.

## Going further

Le résultat est en fait un peu plus fort : la somme vaut $9m$ avec $m = \dfrac{n^3 + 2n}{3}$, et on peut vérifier que $9$ est le meilleur diviseur universel. Pour $n = 1$ la somme vaut $0 + 1 + 8 = 9$ : aucun multiple de $9$ plus grand ne peut donc diviser toutes les sommes.

Une autre voie passe par les restes : le cube d'un entier laisse toujours le reste $0$, $1$ ou $8$ dans la division par $9$, selon que l'entier est multiple de $3$, ou laisse le reste $1$, ou le reste $2$. Trois entiers consécutifs couvrent exactement ces trois cas, et $0 + 1 + 8 = 9$.
