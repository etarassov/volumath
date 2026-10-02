---
id: "3014"
title: "Deux élèves qui couvrent les six problèmes"
grade: 11
theme: combinatorics
difficulty: 5
duration_min: 40
tags: [denombrement, coefficients-binomiaux, principe-des-tiroirs, double-comptage, demonstration]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Olympiads 2, Double Counting"
  reference: "Handout-2235-1984.pdf, exercice 3"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-2235-1984.pdf"
---

## Statement

Deux cents élèves participent à un concours de mathématiques. Il y a six problèmes à
résoudre, et chaque problème a été résolu par au moins $120$ participants.

Montrer qu'il existe deux participants tels que chacun des six problèmes a été résolu par
au moins l'un des deux.

## Hints

1. Raisonne par l'absurde : suppose que pour **toute** paire d'élèves, il existe au moins un problème que ni l'un ni l'autre n'a résolu.
2. Appelle « paire ratée pour le problème $i$ » une paire d'élèves dont aucun des deux n'a résolu le problème $i$. Combien d'élèves au maximum n'ont pas résolu un problème donné ?
3. Compte de deux façons : combien de paires ratées y a-t-il au plus, en tout ? Et combien de paires d'élèves y a-t-il ?
4. $\binom{200}{2} = 19\,900$. Compare avec $6 \times \binom{80}{2}$.

## Solution

**Mise en place.**

Raisonnons par l'absurde. Supposons que pour toute paire d'élèves $\{A, B\}$, il existe au
moins un problème que ni $A$ ni $B$ n'a résolu.

Disons qu'une paire d'élèves est **ratée pour le problème $i$** si aucun des deux n'a résolu
le problème $i$. L'hypothèse dit : *chaque* paire d'élèves est ratée pour au moins un
problème.

**Combien de paires ratées au plus ?**

Le problème $i$ a été résolu par au moins $120$ élèves ; il a donc été manqué par au plus

$$200 - 120 = 80$$

élèves. Les paires ratées pour le problème $i$ sont des paires choisies parmi ces (au plus)
$80$ élèves, donc il y en a au plus

$$\binom{80}{2} = \frac{80 \times 79}{2} = 3160.$$

En sommant sur les six problèmes, le nombre de couples (paire, problème) où la paire est
ratée pour ce problème est au plus

$$6 \times 3160 = 18\,960.$$

En particulier, le nombre de paires ratées pour **au moins un** problème est au plus
$18\,960$ (une même paire peut être ratée pour plusieurs problèmes, ce qui ne fait que
diminuer ce total).

**Combien de paires en tout ?**

Le nombre de paires d'élèves est

$$\binom{200}{2} = \frac{200 \times 199}{2} = 19\,900.$$

**La contradiction.**

D'après l'hypothèse, les $19\,900$ paires sont toutes ratées pour au moins un problème.
Mais il y a au plus $18\,960$ paires ratées. Or

$$19\,900 > 18\,960.$$

C'est impossible.

**Conclusion.**

L'hypothèse de départ est fausse : il existe donc une paire d'élèves $\{A, B\}$ qui n'est
ratée pour aucun problème, c'est-à-dire telle que chacun des six problèmes a été résolu par
$A$ ou par $B$. C'est ce qu'il fallait démontrer.

## Going further

La marge est mince : $19\,900 - 18\,960 = 940$. Si chaque problème n'était résolu que par
$119$ élèves, on aurait $6 \times \binom{81}{2} = 19\,440$, encore assez petit ; avec $110$
élèves par problème on obtiendrait $6 \times \binom{90}{2} = 24\,030 > 19\,900$ et
l'argument tomberait. Le seuil exact où ce comptage cesse de fonctionner est un bon
exercice de recherche.
