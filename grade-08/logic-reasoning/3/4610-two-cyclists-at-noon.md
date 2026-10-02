---
id: "4610"
title: "Deux cyclistes à midi"
grade: 8
theme: logic-reasoning
difficulty: 3
duration_min: 25
tags: [vitesse, distance, cas, discussion]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Junior Circle, Problems from Russian Olympiads"
  reference: "Handout-2243-1991.pdf, exercice 2 (réponse dans Handout-2253-1991.pdf)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-2243-1991.pdf"
---

## Statement

Deux cyclistes roulent sur une même piste toute droite. Le premier roule à $12$ km/h, le second
à $15$ km/h. Chacun garde sa vitesse et son sens de marche.

À midi, la distance qui les sépare est de $35$ km.

Quelles sont toutes les distances possibles entre eux à $14$ h ?

## Hints

1. L'énoncé ne dit pas dans quel sens roule chacun. Combien de situations différentes cela
   fait-il ?
2. S'ils roulent dans le même sens, la distance entre eux change-t-elle vite ? De combien de
   kilomètres par heure ?
3. S'ils roulent l'un vers l'autre, de combien de kilomètres la distance diminue-t-elle en deux
   heures ? Compare ce nombre à $35$.
4. Attention : une distance ne peut pas être négative. Que se passe-t-il quand les deux cyclistes
   se croisent ?

## Solution

L'énoncé ne précise pas les sens de marche : il faut donc examiner tous les cas. Comme il y a
deux sens possibles pour chaque cycliste, cela fait quatre situations, que nous allons regrouper
en deux familles.

**Ils roulent dans le même sens.**

Ils s'éloignent ou se rapprochent alors de
$$15 - 12 = 3 \text{ km/h},$$
soit $3 \times 2 = 6$ km en deux heures.

- Si c'est le plus lent qui est devant, le plus rapide le rattrape : la distance diminue de
  $6$ km. Elle vaut $35 - 6 = 29$ km. (Le rapide n'a pas eu le temps de rattraper les
  $35$ km, donc il n'y a pas de dépassement.)
- Si c'est le plus rapide qui est devant, il creuse l'écart : la distance vaut
  $35 + 6 = 41$ km.

**Ils roulent en sens contraires.**

Ils se rapprochent ou s'éloignent alors de
$$12 + 15 = 27 \text{ km/h},$$
soit $27 \times 2 = 54$ km en deux heures.

- S'ils roulent l'un vers l'autre, la distance diminue de $54$ km. Mais $54$ est plus grand que
  $35$ : ils se croisent en cours de route, puis continuent à s'éloigner. Ils se croisent après
  $$35 \div 27 = \frac{35}{27} \text{ heure},$$
  c'est-à-dire un peu moins d'une heure vingt. Il leur reste alors $2 - \frac{35}{27}$ heure de
  route, pendant laquelle ils s'éloignent. La distance finale vaut
  $$54 - 35 = 19 \text{ km}.$$
- S'ils se tournent le dos, la distance augmente de $54$ km : elle vaut
  $35 + 54 = 89$ km.

**Conclusion.** À $14$ h, la distance entre les deux cyclistes peut valoir
$$19 \text{ km}, \quad 29 \text{ km}, \quad 41 \text{ km} \quad \text{ou} \quad 89 \text{ km},$$
selon les sens de marche. Ce sont les quatre seules possibilités.

## Going further

Le piège du troisième cas est classique : on calcule $35 - 54 = -19$ et on est tenté de répondre
que c'est impossible. Une distance ne peut pas être négative, mais cela ne veut pas dire que la
situation est impossible : cela veut dire que les cyclistes se sont croisés, et que la distance a
recommencé à croître. C'est la valeur absolue, $|35 - 54| = 19$, qui donne la bonne réponse.
