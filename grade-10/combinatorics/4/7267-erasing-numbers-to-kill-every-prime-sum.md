---
id: "7267"
title: "Effacer des nombres pour tuer toutes les sommes premières"
grade: 10
theme: combinatorics
difficulty: 4
duration_min: 35
tags: [nombres premiers, parite, paires, minimum, construction et majoration]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique junior de Saint-Chéron 2024"
  reference: "Poly_StCheron_2024.pdf, groupe A, « Entraînement du groupe A », exercice 4"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly_StCheron_2024.pdf"
---

## Statement

Les entiers $1, 2, 3, \ldots, 50$ sont écrits au tableau.

Combien faut-il en effacer au minimum pour être sûr que, pour deux entiers distincts $x$ et $y$
quelconques parmi ceux qui restent, la somme $x + y$ ne soit jamais un nombre premier ?

## Hints

1. Comme toujours pour une question « combien au minimum », il y a deux choses à faire : trouver un
   effacement qui marche, et prouver qu'on ne peut pas en effacer moins.
2. Pour l'exemple : quelle est la parité de la somme de deux nombres pairs ? Un nombre pair
   supérieur à $2$ peut-il être premier ?
3. Pour la minoration : regroupe les $50$ nombres en paires dont la somme est un nombre premier. Que
   doit-on faire dans chaque paire ?
4. Cherche un nombre premier proche de $50$ et regroupe $1$ avec lui moins un, $2$ avec lui moins
   deux, et ainsi de suite. Que reste-t-il ensuite ?

## Solution

**$25$ effacements suffisent.**

Effaçons les $25$ nombres impairs $1, 3, 5, \ldots, 49$.

Il reste les $25$ nombres pairs $2, 4, \ldots, 50$. La somme de deux d'entre eux est paire, et elle
vaut au moins $2 + 2 = 4$. Or le seul nombre premier pair est $2$. Une telle somme n'est donc jamais
première.

**On ne peut pas se contenter de $24$.**

Regroupons les $50$ nombres en paires dont la somme est un nombre premier.

Premier paquet, autour du nombre premier $47$ :
$$\{1, 46\},\ \{2, 45\},\ \{3, 44\},\ \ldots,\ \{23, 24\} .$$
Ce sont $23$ paires, et elles utilisent exactement une fois chacun des nombres de $1$ à $46$.
Chacune a pour somme $47$, qui est premier.

Il reste les quatre nombres $47$, $48$, $49$, $50$. Groupons-les ainsi :
$$\{47, 50\} \quad \text{et} \quad \{48, 49\} ,$$
deux paires de somme $97$, qui est premier.

Au total nous avons $23 + 2 = 25$ paires, sans nombre commun, qui utilisent chacun des entiers de
$1$ à $50$ exactement une fois.

Dans chacune de ces $25$ paires, **au moins un des deux nombres doit être effacé** : sinon les deux
resteraient au tableau et leur somme serait un nombre premier.

Comme les paires n'ont aucun nombre commun, cela fait au moins $25$ nombres effacés.

**Conclusion.**

$$\boxed{25}$$

## Going further

La solution en deux temps est typique de ce genre de question. Le premier temps donne
« $25$ suffisent », le second donne « $25$ sont nécessaires ». Aucun des deux ne suffit tout seul :
répondre « $25$ marche » laisserait entièrement ouverte la possibilité que $20$ marche aussi.

Il existe d'autres effacements de $25$ nombres qui conviennent, mais ils sont moins confortables
à décrire. Dès qu'on garde à la fois un nombre pair et un nombre impair, leur somme est impaire et
il faut vérifier à la main qu'elle n'est pas première. L'ensemble des nombres pairs est de loin la
réponse la plus simple.

Le choix du nombre premier $47$ n'est pas non plus un hasard : c'est le plus grand nombre premier
inférieur ou égal à $50$, ce qui permet de couvrir d'un coup le plus grand paquet de nombres.
