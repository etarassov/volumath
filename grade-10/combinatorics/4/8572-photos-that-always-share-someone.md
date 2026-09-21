---
id: "8572"
title: "Des photos qui ont toujours quelqu'un en commun"
grade: 10
theme: combinatorics
difficulty: 4
duration_min: 35
tags: [denombrement, maximum, sous-ensembles, appariement, construction]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2022, cours de Groupe A"
  reference: "Poly_Valbonne_2022-Corrigé-1.pdf, chapitre III, « Principe du maximum et optimisation » (Hannah) du Groupe A, exercice 5"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/09/Poly_Valbonne_2022-Corrigé-1.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly_Valbonne_2022-Corrigé-1.pdf"
---

## Statement

Un groupe de $n$ amis prend $r$ photos. Deux photos ne représentent jamais exactement le même
ensemble de personnes, et chaque photo contient au moins une personne.

On veut que, pour toute paire de photos, il y ait au moins une personne qui apparaisse sur
les deux.

Quelle est la plus grande valeur possible de $r$ ?

## Hints

1. Une photo est simplement un sous-ensemble non vide du groupe. Combien y a-t-il de sous-ensembles d'un groupe de $n$ personnes ?
2. Deux photos qui n'ont personne en commun sont interdites. Quel est l'exemple le plus évident de deux ensembles sans personne en commun ?
3. Regroupe les sous-ensembles par paires : un ensemble et son complémentaire. Combien de telles paires y a-t-il, et combien de photos peut-on prendre dans chaque paire ?
4. Pour la construction, cherche une famille où une même personne apparaît sur toutes les photos.

## Solution

**La réponse est $r = 2^{n-1}$.**

Une photo est déterminée par l'ensemble des personnes qui y figurent : c'est donc un
sous-ensemble non vide du groupe. Le groupe a $2^n$ sous-ensembles en tout (chacune des $n$
personnes y est ou n'y est pas).

### On ne peut pas dépasser $2^{n-1}$

Groupons les $2^n$ sous-ensembles par paires : chaque ensemble $E$ est apparié avec son
**complémentaire**, l'ensemble des personnes qui ne sont pas dans $E$. Chaque sous-ensemble
appartient à exactement une de ces paires, donc il y a

$$\frac{2^n}{2} = 2^{n-1}$$

paires.

Or un ensemble et son complémentaire n'ont aucune personne en commun. Les photos prises ne
peuvent donc jamais être deux ensembles complémentaires : **dans chaque paire, on prend au
plus une photo**.

Comme il y a $2^{n-1}$ paires, on prend au plus $2^{n-1}$ photos.

### La valeur $2^{n-1}$ est atteinte

Choisissons une personne, disons Alice, et prenons **toutes** les photos où Alice figure.

Une telle photo est déterminée par la liste des autres personnes qui y figurent, et il y a
$n - 1$ autres personnes, donc $2^{n-1}$ photos possibles. Elles sont toutes différentes, et
toutes non vides puisque Alice y est.

Enfin, deux de ces photos ont toujours Alice en commun : la condition est vérifiée.

### Conclusion

La plus grande valeur possible est

$$r = 2^{n-1} .$$
