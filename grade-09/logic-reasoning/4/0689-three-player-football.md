---
id: "0689"
title: "Le foot à trois"
grade: 9
theme: logic-reasoning
difficulty: 4
duration_min: 35
tags: [raisonnement, denombrement, parite, jeu]
adapted_from: null
see_also: ["0739"]
created: 2026-09-19
source:
  name: "Club de mathématiques de Lyon, feuille « Inégalités. Égalités. Équations et systèmes d'équations », 3 novembre 2023"
  reference: "Inégalités.pdf, exercice 47, d'après la Coupe Animath d'automne 2017, problème 3"
  url: ""
  original_language: "fr"
  local_copy: "sources/originals/clublyon/Inégalités.pdf"
---

## Statement

Le foot à trois personnes se joue en phases successives : un joueur est gardien pendant que les deux autres, appelés « joueurs de champ », tentent de marquer un but. Dès qu'un joueur marque, la phase se termine et il devient gardien pour la phase suivante.

Amandine, Bobby et Charles jouent à ce jeu. La partie terminée, ils se souviennent qu'Amandine a été $12$ fois joueuse de champ, Bobby $21$ fois joueur de champ, et Charles $8$ fois gardien.

a) Combien y a-t-il eu de phases au total ?

b) Qui a marqué le sixième but ?

## Hints

1. À chaque phase, il y a exactement un gardien et deux joueurs de champ. Si la partie a compté $N$ phases, combien de fois Amandine a-t-elle été gardienne ?
2. Additionne les trois nombres de fois où chacun a été gardien : que doit valoir cette somme ?
3. Pour la question b), demande-toi si un joueur peut être gardien deux phases de suite. Qui devient gardien à la phase suivante ?
4. Amandine a été gardienne un très grand nombre de fois par rapport au nombre de phases. Note les numéros des phases où elle est gardienne et compare-les.
5. Si $p_1 < p_2 < \ldots < p_{13}$ sont les numéros des phases où Amandine est gardienne, quel écart minimum y a-t-il entre deux numéros consécutifs ? Qu'en déduis-tu sur $p_{13} - p_1$ ?
6. Le sixième but termine la phase $6$. Qui est gardien à la phase $7$ ?

## Solution

### a) Le nombre de phases

Notons $N$ le nombre total de phases. À chaque phase, chacun des trois joueurs est soit gardien, soit joueur de champ. Donc, pour chaque joueur,

$$(\text{nombre de fois gardien}) + (\text{nombre de fois joueur de champ}) = N.$$

- Amandine a été $12$ fois joueuse de champ, donc $N - 12$ fois gardienne.
- Bobby a été $21$ fois joueur de champ, donc $N - 21$ fois gardien.
- Charles a été $8$ fois gardien.

Par ailleurs, chaque phase a exactement un gardien, donc la somme des trois nombres de fois où l'on est gardien vaut $N$ :

$$(N - 12) + (N - 21) + 8 = N,$$
$$2N - 25 = N,$$
$$N = 25.$$

**Il y a donc eu $25$ phases.** Amandine a été gardienne $25 - 12 = 13$ fois, Bobby $25 - 21 = 4$ fois, et Charles $8$ fois. On vérifie : $13 + 4 + 8 = 25$.

### b) Le sixième but

**Étape 1. Un joueur ne peut pas être gardien deux phases de suite.**

Le gardien de la phase suivante est celui qui vient de marquer. Or le gardien d'une phase ne marque pas : seuls les joueurs de champ marquent. Donc celui qui est gardien à la phase $k$ n'est pas gardien à la phase $k+1$.

**Étape 2. Amandine est gardienne exactement aux phases impaires.**

Notons $p_1 < p_2 < \ldots < p_{13}$ les numéros des $13$ phases où Amandine est gardienne. D'après l'étape 1, deux de ces numéros ne peuvent pas se suivre, donc

$$p_{k+1} \geq p_k + 2 \qquad \text{pour } k = 1, \ldots, 12.$$

En ajoutant ces $12$ inégalités, on obtient $p_{13} \geq p_1 + 24$. Comme $p_1 \geq 1$, cela donne $p_{13} \geq 25$. Mais il n'y a que $25$ phases, donc $p_{13} \leq 25$.

On a donc $p_{13} = 25$, et toutes les inégalités utilisées sont en fait des égalités : $p_1 = 1$ et $p_{k+1} = p_k + 2$ pour tout $k$. Les phases où Amandine est gardienne sont donc exactement

$$1,\; 3,\; 5,\; 7,\; \ldots,\; 25,$$

c'est-à-dire toutes les phases de numéro impair.

**Étape 3. Conclure.**

Le sixième but est celui qui termine la phase $6$ (une phase se termine dès qu'un but est marqué, donc le $k$-ième but termine la phase $k$). Celui qui l'a marqué devient gardien pour la phase $7$.

Or $7$ est impair, donc le gardien de la phase $7$ est Amandine.

**Conclusion.** Il y a eu $25$ phases, et c'est **Amandine** qui a marqué le sixième but.

*Remarque.* Le même argument donne bien plus : le but numéro $k$ est marqué par le gardien de la phase $k+1$, et cette phase est impaire exactement quand $k$ est pair. Donc **tous** les buts de numéro pair ont été marqués par Amandine. En revanche, pour les buts de numéro impair, le gardien de la phase suivante est Bobby ou Charles, et l'énoncé ne permet pas de les départager.

## Going further

1. Qui était gardien à la phase $1$ ? Peut-on savoir qui a marqué le premier but ?
2. Amandine a marqué tous les buts de numéro pair. Combien de buts a-t-elle marqués en tout ?
3. Si Bobby avait été $20$ fois joueur de champ au lieu de $21$, combien y aurait-il eu de phases ? Pourrait-on encore dire qui a marqué le sixième but ?
