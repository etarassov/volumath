---
id: "11453"
title: "n élèves, n cours, un cours à supprimer"
grade: 10
theme: combinatorics
difficulty: 5
duration_min: 50
tags: [raisonnement-par-l-absurde, cycle, ensembles, demonstration]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2023-2024 n° 4 (combinatoire)"
  reference: "2023-04_Sujet-envoi-4-2023-2024.pdf, Exercices Juniors, exercice 6 ; corrigé 2024-03_corrige-envoi-4-2023-2024.pdf, solution alternative (théorème de Bondy)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/04/Sujet-envoi-4-2023-2024.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2023-04_Sujet-envoi-4-2023-2024.pdf"
---

## Statement

Dans une école, il y a $n$ élèves et $n$ cours, avec $n \geqslant 1$. Chaque élève est inscrit à
certains de ces cours, et deux élèves différents n'ont jamais exactement les mêmes cours.

Montrer que l'on peut supprimer un des cours de sorte que, même sans ce cours, deux élèves différents
n'aient toujours jamais exactement les mêmes cours.

## Hints

1. Raisonne par l'absurde : pour chaque cours, il y a deux élèves qui ne diffèrent **que** par ce
   cours. Relie ces deux élèves par un trait. Combien de traits obtiens-tu ?
2. Un même couple d'élèves peut-il être relié par deux cours différents ?
3. Avec $n$ élèves et $n$ traits, montre qu'on trouve une boucle : des élèves $F_1, F_2, \ldots, F_k$,
   tous différents, avec $k \geqslant 3$, où chacun est relié au suivant et $F_k$ est relié à $F_1$.
4. En suivant la boucle de $F_1$ jusqu'à $F_k$ par $F_2, \ldots, F_{k-1}$, combien de cours
   changent ? Compare avec ce que dit le trait entre $F_k$ et $F_1$.

## Solution

Raisonnons par l'absurde, et supposons que, quel que soit le cours supprimé, deux élèves
différents se retrouvent avec exactement les mêmes cours.

**Des traits entre élèves.** Prenons un cours $C$. Par hypothèse, si on le supprime, deux élèves
différents ont les mêmes cours. Comme ils n'ont pas les mêmes cours avant la suppression, ils
diffèrent seulement par le cours $C$ : l'un le suit, l'autre non, et pour tous les autres cours ils
font le même choix. Choisissons un tel couple d'élèves pour chaque cours (s'il y en a plusieurs, on
en garde un seul), et relions ses deux élèves par un trait, marqué du nom du cours $C$.

Deux cours différents donnent deux couples différents : un couple qui diffère seulement par le cours
$C$ ne peut pas différer seulement par un autre cours. On obtient donc **$n$ traits différents entre
$n$ élèves**, et jamais deux traits entre les deux mêmes élèves.

**Une boucle.** Montrons qu'il y a alors une boucle : des élèves $F_1, F_2, \ldots, F_k$ tous
différents, avec $k \geqslant 3$, tels que $F_1$ est relié à $F_2$, $F_2$ à $F_3$, et ainsi de suite
jusqu'à $F_k$, qui est relié à $F_1$.

*Étape 1 : on enlève les élèves qui ont peu de traits.* Tant qu'il reste un élève qui a au plus un
trait, on l'enlève, avec son trait s'il en a un. À chaque fois, on enlève un élève et au plus un
trait. Au départ il y a au moins autant de traits que d'élèves, donc cela reste vrai à chaque étape.

Or un groupe de $1$ ou $2$ élèves a au plus $1$ trait, donc moins de traits que d'élèves. On
n'atteint donc jamais un tel groupe : on s'arrête avant, avec au moins $3$ élèves, et à ce moment
**chaque élève restant a au moins $2$ traits**.

*Étape 2 : on se promène.* Partons d'un élève restant et avançons de trait en trait, en repartant
toujours par un trait différent de celui par lequel on est arrivé. C'est possible, car chaque élève
a au moins deux traits. Comme il n'y a qu'un nombre fini d'élèves, on finit par repasser par un élève
déjà visité. Regardons la première fois que cela arrive : les élèves visités entre les deux passages
forment une boucle. Elle a au moins $3$ élèves, car on ne revient jamais en arrière par le trait que
l'on vient d'emprunter, et il n'y a qu'un seul trait entre deux élèves donnés.

**La contradiction.** Prenons donc une boucle $F_1, F_2, \ldots, F_k$ avec $k \geqslant 3$, et notons
$c_1$ le cours du trait $F_1F_2$, $c_2$ celui du trait $F_2F_3$, et ainsi de suite jusqu'à $c_k$, le
cours du trait $F_kF_1$. Chaque cours ne marque qu'un seul trait, donc les cours
$c_1, c_2, \ldots, c_k$ sont tous différents.

Passons de $F_1$ à $F_k$ en suivant la boucle : $F_1, F_2, \ldots, F_k$. Le premier pas change
seulement le cours $c_1$, le deuxième seulement le cours $c_2$, et ainsi de suite jusqu'au pas
numéro $k-1$, qui change seulement le cours $c_{k-1}$. Comme ces cours sont tous différents, chacun
d'eux est changé une seule fois, donc

$$F_1 \text{ et } F_k \text{ diffèrent exactement par les cours } c_1, c_2, \ldots, c_{k-1}.$$

Mais $F_k$ et $F_1$ sont aussi reliés par le trait du cours $c_k$ : ils diffèrent seulement par le
cours $c_k$. Or $c_k$ n'est pas parmi $c_1, \ldots, c_{k-1}$. D'après la première affirmation,
$F_1$ et $F_k$ font donc le même choix pour le cours $c_k$, et d'après la seconde, ils font des choix
différents. C'est une contradiction.

**Conclusion.** L'hypothèse de départ est fausse : il existe un cours que l'on peut supprimer sans
que deux élèves différents se retrouvent avec exactement les mêmes cours.

## Going further

Ce résultat s'appelle le **théorème de Bondy**. Le nombre de cours ne peut pas descendre en dessous
du nombre d'élèves. Avec $n$ élèves et seulement $n - 1$ cours $C_1, \ldots, C_{n-1}$, prenons un
élève qui ne suit aucun cours et, pour chaque $i$, un élève qui suit exactement les cours $C_1$ à
$C_i$. Deux élèves différents n'ont jamais les mêmes cours. Vérifie que, quel que soit le cours
supprimé, deux élèves se retrouvent pourtant avec les mêmes cours. (Si l'on supprime $C_i$, l'élève
qui suit les cours $C_1$ à $C_{i-1}$ et celui qui suit les cours $C_1$ à $C_i$ ne diffèrent plus.)
