---
id: "8747"
title: "Vingt cartes et l'écart entre les jumelles"
grade: 9
theme: combinatorics
difficulty: 4
duration_min: 35
tags: [parite, double comptage, positions, invariant]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2024"
  reference: "poly_valbonne_2024.pdf, groupe A, « Invariants/coloriages » (Lucile et Quentin), exercice 4"
  url: "https://maths-olympiques.fr/wp-content/uploads/2024/09/poly_valbonne_2024.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/poly_valbonne_2024.pdf"
---

## Statement

On dispose de $20$ cartes. Sur chaque carte est écrit un chiffre, et chaque chiffre de $0$ à $9$
apparaît sur exactement deux cartes.

On veut aligner ces $20$ cartes côte à côte de façon que, pour chaque chiffre $i$, il y ait
**exactement $i$ cartes** entre les deux cartes portant le chiffre $i$.

Par exemple, les deux cartes portant un $0$ devraient être voisines, et les deux cartes portant
un $3$ devraient être séparées par exactement trois autres cartes.

Est-ce possible ?

## Hints

1. Numérote les $20$ emplacements de la rangée de $1$ à $20$, de gauche à droite.
2. Pour un chiffre $k$, note $p_k$ l'emplacement de la carte de gauche portant ce chiffre. Où se
   trouve alors l'autre carte portant $k$ ?
3. Calcule de deux façons différentes la somme des $20$ numéros d'emplacement.
4. La première façon est directe : $1 + 2 + \cdots + 20$. La seconde consiste à regrouper les
   emplacements deux par deux, un groupe par chiffre.
5. Compare les deux résultats. Quelque chose doit être à la fois pair et impair.

## Solution

**La réponse est non : un tel rangement n'existe pas.**

**Mise en place.**

Numérotons les $20$ emplacements de la rangée de $1$ à $20$, de gauche à droite.

Supposons qu'un rangement convenable existe. Pour chaque chiffre $k$ allant de $0$ à $9$,
appelons $p_k$ le numéro de l'emplacement de la carte de gauche portant le chiffre $k$.

La condition de l'énoncé dit qu'il y a exactement $k$ cartes entre les deux cartes portant $k$.
Ces $k$ cartes occupent les emplacements $p_k + 1$, $p_k + 2$, …, $p_k + k$. La seconde carte
portant $k$ se trouve donc à l'emplacement
$$p_k + k + 1 .$$

**Premier calcul de la somme des emplacements.**

Les $20$ cartes occupent les $20$ emplacements, chacun une fois. La somme de tous les numéros
d'emplacement vaut donc
$$1 + 2 + \cdots + 20 = \frac{20 \times 21}{2} = 210 .$$

**Second calcul de la même somme.**

Regroupons maintenant les emplacements par chiffre. Pour chaque $k$, les deux cartes portant
$k$ occupent les emplacements $p_k$ et $p_k + k + 1$, dont la somme vaut
$$p_k + (p_k + k + 1) = 2p_k + k + 1 .$$

Chaque emplacement est compté une fois et une seule dans ce découpage, puisque chaque carte
porte un chiffre et un seul. En additionnant pour $k$ allant de $0$ à $9$ :
$$210 = \sum_{k=0}^{9} (2p_k + k + 1) = 2\sum_{k=0}^{9} p_k \;+\; \sum_{k=0}^{9} (k+1) .$$

La seconde somme est simplement $1 + 2 + \cdots + 10 = 55$. Donc
$$210 = 2\,(p_0 + p_1 + \cdots + p_9) + 55 .$$

**La contradiction.**

On en tire
$$2\,(p_0 + p_1 + \cdots + p_9) = 210 - 55 = 155 .$$

Le membre de gauche est le double d'un entier, donc il est pair. Le membre de droite, $155$, est
impair.

C'est impossible. L'hypothèse de départ était donc fausse : **on ne peut pas ranger les $20$
cartes de la façon demandée.**

## Going further

1. Refais exactement le même calcul avec seulement les chiffres de $0$ à $3$, c'est-à-dire $8$
   cartes. La parité ne bloque plus. Trouve alors un rangement qui convient. *Une réponse
   possible : $2\;3\;1\;2\;1\;3\;0\;0$.*
2. Reprends le calcul avec les chiffres de $0$ à $n$, donc $2(n+1)$ cartes. Montre que l'égalité
   devient
   $$2\,(p_0 + p_1 + \cdots + p_n) = \frac{(n+1)(3n+4)}{2} .$$
   Pour quelles valeurs de $n$ le membre de droite est-il impair ? Vérifie que $n = 9$ en fait
   partie.
3. Quand la parité ne bloque pas, cela ne prouve pas pour autant qu'un rangement existe. Quelle
   est la différence entre « ce raisonnement n'interdit rien » et « c'est possible » ?
