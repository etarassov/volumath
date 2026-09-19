---
id: "1213"
title: "Les douze pirates"
grade: 11
theme: arithmetic
difficulty: 4
duration_min: 40
tags: [divisibilite, factorisation, factorielle, produit, partage]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Advanced 1, compétition d'automne 2023"
  reference: "Handout-4216-3990.pdf, problème 6.6 (réponse dans Handout-4217-3990.pdf)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-4216-3990.pdf"
---

## Statement

Douze pirates se partagent un coffre de pièces d'or. Ils se servent l'un après l'autre, et la règle est la suivante : le $k$-ième pirate à se servir prend $\dfrac{k}{12}$ des pièces **qui restent dans le coffre au moment où il se sert**.

Par miracle, le coffre contenait exactement le plus petit nombre de pièces permettant que chacun des douze pirates reparte avec un nombre entier de pièces.

Combien de pièces le douzième pirate a-t-il reçues ?

## Hints

1. Commencer petit : si le coffre contient $N$ pièces, combien le premier pirate prend-il, et combien reste-t-il après lui ?
2. Après le passage du $k$-ième pirate, il reste la fraction $\dfrac{12-k}{12}$ de ce qu'il y avait avant lui.
3. En déduire une formule pour la part du $k$-ième pirate en fonction de $N$ et de $k$. Faire apparaître un produit d'entiers consécutifs.
4. La condition la plus exigeante est celle du dernier pirate : il rafle tout ce qui reste, et ce reste est $N$ multiplié par une fraction au dénominateur énorme.
5. Décomposer $11!$ et $12^{11}$ en produits de facteurs premiers, et comparer les exposants de $2$ et de $3$.
6. Une fois $N$ trouvé, ne pas oublier de vérifier que les onze autres parts sont bien entières elles aussi.

## Solution

**La part du $k$-ième pirate.**

Notons $N$ le nombre de pièces au départ, et $R_k$ le nombre de pièces restant dans le coffre **juste avant** que le $k$-ième pirate ne se serve.

Le $k$-ième pirate prend $\dfrac{k}{12}R_k$ et laisse donc

$$R_{k+1} = R_k - \frac{k}{12}R_k = \frac{12-k}{12}\,R_k.$$

En partant de $R_1 = N$ et en appliquant cette formule $k-1$ fois :

$$R_k = N \times \frac{11}{12} \times \frac{10}{12} \times \dots \times \frac{13-k}{12} = N \times \frac{11 \times 10 \times \dots \times (13-k)}{12^{\,k-1}}.$$

Le numérateur est le produit des entiers de $13-k$ à $11$, c'est-à-dire $\dfrac{11!}{(12-k)!}$. Donc

$$R_k = \frac{N \times 11!}{(12-k)!\;\times\;12^{\,k-1}}, \qquad \text{et la part du } k\text{-ième pirate vaut} \qquad P_k = \frac{k}{12}R_k = \frac{N \times k \times 11!}{(12-k)! \times 12^{\,k}}.$$

**La condition du dernier pirate.**

Pour $k = 12$, on a $(12-k)! = 0! = 1$, donc

$$P_{12} = \frac{N \times 12 \times 11!}{12^{12}} = \frac{N \times 11!}{12^{11}}.$$

*(C'est logique : le douzième pirate prend $\frac{12}{12}$ de ce qui reste, c'est-à-dire tout.)*

Décomposons en facteurs premiers :

$$11! = 39\,916\,800 = 2^{8} \times 3^{4} \times 5^{2} \times 7 \times 11,$$
$$12^{11} = \left(2^2 \times 3\right)^{11} = 2^{22} \times 3^{11}.$$

Donc

$$P_{12} = N \times \frac{2^{8} \times 3^{4} \times 5^{2} \times 7 \times 11}{2^{22} \times 3^{11}} = \frac{N \times 5^2 \times 7 \times 11}{2^{14} \times 3^{7}} = \frac{N \times 1925}{2^{14} \times 3^{7}}.$$

Le nombre $1925 = 5^2 \times 7 \times 11$ est premier avec $2$ et avec $3$. Pour que $P_{12}$ soit entier, il faut donc que $N$ soit divisible par

$$2^{14} \times 3^{7} = 16\,384 \times 2\,187 = 35\,831\,808.$$

Et l'on remarque que $2^{14} \times 3^{7} = \left(2^2 \times 3\right)^{7} = 12^{7}$.

**Le coffre le plus petit.**

Essayons donc $N = 12^{7} = 35\,831\,808$ et vérifions que les douze parts sont bien entières. Avec cette valeur,

$$P_k = \frac{12^{7} \times k \times 11!}{(12-k)! \times 12^{k}} = \frac{k \times 11!}{(12-k)! \times 12^{\,k-7}}.$$

- Pour $k \leqslant 7$, l'exposant $k-7$ est négatif ou nul : $P_k = 12^{7-k} \times k \times \dfrac{11!}{(12-k)!}$, et $\dfrac{11!}{(12-k)!}$ est un produit d'entiers consécutifs, donc un entier. ✓
- Pour $k = 8, 9, 10, 11, 12$, on calcule directement :

$$P_8 = \frac{8 \times 11!}{4! \times 12} = 1\,108\,800, \quad P_9 = \frac{9 \times 11!}{3! \times 12^2} = 415\,800, \quad P_{10} = \frac{10 \times 11!}{2! \times 12^3} = 115\,500,$$

$$P_{11} = \frac{11 \times 11!}{1! \times 12^4} = 21\,175, \qquad P_{12} = \frac{12 \times 11!}{12^{5}} = \frac{479\,001\,600}{248\,832} = 1\,925.$$

Toutes les parts sont entières et strictement positives. Donc $N = 12^7$ convient, et comme on a montré que $N$ doit être un multiple de $12^7$, c'est bien le plus petit coffre possible.

**Le partage complet**, pour la curiosité :

$$2\,985\,984 \;;\; 5\,474\,304 \;;\; 6\,842\,880 \;;\; 6\,842\,880 \;;\; 5\,702\,400 \;;\; 3\,991\,680 \;;\; 2\,328\,480 \;;\; 1\,108\,800 \;;\; 415\,800 \;;\; 115\,500 \;;\; 21\,175 \;;\; 1\,925.$$

(La somme fait bien $35\,831\,808$.)

**Conclusion.** Le douzième pirate reçoit $1\,925$ pièces. C'est de très loin la plus petite part : le dernier servi est le grand perdant du partage, alors que la règle semblait le favoriser.

## Going further

1. Quel pirate reçoit la plus grosse part ? Comparer $P_k$ et $P_{k+1}$.
2. Reprendre le problème avec $n$ pirates au lieu de $12$, le $k$-ième prenant $\frac{k}{n}$ du reste. Que vaut la part du dernier pour $n = 6$ ? pour $n = 10$ ?
