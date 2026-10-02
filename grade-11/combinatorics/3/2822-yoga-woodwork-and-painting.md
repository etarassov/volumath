---
id: "2822"
title: "Yoga, menuiserie et peinture"
grade: 11
theme: combinatorics
difficulty: 3
duration_min: 25
tags: [denombrement, inclusion-exclusion, ensembles, systeme]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), High School I, Combinatorics II"
  reference: "Handout-1510-1452.pdf, problème 2 d) (d'après AMC 10 B, problème 13)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-1510-1452.pdf"
---

## Statement

Un atelier du mercredi accueille $20$ élèves. Trois activités sont proposées : le yoga, la menuiserie et la peinture.

Chaque élève suit **au moins une** activité, et peut en suivre plusieurs.

- $10$ élèves font du yoga ;
- $13$ élèves font de la menuiserie ;
- $9$ élèves font de la peinture ;
- $9$ élèves suivent **au moins deux** activités.

Combien d'élèves suivent les **trois** activités ?

## Hints

1. Classe les élèves en trois catégories : ceux qui suivent exactement une activité, exactement deux, exactement trois. Donne un nom à chacun de ces trois nombres.
2. Écris ce que signifie « chaque élève suit au moins une activité » avec ces trois nombres.
3. Écris ce que signifie « $9$ élèves suivent au moins deux activités ».
4. Additionne les trois effectifs $10 + 13 + 9$. Un élève qui suit deux activités est compté combien de fois dans cette somme ? Et un élève qui en suit trois ?
5. Tu obtiens trois équations à trois inconnues. Elles se résolvent en quelques lignes.

## Solution

**Nommer ce qu'on cherche.**

Rangeons les $20$ élèves en trois catégories, selon le nombre d'activités qu'ils suivent :

- $u$ = nombre d'élèves suivant **exactement une** activité ;
- $d$ = nombre d'élèves suivant **exactement deux** activités ;
- $t$ = nombre d'élèves suivant **les trois** activités.

C'est $t$ que l'on cherche.

**Première équation : tout le monde est compté une fois.**

Chaque élève suit au moins une activité, donc chaque élève tombe dans exactement une des trois catégories :

$$u + d + t = 20 . \qquad (1)$$

**Deuxième équation : « au moins deux ».**

Suivre au moins deux activités, c'est en suivre exactement deux, ou exactement trois :

$$d + t = 9 . \qquad (2)$$

En reportant $(2)$ dans $(1)$ :

$$u = 20 - 9 = 11 .$$

**Troisième équation : la somme des trois effectifs.**

Additionnons les effectifs des trois activités :

$$10 + 13 + 9 = 32 .$$

Que compte cette somme ? Un élève est compté une fois pour chaque activité qu'il suit :

- un élève d'une seule activité est compté $1$ fois ;
- un élève de deux activités est compté $2$ fois ;
- un élève des trois activités est compté $3$ fois.

Donc

$$u + 2d + 3t = 32 . \qquad (3)$$

**Résoudre.**

On connaît déjà $u = 11$. L'équation $(3)$ donne

$$11 + 2d + 3t = 32, \qquad \text{soit} \qquad 2d + 3t = 21 .$$

L'équation $(2)$ donne $d = 9 - t$. En remplaçant :

$$2(9 - t) + 3t = 21 \quad \Longleftrightarrow \quad 18 - 2t + 3t = 21 \quad \Longleftrightarrow \quad t = 3 .$$

**Vérification.** Avec $t = 3$, on trouve $d = 6$ et $u = 11$. Le total des élèves vaut $11 + 6 + 3 = 20$ : correct. La somme des effectifs vaut $11 + 2 \times 6 + 3 \times 3 = 11 + 12 + 9 = 32$ : correct. Et les élèves suivant au moins deux activités sont $6 + 3 = 9$ : correct.

**Conclusion.** Exactement $3$ élèves suivent les trois activités.

**Ce qu'il faut retenir.** L'idée centrale est le comptage multiple : en additionnant $10 + 13 + 9$, on ne compte pas les élèves, on compte les **inscriptions**. Un élève inscrit à trois activités apporte trois inscriptions. Comparer le nombre d'inscriptions au nombre d'élèves est exactement ce qui permet de conclure.

## Going further

1. Combien d'élèves suivent exactement deux activités ? Ce nombre est-il déterminé par l'énoncé, ou aurait-il pu être différent ?
2. L'énoncé ne dit pas combien d'élèves font à la fois du yoga et de la menuiserie. Peut-on le déterminer ? Sinon, entre quelles valeurs ce nombre peut-il varier ?
3. La formule du crible pour trois ensembles s'écrit
   $$|A \cup B \cup C| = |A| + |B| + |C| - |A \cap B| - |B \cap C| - |C \cap A| + |A \cap B \cap C|.$$
   Retrouver le résultat de l'exercice avec cette formule, et expliquer pourquoi le dernier terme est ajouté et non retranché.
