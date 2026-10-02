---
id: "11449"
title: "Le collier magique"
grade: 10
theme: logic-reasoning
difficulty: 5
duration_min: 50
tags: [invariant, mots, permutations, jetons, demonstration]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2022-2023 n° 4 (combinatoire)"
  reference: "2023-02_Sujet-envoi-4.pdf, Exercices Seniors, exercice 18 ; corrigé 2023-03_corrige-envoi-4.pdf ; le corrigé écrit « en remplaçant un motif RR par un motif RES » au lieu de ES, sans effet sur la conclusion"
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/02/Sujet-envoi-4.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2023-02_Sujet-envoi-4.pdf"
---

## Statement

Thanima possède un collier de rubis, d'émeraudes et de saphirs, qu'elle note par une suite de
lettres $R$, $E$ et $S$, lue de gauche à droite. Par une opération magique, elle peut :

1. remplacer deux lettres voisines $RR$ par $ES$, ou $ES$ par $RR$ ;
2. remplacer trois lettres voisines $EEE$ par $SR$, ou $SR$ par $EEE$ ;
3. supprimer deux lettres voisines $SS$, ou ajouter $SS$ n'importe où ;
4. supprimer trois lettres voisines $RES$, ou ajouter $RES$ n'importe où.

À cause du fermoir, le collier a un début et une fin : on ne peut pas faire tourner les lettres, et on
ne peut pas non plus retourner le collier.

Le collier de Thanima est formé d'un seul saphir, $S$. Peut-elle, par des opérations magiques,
obtenir un collier formé d'une seule émeraude, $E$ ?

## Hints

1. Cherche quelque chose qui ne change pas lors d'une opération magique. Le nombre de chaque lettre
   suffit-il ?
2. Essaie de voir chaque lettre comme un mouvement. Par exemple, pose trois jetons sur trois cases,
   et décide que chaque lettre déplace les jetons d'une certaine façon.
3. Avec $E$ qui échange les jetons des cases $1$ et $2$, $S$ qui échange ceux des cases $2$ et $3$,
   et $R$ qui fait avancer chaque jeton d'une case en tournant ($1 \to 2 \to 3 \to 1$), compare
   l'effet de $RR$ et celui de $ES$.

## Solution

La réponse est **non**.

**Des jetons pour lire le collier.** Posons trois jetons, numérotés $1$, $2$ et $3$, sur trois cases
numérotées $1$, $2$ et $3$ : au départ, chaque jeton est sur la case qui porte son numéro. On lit
ensuite le collier de gauche à droite, et chaque lettre déplace les jetons :

- $E$ échange les jetons des cases $1$ et $2$ ;
- $S$ échange les jetons des cases $2$ et $3$ ;
- $R$ envoie le jeton de la case $1$ sur la case $2$, celui de la case $2$ sur la case $3$, et celui
  de la case $3$ sur la case $1$.

Appelons **résultat** du collier la position des jetons à la fin de la lecture.

**L'effet d'un morceau de collier.** Ce que fait une lettre ne dépend que des cases, pas des numéros
des jetons. Il en va de même pour un morceau de plusieurs lettres : on peut dire, par exemple, « le
jeton qui était sur la case $1$ au début du morceau finit sur la case $3$ ». Si deux morceaux ont le
même effet sur chaque case, remplacer l'un par l'autre dans un collier ne change pas le résultat :
avant le morceau, la lecture est la même, pendant le morceau, les jetons arrivent aux mêmes places,
et après, elle est de nouveau la même.

**Chaque opération magique garde le même résultat.** Le tableau donne, pour chaque morceau, la case où
finit le jeton qui était au début sur la case $1$, sur la case $2$ et sur la case $3$.

| morceau | jeton de la case 1 | jeton de la case 2 | jeton de la case 3 |
| --- | --- | --- | --- |
| aucune lettre | case 1 | case 2 | case 3 |
| $SS$ | case 1 | case 2 | case 3 |
| $RES$ | case 1 | case 2 | case 3 |
| $RR$ | case 3 | case 1 | case 2 |
| $ES$ | case 3 | case 1 | case 2 |
| $EEE$ | case 2 | case 1 | case 3 |
| $SR$ | case 2 | case 1 | case 3 |

Vérifions une ligne, celle de $RES$. Le jeton de la case $1$ va sur la case $2$ avec $R$, revient sur
la case $1$ avec $E$, et n'est pas touché par $S$. Le jeton de la case $2$ va sur la case $3$ avec
$R$, n'est pas touché par $E$, et revient sur la case $2$ avec $S$. Le jeton de la case $3$ va sur la
case $1$ avec $R$, sur la case $2$ avec $E$, puis sur la case $3$ avec $S$. Chaque jeton revient à sa
place. Les autres lignes se vérifient de la même façon.

On lit sur le tableau que :

- $RR$ et $ES$ ont le même effet : l'opération 1 ne change pas le résultat ;
- $EEE$ et $SR$ ont le même effet : l'opération 2 ne change pas le résultat ;
- $SS$ et $RES$ ne déplacent rien, comme l'absence de lettre : supprimer ou ajouter l'un de ces
  morceaux ne change pas le résultat (opérations 3 et 4).

**Le résultat ne change donc jamais.** Quelles que soient les opérations magiques faites par Thanima,
son collier garde le même résultat qu'au départ.

**On compare.** Le collier $S$ échange les jetons des cases $2$ et $3$ : son résultat est « jeton 1
sur la case 1, jeton 3 sur la case 2, jeton 2 sur la case 3 ». Le collier $E$ échange les jetons des
cases $1$ et $2$ : son résultat est « jeton 2 sur la case 1, jeton 1 sur la case 2, jeton 3 sur la case
3 ». Ces deux résultats sont différents.

**Conclusion.** Thanima ne peut pas passer du collier $S$ au collier $E$ par des opérations magiques.

## Going further

Compter les lettres ne suffit pas, et c'est ce qui rend le problème difficile. Les opérations changent
les nombres de $R$, de $E$ et de $S$ ainsi :

- remplacer $RR$ par $ES$ : deux $R$ de moins, un $E$ et un $S$ de plus ;
- remplacer $EEE$ par $SR$ : trois $E$ de moins, un $S$ et un $R$ de plus ;
- ajouter $RES$ : un de plus de chaque lettre ; supprimer $SS$ : deux $S$ de moins.

Faisons $3$ fois la première, $2$ fois la deuxième, ajoutons $4$ fois $RES$ et supprimons $5$ fois
$SS$. Le nombre de $R$ change de $-6 + 2 + 4 = 0$, celui des $E$ de $3 - 6 + 4 = 1$, et celui des $S$
de $3 + 2 + 4 - 10 = -1$. C'est exactement le changement qui fait passer de $S$ à $E$. Aucun argument
qui ne regarde que le nombre de chaque lettre ne peut donc conclure : il faut tenir compte de l'ordre
des lettres, et c'est ce que font les jetons.
