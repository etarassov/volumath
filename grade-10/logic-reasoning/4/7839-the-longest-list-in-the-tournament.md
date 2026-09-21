---
id: "7839"
title: "La liste la plus longue du tournoi"
grade: 10
theme: logic-reasoning
difficulty: 4
duration_min: 40
tags: [principe de l extremum, tournoi, raisonnement par l absurde, maximum]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2015"
  reference: "stage_ete_2015.pdf, première période, groupe A « stratégies de base », mardi 18 matin (Arsène Pierrot), exercice 5"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2015.pdf"
---

## Statement

Dans un tournoi, chaque participant rencontre tous les autres exactement une fois, et il n'y a
jamais match nul : chaque partie a un gagnant et un perdant.

À la fin du tournoi, chaque participant écrit sur une feuille :

- le prénom de tous les joueurs qu'il a battus ;
- et le prénom de tous les joueurs que ceux-là ont eux-mêmes battus.

Montrer qu'il existe au moins une feuille qui contient le prénom de **tous** les autres
participants.

## Hints

1. Il y a un nombre fini de participants, donc un nombre fini de feuilles. Dans une collection
   finie de nombres, il y en a toujours un plus grand : c'est le *principe de l'extremum*.
2. Considère donc un joueur $A$ dont la feuille est l'une des plus longues, et raisonne par
   l'absurde : suppose qu'il manque un prénom, celui d'un joueur $B$.
3. Si $B$ n'est pas sur la feuille de $A$, c'est en particulier que $A$ n'a pas battu $B$.
   Qui a gagné, alors ?
4. Montre maintenant que la feuille de $B$ contient tout ce qu'il y a sur celle de $A$... plus
   le prénom de $A$ lui-même. Pour chaque joueur $D$ battu par $A$, demande-toi qui a gagné
   entre $B$ et $D$.

## Solution

**Étape 1 : on choisit le bon joueur.**

Les participants sont en nombre fini, donc les longueurs des feuilles forment une collection
finie de nombres entiers. L'une d'elles est maximale : soit $A$ un joueur dont la feuille est
la plus longue (il peut y en avoir plusieurs, on en choisit un).

**Une remarque utile :** le prénom de $A$ ne figure pas sur sa propre feuille. En effet, $A$ ne
s'est pas battu lui-même, et si $A$ avait battu un joueur $D$ qui aurait battu $A$, cela voudrait
dire que la partie entre $A$ et $D$ a eu deux résultats différents. Impossible.

**Étape 2 : le raisonnement par l'absurde.**

Supposons que la feuille de $A$ ne contienne pas tous les autres prénoms. Il existe donc un
joueur $B \neq A$ dont le prénom n'y figure pas.

En particulier $A$ n'a pas battu $B$ (sinon $B$ serait sur la feuille). Il n'y a pas de match
nul, donc **$B$ a battu $A$**. Par conséquent le prénom de $A$ figure sur la feuille de $B$.

**Étape 3 : la feuille de $B$ contient toute celle de $A$.**

La feuille de $A$ contient deux sortes de prénoms.

*Les joueurs $D$ battus par $A$.* Qui a gagné entre $B$ et $D$ ? Si $D$ avait battu $B$, alors
$B$ serait un joueur battu par quelqu'un que $A$ a battu, donc $B$ figurerait sur la feuille de
$A$. Ce n'est pas le cas. Donc **$B$ a battu $D$**, et $D$ figure sur la feuille de $B$.

*Les joueurs $C$ battus par un joueur $D$ que $A$ a battu.* On vient de voir que $B$ a battu
$D$, et $D$ a battu $C$ : donc $C$ figure aussi sur la feuille de $B$ (deuxième catégorie).

Ainsi, **tout prénom présent sur la feuille de $A$ est présent sur celle de $B$**.

**Étape 4 : la contradiction.**

La feuille de $B$ contient tout ce qu'il y a sur celle de $A$, et en plus le prénom de $A$, qui
lui ne figure pas sur la feuille de $A$ (étape 1). La feuille de $B$ est donc **strictement plus
longue** que celle de $A$.

Cela contredit le choix de $A$, dont la feuille était l'une des plus longues.

**Conclusion.** L'hypothèse était absurde : la feuille de $A$ contient bien tous les prénoms
sauf le sien.

*Remarque.* Le joueur $A$ n'est pas forcément le vainqueur du tournoi, et le résultat ne dit rien
du classement. Un tournoi à trois joueurs où $A$ bat $B$, $B$ bat $C$ et $C$ bat $A$ donne trois
feuilles de longueur $2$, et chacune des trois convient.
