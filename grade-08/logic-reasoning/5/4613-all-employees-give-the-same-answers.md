---
id: "4613"
title: "Tous les employés répondent la même chose"
grade: 8
theme: logic-reasoning
difficulty: 5
duration_min: 45
tags: [chevaliers, menteurs, classement, negation, denombrement]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Beginners, Knights and Knaves"
  reference: "Handout-1472-1397.pdf, exercice 6"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-1472-1397.pdf"
---

## Statement

Dans une entreprise, chaque employé est soit un **chevalier**, qui dit toujours la vérité, soit
un **menteur**, qui ment toujours.

Deux employés ne travaillent jamais autant l'un que l'autre, et deux employés ne gagnent jamais
le même salaire : on peut donc les classer du plus travailleur au moins travailleur, et du mieux
payé au moins bien payé.

On pose à **chaque** employé les deux questions suivantes, et tous, sans exception, donnent les
deux mêmes réponses :

- « Combien de personnes travaillent plus que vous ? » — « **Au plus $10$** personnes travaillent
  plus que moi. »
- « Combien de personnes sont mieux payées que vous ? » — « **Au moins $100$** personnes sont
  mieux payées que moi. »

Combien l'entreprise compte-t-elle d'employés ?

## Hints

1. Un chevalier dit vrai : ses deux phrases sont vraies. Un menteur ment : ses deux phrases sont
   fausses. Écris ce que cela donne exactement, avec des inégalités.
2. Range les employés du mieux payé au moins bien payé, et numérote-les $1, 2, 3, \ldots$
   Combien de personnes sont mieux payées que l'employé numéro $k$ ?
3. La réponse sur le salaire décide donc, à elle seule, qui est chevalier et qui est menteur,
   uniquement d'après le rang dans le classement des salaires. Combien de menteurs cela
   fait-il ?
4. Fais exactement le même travail avec le classement par le travail. Combien de chevaliers cela
   fait-il ? Tu obtiens deux renseignements que tu peux recoller.

## Solution

Notons $n$ le nombre d'employés.

**Étape 1 : traduire les deux phrases.**

Pour un **chevalier**, les deux phrases sont vraies :
$$(\text{nombre de gens qui travaillent plus que lui}) \leqslant 10
\quad \text{et} \quad (\text{nombre de gens mieux payés que lui}) \geqslant 100 .$$

Pour un **menteur**, les deux phrases sont fausses. La négation de « au plus $10$ » est « au
moins $11$ », et la négation de « au moins $100$ » est « au plus $99$ » :
$$(\text{nombre de gens qui travaillent plus que lui}) \geqslant 11
\quad \text{et} \quad (\text{nombre de gens mieux payés que lui}) \leqslant 99 .$$

**Étape 2 : le classement par les salaires donne le nombre de menteurs.**

Classons les employés du mieux payé au moins bien payé, et numérotons-les $1, 2, \ldots, n$.
L'employé numéro $k$ a exactement $k - 1$ personnes mieux payées que lui.

- Il est menteur si et seulement si $k - 1 \leqslant 99$, c'est-à-dire $k \leqslant 100$.
- Il est chevalier si et seulement si $k - 1 \geqslant 100$, c'est-à-dire $k \geqslant 101$.

Autrement dit, les menteurs sont exactement les employés de rang $1$ à $100$ dans le classement
des salaires, et les chevaliers ceux de rang $101$ et au-delà.

Au passage, il y a forcément au moins un chevalier. En effet, si $n \leqslant 100$, tous les
employés seraient des menteurs ; or celui qui travaille le plus n'a personne qui travaille plus
que lui, et il devrait en avoir au moins $11$, ce qui est absurde. Donc $n \geqslant 101$, il y a
exactement $100$ menteurs, et le nombre de chevaliers vaut
$$n - 100 .$$

**Étape 3 : le classement par le travail donne le nombre de chevaliers.**

Classons maintenant les employés du plus travailleur au moins travailleur, et numérotons-les
$1, 2, \ldots, n$ dans cet ordre. L'employé numéro $j$ a exactement $j - 1$ personnes qui
travaillent plus que lui.

- Il est chevalier si et seulement si $j - 1 \leqslant 10$, c'est-à-dire $j \leqslant 11$.
- Il est menteur si et seulement si $j - 1 \geqslant 11$, c'est-à-dire $j \geqslant 12$.

Les chevaliers sont donc exactement les $11$ employés les plus travailleurs. Il y a donc
$$11$$
chevaliers.

**Étape 4 : recoller.**

Les deux comptages portent sur les mêmes chevaliers :
$$n - 100 = 11, \qquad \text{donc} \qquad n = 111 .$$

**Étape 5 : vérifier qu'une telle entreprise existe.**

Prenons $111$ employés. Les $11$ plus travailleurs sont aussi, par exemple, les $11$ moins bien
payés (rien ne l'interdit : les deux classements sont indépendants). Déclarons-les chevaliers, et
menteurs les $100$ autres.

- Un chevalier est parmi les $11$ plus travailleurs, donc au plus $10$ personnes travaillent plus
  que lui : sa première phrase est vraie. Il est parmi les $11$ moins bien payés, donc au moins
  $100$ personnes sont mieux payées que lui : sa seconde phrase est vraie.
- Un menteur a au moins $11$ personnes qui travaillent plus que lui, et au plus $99$ personnes
  mieux payées : ses deux phrases sont bien fausses.

Tout est cohérent.

**Conclusion.** L'entreprise compte exactement **$111$ employés**.

## Going further

Les nombres $10$ et $100$ n'ont rien de magique. Refais le raisonnement avec « au plus $a$
personnes travaillent plus que moi » et « au moins $b$ personnes sont mieux payées que moi » : on
trouve toujours
$$n = a + b + 1 .$$
Avec $a = 10$ et $b = 100$, cela redonne $111$.
