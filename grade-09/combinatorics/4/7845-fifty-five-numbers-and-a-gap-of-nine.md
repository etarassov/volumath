---
id: "7845"
title: "55 nombres et un écart de 9"
grade: 9
theme: combinatorics
difficulty: 4
duration_min: 35
tags: [principe-des-tiroirs, differences, denombrement]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2015"
  reference: "stage_ete_2015.pdf, première période, groupe A « stratégies de base », mercredi 19 matin (Clara Ding), exercice 3"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2015.pdf"
---

## Statement

On choisit $55$ entiers distincts parmi $1, 2, 3, \ldots, 99$.

Montrer qu'on peut toujours en trouver deux dont la différence vaut exactement $9$.

## Hints

1. C'est un problème de **tiroirs** : on veut deux objets dans le même tiroir. Les objets sont
   les $55$ entiers choisis. Reste à inventer les tiroirs.
2. Un tiroir doit être conçu pour que, si deux des entiers choisis y tombent, leur différence
   soit $9$. Le tiroir le plus simple est donc une paire du type $\{1, 10\}$.
3. Attention à ne pas mettre le même entier dans deux tiroirs : après $\{1,10\}$, ..., $\{9,18\}$,
   tu ne peux plus utiliser $\{10, 19\}$. Par quoi continues-tu ?
4. Une fois la construction trouvée, compte les tiroirs. Il doit t'en rester strictement moins
   de $55$.

## Solution

**Étape 1 : on fabrique les tiroirs.**

On veut regrouper les entiers de $1$ à $99$ en paquets, de sorte que deux entiers d'un même
paquet aient pour différence $9$, chaque entier n'appartenant qu'à un seul paquet.

Commençons :
$$\{1, 10\},\ \{2, 11\},\ \{3, 12\},\ \ldots,\ \{9, 18\} .$$
Ces $9$ paires utilisent tous les entiers de $1$ à $18$.

On ne peut plus former $\{10, 19\}$, car $10$ est déjà pris. On repart donc de $19$ :
$$\{19, 28\},\ \{20, 29\},\ \ldots,\ \{27, 36\} ,$$
soit $9$ nouvelles paires, qui utilisent les entiers de $19$ à $36$.

Le motif se répète par blocs de $18$ entiers consécutifs, chacun donnant $9$ paires. Les blocs
sont
$$1\text{–}18, \quad 19\text{–}36, \quad 37\text{–}54, \quad 55\text{–}72, \quad 73\text{–}90 .$$

Cela fait $5$ blocs, donc
$$5 \times 9 = 45 \text{ paires} ,$$
qui utilisent tous les entiers de $1$ à $90$.

**Étape 2 : on s'occupe du reste.**

Il reste les neuf entiers $91, 92, \ldots, 99$. On ne peut plus les apparier : leur partenaire
serait $100, 101, \ldots, 109$, qui sortent de l'intervalle. On en fait donc neuf tiroirs
individuels.

**Étape 3 : on compte.**

Au total, les entiers de $1$ à $99$ sont répartis dans
$$45 + 9 = 54 \text{ tiroirs} ,$$
et chaque entier appartient à exactement un tiroir.

**Étape 4 : le principe des tiroirs.**

On place les $55$ entiers choisis dans ces $54$ tiroirs. Comme $55 > 54$, au moins un tiroir
contient au moins deux des entiers choisis.

Or un tiroir individuel (parmi $91, \ldots, 99$) ne contient qu'un seul entier : il ne peut pas
en accueillir deux. Le tiroir en question est donc une **paire**, et ses deux éléments diffèrent
exactement de $9$.

**Conclusion.** Parmi les $55$ entiers choisis, il y en a toujours deux dont la différence vaut
$9$.

*La borne $55$ est optimale.* On peut choisir $54$ entiers sans jamais avoir d'écart de $9$ : il
suffit de prendre $1$ à $9$, puis $19$ à $27$, puis $37$ à $45$, puis $55$ à $63$, puis $73$ à
$81$, puis $91$ à $99$. Cela fait $6 \times 9 = 54$ entiers, et deux entiers d'un même paquet
diffèrent de moins de $9$, deux entiers de paquets différents d'au moins $10$.
