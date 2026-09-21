---
id: "7211"
title: "Dix nombres et deux paquets de même somme"
grade: 10
theme: combinatorics
difficulty: 5
duration_min: 40
tags: [tiroirs, sous-ensembles, sommes, denombrement]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique junior de Cachan 2017"
  reference: "Poly-CJ-17.pdf, « Débutants », mardi 24 matin (Cindy Hua), principe des tiroirs, exercice 9"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly-CJ-17.pdf"
---

## Statement

On choisit $10$ entiers distincts parmi $1, 2, \ldots, 100$.

Montrer qu'on peut en extraire deux paquets **sans aucun nombre commun**, non vides, dont les
sommes sont égales.

## Hints

1. Combien de paquets (sous-ensembles non vides) peut-on former avec $10$ nombres ?
2. Entre quelles valeurs se situe la somme d'un tel paquet ? Compte le nombre de valeurs
   possibles.
3. Compare le nombre de paquets au nombre de sommes possibles.
4. Le principe des tiroirs donne deux paquets de même somme, mais ils peuvent avoir des nombres
   en commun. Que se passe-t-il si on enlève à chacun les nombres communs ?

## Solution

Appelons $E$ l'ensemble des $10$ nombres choisis.

**Étape 1 : il y a beaucoup de paquets.**

Un paquet est une partie non vide de $E$. Pour en fabriquer un, on décide pour chacun des $10$
nombres s'il est dedans ou dehors : cela fait $2^{10} = 1024$ possibilités, dont il faut retirer
le paquet vide. Il y a donc
$$1024 - 1 = 1023 \text{ paquets.}$$

**Étape 2 : il y a peu de sommes possibles.**

La somme des éléments d'un paquet est un entier. Elle vaut au moins $1$ (un paquet réduit au plus
petit nombre possible, qui est au moins $1$).

Elle vaut au plus la somme des dix plus grands entiers disponibles, c'est-à-dire
$$91 + 92 + \cdots + 100 = \frac{(91+100)\times 10}{2} = 955 .$$

La somme d'un paquet est donc un entier compris entre $1$ et $955$ : il y a au plus $955$ valeurs
possibles.

**Étape 3 : le principe des tiroirs.**

$1023$ paquets, $955$ sommes possibles, et $1023 > 955$. Deux paquets différents, disons $A$ et
$B$, ont donc la même somme.

**Étape 4 : les rendre disjoints.**

Les paquets $A$ et $B$ peuvent avoir des nombres en commun. Posons
$$A' = A \setminus B \qquad \text{et} \qquad B' = B \setminus A ,$$
c'est-à-dire : on retire de chacun les nombres présents dans les deux.

On a retiré exactement la même chose, à savoir les éléments de $A \cap B$, à chacune des deux
sommes. Comme les sommes de $A$ et $B$ étaient égales, celles de $A'$ et $B'$ le sont aussi :
$$\text{somme}(A') = \text{somme}(A) - \text{somme}(A \cap B)
= \text{somme}(B) - \text{somme}(A \cap B) = \text{somme}(B') .$$

Par construction $A'$ et $B'$ n'ont aucun nombre commun.

**Étape 5 : ils ne sont pas vides.**

Supposons $A'$ vide. Cela veut dire que tous les éléments de $A$ sont dans $B$, donc
$A \subset B$. Comme les sommes sont égales et que tous les nombres sont strictement positifs,
$B$ ne peut contenir aucun nombre de plus que $A$ : donc $A = B$, ce qui contredit le fait que les
deux paquets sont différents. Donc $A'$ n'est pas vide, et de même $B'$ n'est pas vide.

**Les deux paquets $A'$ et $B'$ conviennent : ils sont non vides, sans nombre commun, et de même
somme.**

## Going further

Avec seulement $9$ nombres, le comptage ne marche plus : on aurait $2^9 - 1 = 511$ paquets pour
au plus $92 + 93 + \cdots + 100 = 864$ sommes possibles, et $511 < 864$. Le principe des tiroirs
ne dit alors plus rien. Le nombre $10$ est donc le premier pour lequel cette preuve fonctionne.

Remarquons aussi que la preuve ne construit pas les deux paquets : elle affirme qu'ils existent
sans donner le moindre moyen de les trouver. C'est une caractéristique fréquente des
raisonnements par les tiroirs.
