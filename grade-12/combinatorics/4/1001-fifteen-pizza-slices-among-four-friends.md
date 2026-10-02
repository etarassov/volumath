---
id: "1001"
title: "Quinze parts de pizza pour quatre amis"
grade: 12
theme: combinatorics
difficulty: 4
duration_min: 30
tags: [denombrement, combinaisons, bijection, partage]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Advanced, Intro to combinatorics and probability"
  reference: "Handout-4796-4987.pdf, exercices 20 et 21 (réponses dans Handout-4797-4987.pdf)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-4796-4987.pdf"
---

## Statement

Une pizza est coupée en $15$ parts identiques. Quatre amis, Alice, Basile, Chloé et David, se partagent la pizza et la finissent entièrement.

1. De combien de façons peuvent-ils se la partager ? (Un partage est la donnée du nombre de parts de chacun. Un ami peut très bien ne rien manger : « Alice mange les $15$ parts et les autres rien » est un partage valable.)
2. Même question si l'on impose que **chacun mange au moins une part**.

## Hints

1. Un partage, c'est un quadruplet d'entiers $(a, b, c, d)$ avec $a + b + c + d = 15$. Commencez par un cas plus petit que vous savez compter à la main : $3$ parts pour $2$ amis, puis $4$ parts pour $3$ amis. Combien trouvez-vous ?
2. Posez les $15$ parts en ligne. Pour décrire un partage, il suffit de dire où l'on coupe la file : les premières parts pour Alice, les suivantes pour Basile, etc.
3. Il faut donc placer $3$ séparateurs. Écrivez une ligne mélangeant $15$ parts et $3$ séparateurs, par exemple
$$\bullet\ \bullet\ |\ \bullet\ \bullet\ \bullet\ \bullet\ |\ |\ \bullet\ \bullet\ \bullet\ \bullet\ \bullet\ \bullet\ \bullet\ \bullet\ \bullet.$$
Quel partage cette ligne décrit-elle ? Combien de symboles y a-t-il en tout ?
4. Pour la question 2, donnez d'abord une part à chacun, puis recommencez avec ce qui reste.

## Solution

### Question 1

Un partage est la donnée de quatre entiers $a, b, c, d \geqslant 0$ (les parts d'Alice, Basile, Chloé et David) tels que
$$a + b + c + d = 15.$$
Il s'agit donc de compter ces quadruplets.

**L'idée : les parts et les séparateurs.**

Alignons les $15$ parts, représentées par des points, et glissons entre elles $3$ séparateurs, représentés par des barres. La règle de lecture est : ce qui est avant la première barre est pour Alice, entre la première et la deuxième pour Basile, entre la deuxième et la troisième pour Chloé, après la troisième pour David.

Par exemple la ligne
$$\bullet\ \bullet\ |\ \bullet\ \bullet\ \bullet\ \bullet\ |\ |\ \bullet\ \bullet\ \bullet\ \bullet\ \bullet\ \bullet\ \bullet\ \bullet\ \bullet$$
se lit : Alice $2$ parts, Basile $4$ parts, Chloé $0$ part, David $9$ parts. Et l'on vérifie $2 + 4 + 0 + 9 = 15$.

Deux barres collées l'une à l'autre signifient qu'un ami ne reçoit rien ; une barre tout au début signifie qu'Alice ne reçoit rien. Tous les cas sont donc bien représentés.

Réciproquement, à chaque partage correspond une et une seule telle ligne : on place les barres aux endroits imposés par $a$, $b$, $c$ et $d$.

Compter les partages revient donc exactement à compter ces lignes.

**Compter les lignes.**

Une ligne est une suite de $15 + 3 = 18$ symboles, dont $3$ sont des barres et $15$ des points. Pour construire une telle ligne, il suffit de choisir **quelles $3$ positions parmi les $18$** portent une barre : tout le reste sera occupé par des points. Il y a donc
$$\binom{18}{3} = \frac{18 \times 17 \times 16}{3 \times 2 \times 1} = \frac{4896}{6} = 816$$
lignes possibles.

**Conclusion.** Il y a $\boxed{816}$ partages possibles.

### Question 2

Chacun doit maintenant recevoir au moins une part.

**L'idée : servir tout le monde d'abord.**

Donnons d'emblée une part à chacun des quatre amis. Il reste $15 - 4 = 11$ parts à répartir, et cette fois plus aucune contrainte : les $11$ parts restantes peuvent aller n'importe où.

Cette opération met en correspondance parfaite les partages de $15$ parts où chacun a au moins une part, et les partages **libres** de $11$ parts entre $4$ amis. En effet :

- d'un partage $(a, b, c, d)$ avec tous les nombres $\geqslant 1$, on tire $(a-1, b-1, c-1, d-1)$, quadruplet d'entiers $\geqslant 0$ de somme $11$ ;
- réciproquement, d'un quadruplet $(a', b', c', d')$ d'entiers $\geqslant 0$ de somme $11$, on tire $(a'+1, b'+1, c'+1, d'+1)$, qui convient.

Les deux opérations se défont l'une l'autre : le nombre de partages cherché est donc le nombre de partages libres de $11$ parts entre $4$ amis.

**Compter.**

On refait le raisonnement de la question 1 avec $11$ points et $3$ barres, soit $14$ symboles :
$$\binom{14}{3} = \frac{14 \times 13 \times 12}{6} = \frac{2184}{6} = 364.$$

**Conclusion.** Il y a $\boxed{364}$ partages où chacun mange au moins une part.

### Pour vérifier le raisonnement

Reprenons le petit cas de l'indication 1 : $3$ parts pour $2$ amis. La formule donne $\binom{3+1}{1} = 4$. À la main : $(3,0)$, $(2,1)$, $(1,2)$, $(0,3)$. Il y en a bien $4$.

## Going further

1. Montrer que le nombre de façons de partager $n$ objets identiques entre $k$ personnes vaut $\binom{n + k - 1}{k - 1}$.
2. Combien y a-t-il de partages de $15$ parts entre $4$ amis où **Alice mange strictement plus que Basile** ? (Indication : comparer avec le nombre de partages où Basile mange strictement plus qu'Alice.)
3. Et si aucun des quatre amis ne peut manger plus de $6$ parts, combien de partages restent possibles ? (La réponse est $180$ ; le chemin passe par un décompte des cas interdits.)
