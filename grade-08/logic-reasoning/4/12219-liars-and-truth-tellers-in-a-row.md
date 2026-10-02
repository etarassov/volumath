---
id: "12219"
title: "Menteurs et sincères dans une file"
grade: 8
theme: logic-reasoning
difficulty: 4
duration_min: 30
tags: [menteurs, chevaliers, file, voisins, inegalite, logique]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, test de sélection de mars 2015"
  reference: "2017-10_ofm-2014-2015-test-mars.pdf, exercices pour les candidats à la JBMO, exercice 1 (pas de corrigé publié)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2014-2015-test-mars.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2017-10_ofm-2014-2015-test-mars.pdf"
---

## Statement

$2014$ personnes sont alignées en file, les unes à côté des autres. Chacune est soit un **menteur**, qui ment chaque fois qu'il parle, soit un **sincère**, qui dit toujours la vérité.

Chacune des $2014$ personnes affirme :

« Il y a plus de menteurs à ma gauche que de sincères à ma droite. »

Ici, « plus » veut dire « strictement plus », et « à ma gauche » désigne toutes les personnes situées à gauche, pas seulement le voisin.

Combien peut-il y avoir de menteurs dans cette file ?

## Hints

1. Essaie d'abord avec $2$, $3$ ou $4$ personnes.
2. Imagine un sincère dont le voisin de droite est un menteur. Compare ce que dit l'un et ce que dit l'autre : les deux nombres comparés changent-ils quand on passe de l'un à l'autre ?
3. Tu dois trouver que tous les menteurs sont à gauche de tous les sincères. Il reste à écrire ce que disent le dernier menteur et le premier sincère.

## Solution

Numérotons les personnes de $1$ à $2014$, de la gauche vers la droite. Pour la personne numéro $i$, notons

- $g_i$ le nombre de menteurs situés à sa gauche,
- $d_i$ le nombre de sincères situés à sa droite.

La personne $i$ affirme que $g_i > d_i$. Donc :

- si $i$ est sincère, alors $g_i > d_i$ ;
- si $i$ est menteur, alors sa phrase est fausse, et $g_i \leqslant d_i$.

**Étape 1. Jamais un sincère juste à gauche d'un menteur.**

Supposons que la personne $i$ soit sincère et que sa voisine de droite, la personne $i + 1$, soit un menteur. Passons de $i$ à $i + 1$.

- À gauche : la personne $i + 1$ voit à sa gauche les mêmes personnes que $i$, plus la personne $i$ elle-même. Mais $i$ est sincère, donc le nombre de menteurs ne change pas : $g_{i+1} = g_i$.
- À droite : la personne $i$ voit à sa droite les mêmes personnes que $i + 1$, plus la personne $i + 1$ elle-même. Mais $i + 1$ est un menteur, donc le nombre de sincères ne change pas : $d_{i+1} = d_i$.

Les deux personnes comparent donc exactement les mêmes nombres. Or la phrase de $i$ est vraie et celle de $i + 1$ est fausse. C'est impossible.

Dans la file, on ne trouve donc jamais un sincère suivi d'un menteur. Autrement dit, **tous les menteurs sont à gauche de tous les sincères** : si $m$ est le nombre de menteurs, les personnes $1$ à $m$ sont des menteurs et les personnes $m + 1$ à $2014$ sont sincères.

**Étape 2. Il y a au moins un menteur et au moins un sincère.**

La personne $1$ n'a personne à sa gauche, donc $g_1 = 0$, et elle ne peut pas avoir $g_1 > d_1$ : c'est un menteur.

La personne $2014$ n'a personne à sa droite, donc $d_{2014} = 0$. Si elle était un menteur, on aurait $g_{2014} \leqslant 0$, c'est-à-dire aucun menteur parmi les $2013$ autres, alors que la personne $1$ en est un. Donc la personne $2014$ est sincère.

Ainsi $1 \leqslant m \leqslant 2013$.

**Étape 3. Ce que disent le dernier menteur et le premier sincère.**

- Le dernier menteur, la personne $m$, a $m - 1$ menteurs à sa gauche et les $2014 - m$ sincères à sa droite. Sa phrase est fausse, donc $m - 1 \leqslant 2014 - m$, c'est-à-dire $2m \leqslant 2015$, soit $m \leqslant 1007$.
- Le premier sincère, la personne $m + 1$, a les $m$ menteurs à sa gauche et $2014 - (m + 1) = 2013 - m$ sincères à sa droite. Sa phrase est vraie, donc $m > 2013 - m$, c'est-à-dire $2m > 2013$, soit $m \geqslant 1007$.

Donc $m = 1007$.

**Étape 4. Cette file convient vraiment.**

Plaçons $1007$ menteurs à gauche puis $1007$ sincères à droite, et vérifions chaque personne.

- Un menteur numéro $i$, avec $i \leqslant 1007$, a $i - 1 \leqslant 1006$ menteurs à sa gauche et $1007$ sincères à sa droite. Comme $1006 < 1007$, sa phrase est bien fausse.
- Un sincère numéro $i$, avec $i \geqslant 1008$, a $1007$ menteurs à sa gauche et $2014 - i \leqslant 1006$ sincères à sa droite. Sa phrase est bien vraie.

**Réponse : il y a forcément exactement $1007$ menteurs, les $1007$ personnes de gauche.**

## Going further

Le même raisonnement marche pour une file de $n$ personnes : les menteurs sont tous à gauche, et leur nombre $m$ vérifie $n \leqslant 2m \leqslant n + 1$. Pour $n$ pair, il y a $\frac{n}{2}$ menteurs. Combien y en a-t-il quand $n$ est impair ?

Que se passe-t-il si chaque personne dit « il y a **au moins autant** de menteurs à ma gauche que de sincères à ma droite » ?
