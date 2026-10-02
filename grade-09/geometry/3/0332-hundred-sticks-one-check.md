---
id: "0332"
title: "Les cent tiges du jeu de construction"
grade: 9
theme: geometry
difficulty: 3
duration_min: 25
tags: [inegalite-triangulaire, triangle, cas-extreme, demonstration]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-18
source:
  name: "Математический кружок (8–9 класс), первое полугодие, сост. Е. А. Асташов, Д. А. Удимов, МГУ, 2015"
  reference: "AU.pdf, листок 14, задача 6"
  url: "https://mmmf.msu.ru/for_schools/"
  original_language: "ru"
  local_copy: "sources/originals/mmmf-msu/AU.pdf"
---

## Statement

Pierre a reçu un jeu de construction qui contient $100$ tiges, toutes de longueurs différentes. La notice affirme :

> « Avec trois tiges quelconques de la boîte, on peut toujours construire un triangle. »

Pierre veut savoir si la notice dit vrai. Une **vérification** consiste à choisir trois tiges et à regarder si elles forment un triangle. Dans la boîte, les tiges sont déjà rangées de la plus courte à la plus longue, et Pierre peut donc choisir les trois tiges qu'il veut.

Quel est le plus petit nombre de vérifications qui permet à Pierre, à coup sûr, soit de démontrer que la notice dit vrai, soit de démontrer qu'elle se trompe ?

## Hints

1. À quelle condition trois longueurs données permettent-elles de construire un triangle ? Écris cette condition en appelant $x \leqslant y \leqslant z$ les trois longueurs.
2. Parmi tous les triplets de tiges, lequel a le plus de mal à former un triangle ? Celui où les deux petites longueurs sont les plus petites possibles et où la grande est la plus grande possible.
3. Essaie la vérification sur les **deux tiges les plus courtes et la tige la plus longue**.
4. Suppose que ces trois-là forment un triangle. Prends alors trois autres tiges quelconques, de longueurs $x \leqslant y \leqslant z$. Compare $x$ et $y$ aux deux plus courtes, et $z$ à la plus longue.
5. N'oublie pas de dire aussi pourquoi $0$ vérification ne suffirait pas.

## Solution

**Le rappel utile.** Trois longueurs $x \leqslant y \leqslant z$ permettent de construire un triangle exactement quand
$$x + y > z,$$
c'est-à-dire quand la plus grande longueur est strictement inférieure à la somme des deux autres.

**Les notations.** Rangeons les longueurs des $100$ tiges dans l'ordre croissant :
$$a_1 < a_2 < a_3 < \dots < a_{100}.$$
Ainsi $a_1$ et $a_2$ sont les deux tiges les plus courtes et $a_{100}$ est la plus longue.

**Étape 1. Une seule vérification suffit : celle du triplet $(a_1, a_2, a_{100})$.**

Pierre prend les deux tiges les plus courtes et la plus longue, et regarde si elles forment un triangle. Deux cas se présentent.

**Cas 1 : elles ne forment pas de triangle.** Pierre a trouvé trois tiges de la boîte qui ne font pas un triangle. La notice est donc fausse, et c'est démontré.

**Cas 2 : elles forment un triangle**, c'est-à-dire
$$a_1 + a_2 > a_{100}.$$

Montrons qu'alors **tous** les triplets conviennent. Prenons trois tiges quelconques, de longueurs
$$a_i < a_j < a_k \qquad \text{avec } i < j < k.$$

- Comme $i \geqslant 1$, on a $a_i \geqslant a_1$.
- Comme $j \geqslant 2$ (car $j$ est strictement plus grand que $i \geqslant 1$), on a $a_j \geqslant a_2$.
- Comme $k \leqslant 100$, on a $a_k \leqslant a_{100}$.

En rassemblant :
$$a_i + a_j \;\geqslant\; a_1 + a_2 \;>\; a_{100} \;\geqslant\; a_k .$$

Donc $a_i + a_j > a_k$ : ces trois tiges forment bien un triangle. Comme le triplet était quelconque, la notice dit vrai, et c'est démontré.

Dans les deux cas, **une seule vérification a suffi** pour trancher.

**Étape 2. Zéro vérification ne suffirait pas.**

Sans faire aucune vérification, Pierre ne peut rien conclure, car les deux réponses sont possibles :

- avec des tiges de $1$, $2$, $3$, ..., $100$ centimètres, on a $1 + 2 = 3 \leqslant 100$, donc la notice est fausse ;
- avec des tiges de $100$, $101$, $102$, ..., $199$ centimètres, on a $100 + 101 = 201 > 199$, donc la notice est vraie.

Pierre a donc besoin d'au moins une vérification.

**Réponse : une seule vérification suffit, celle qui porte sur les deux tiges les plus courtes et la tige la plus longue. Le plus petit nombre cherché est donc $1$.**

*L'idée à retenir : parmi tous les triplets, celui-là est le plus difficile à satisfaire. S'il passe, tous les autres passent.*

## Going further

1. La notice affirme maintenant : « avec trois tiges quelconques, on peut construire un triangle **rectangle** ». Combien de vérifications faut-il cette fois ?
2. Les tiges ne sont plus rangées et Pierre ne peut pas comparer deux tiges sans faire une vérification. Le raisonnement précédent tient-il encore ?
3. Une boîte contient $n$ tiges de longueurs différentes telles que trois tiges quelconques **ne** forment **jamais** de triangle. Si la plus courte mesure $1$ cm, quelle est la plus petite longueur possible pour la plus longue tige lorsque $n = 10$ ?
