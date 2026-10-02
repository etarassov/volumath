---
id: "11439"
title: "Six équipes, six scores consécutifs"
grade: 8
theme: logic-reasoning
difficulty: 4
duration_min: 35
tags: [tournoi, points, encadrement, construction, cas]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2022-2023 n° 4 (combinatoire)"
  reference: "2023-02_Sujet-envoi-4.pdf, Exercices Juniors, exercice 8 ; corrigé 2023-03_corrige-envoi-4.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/02/Sujet-envoi-4.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2023-02_Sujet-envoi-4.pdf"
---

## Statement

Six équipes de football disputent un tournoi : chaque équipe joue exactement une fois contre chacune
des cinq autres. Une victoire rapporte $3$ points au vainqueur et $0$ point au perdant. Un match nul
rapporte $1$ point à chacune des deux équipes.

À la fin du tournoi, les scores des six équipes sont six entiers consécutifs :

$$a, \quad a + 1, \quad a + 2, \quad a + 3, \quad a + 4, \quad a + 5 .$$

Quelles sont les valeurs possibles de $a$ ?

## Hints

1. Combien de matchs sont joués en tout ? Combien de points un match distribue-t-il au total, selon
   qu'il est gagné ou nul ?
2. Encadre la somme des six scores. Il ne reste que trois valeurs de $a$ à examiner.
3. Pour la plus grande valeur, que dire des matchs nuls ? Pour la plus petite, combien de matchs au
   moins ne sont pas nuls ?
4. Pour la valeur qui reste, cherche un tableau de résultats qui marche.

## Solution

**Étape 1 : le total des points.** Chaque équipe affronte les cinq autres, et chaque match concerne
deux équipes. Il y a donc $\frac{6 \times 5}{2} = 15$ matchs.

Un match gagné distribue $3 + 0 = 3$ points, un match nul $1 + 1 = 2$ points. Si $N$ est le nombre de
matchs nuls, le total des points vaut

$$3 \times (15 - N) + 2N = 45 - N .$$

Il est donc compris entre $30$ (tous les matchs nuls) et $45$ (aucun match nul).

La somme des six scores vaut $a + (a+1) + \cdots + (a+5) = 6a + 15$. Donc

$$30 \leqslant 6a + 15 \leqslant 45, \qquad \text{d'où} \qquad \text{2,5} \leqslant a \leqslant 5 .$$

Il reste trois possibilités : $a = 3$, $a = 4$ ou $a = 5$.

**Étape 2 : $a = 5$ est impossible.** La somme vaut alors $6 \times 5 + 15 = 45$, donc $N = 0$ : aucun
match n'est nul. Chaque équipe ne marque alors que des $3$ et des $0$, et son score est un multiple de
$3$. Mais parmi six entiers consécutifs, il y en a qui ne sont pas des multiples de $3$ (par exemple
$a + 1$ ou $a + 2$). Contradiction.

**Étape 3 : $a = 3$ est impossible.** Les scores sont $3, 4, 5, 6, 7, 8$, de somme $33$, donc
$45 - N = 33$ et $N = 12$ : seulement $15 - 12 = 3$ matchs ne sont pas nuls.

Or une équipe qui ne gagne aucun match marque au plus $5$ points (cinq matchs nuls). Et une équipe
qui gagne un seul match marque au plus $3 + 4 = 7$ points. Donc :

- l'équipe à $6$ points a gagné au moins un match ;
- l'équipe à $7$ points a gagné au moins un match ;
- l'équipe à $8$ points a gagné au moins deux matchs.

Cela fait au moins $4$ victoires, toutes dans des matchs différents (un match n'a qu'un vainqueur).
Il y aurait donc au moins $4$ matchs non nuls, et non $3$. Contradiction.

**Étape 4 : $a = 4$ est possible.** Les scores doivent être $4, 5, 6, 7, 8, 9$. Voici un tournoi qui
convient. Dans la ligne d'une équipe, on lit les points qu'elle a marqués contre chacune des autres.

|  | contre A | contre B | contre C | contre D | contre E | contre F | total |
|---|---|---|---|---|---|---|---|
| A | | 3 | 1 | 0 | 0 | 0 | 4 |
| B | 0 | | 1 | 0 | 3 | 1 | 5 |
| C | 1 | 1 | | 3 | 0 | 1 | 6 |
| D | 3 | 3 | 0 | | 1 | 0 | 7 |
| E | 3 | 0 | 3 | 1 | | 1 | 8 |
| F | 3 | 1 | 1 | 3 | 1 | | 9 |

On vérifie que chaque match est cohérent : quand une équipe a $3$ contre une autre, celle-ci a $0$
contre elle, et un $1$ répond toujours à un $1$. Par exemple, A bat B ($3$ et $0$), et C fait match
nul contre A ($1$ et $1$).

**Conclusion.** La seule valeur possible est $\boxed{a = 4}$, avec les scores $4, 5, 6, 7, 8, 9$.
