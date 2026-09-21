---
id: "7001"
title: "Quarante passagers et quarante-neuf pièces"
grade: 8
theme: logic-reasoning
difficulty: 3
duration_min: 25
tags: [monnaie, denombrement, raisonnement par l absurde]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique junior de Cachan 2011, groupe des débutants"
  reference: "stage_junior_2011.pdf, « Arithmétique », TD (Antoine Taveneaux), exercice 8 ; repris en 2012 (stage_junior_2012.pdf, débutants, arithmétique après-midi, exercice 11)"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_junior_2011.pdf"
---

## Statement

Dans un pays lointain, il n'existe que trois sortes de pièces de monnaie : des pièces de
$10$ sous, des pièces de $15$ sous et des pièces de $20$ sous.

Quarante passagers montent dans un bus. Le ticket coûte $5$ sous par personne. À eux tous,
les quarante passagers ont exactement $49$ pièces dans leurs poches.

Ils ont le droit de se prêter des pièces, de se rendre la monnaie entre eux, bref de
s'arranger comme ils veulent. Mais à la fin, chaque passager doit avoir payé son ticket,
c'est-à-dire avoir dépensé exactement $5$ sous, ni plus ni moins.

Montrer que c'est impossible.

## Hints

1. Combien le conducteur doit-il encaisser en tout ?
2. Une fois tout terminé, combien vaut ce qui reste dans la poche d'un passager donné ?
   Peut-il avoir la poche vide ?
3. Si chaque passager garde au moins une pièce, combien de pièces au maximum se retrouvent
   chez le conducteur ? Et combien valent-elles au plus ?

## Solution

**Ce que le conducteur doit encaisser.**

Il y a $40$ passagers et chaque ticket coûte $5$ sous, donc le conducteur doit recevoir en tout
$$40 \times 5 = 200 \text{ sous}.$$

**Chaque passager garde au moins une pièce.**

Raisonnons par l'absurde et supposons que tout se passe bien.

Regardons un passager quelconque. Au départ, il a un certain nombre de pièces. Il ne peut pas
en avoir zéro : il doit payer $5$ sous, il lui faut donc de l'argent. Il a donc au moins une
pièce, et comme la plus petite pièce vaut $10$ sous, il a au départ **au moins $10$ sous**.

À la fin, il a dépensé exactement $5$ sous. Il lui reste donc au moins
$$10 - 5 = 5 \text{ sous}.$$

Il lui reste quelque chose : il a donc **au moins une pièce** dans la poche à l'arrivée.

**Comptons les pièces.**

Les $49$ pièces du début se retrouvent, à la fin, soit chez un passager, soit chez le
conducteur. On vient de voir que chacun des $40$ passagers en garde au moins une : cela fait
au moins $40$ pièces chez les passagers. Il en reste donc au plus
$$49 - 40 = 9$$
pour le conducteur.

**La contradiction.**

Le conducteur a donc au plus $9$ pièces. La plus grosse pièce valant $20$ sous, il a encaissé
au plus
$$9 \times 20 = 180 \text{ sous}.$$

Or il devait encaisser $200$ sous, et $180 < 200$.

**Conclusion.** C'est impossible : avec seulement $49$ pièces de $10$, $15$ ou $20$ sous, les
quarante passagers ne peuvent pas tous payer exactement leur ticket de $5$ sous.

## Going further

Le raisonnement dit pourquoi $49$ pièces ne suffisent pas, mais pas combien il en faudrait.

Il en faut au moins $50$ : les passagers en gardent $40$, et il en faut au moins $10$ chez le
conducteur pour atteindre $200$ sous. Voici un exemple qui fonctionne, avec $90$ pièces :
$40$ pièces de $10$, $40$ pièces de $15$ et $10$ pièces de $20$.

- Au départ, dix passagers ont $10 + 20$, vingt passagers ont $15 + 15$, et dix passagers ont
  $10 + 10 + 10$. Chacun a bien $30$ sous.
- À l'arrivée, chaque passager garde une pièce de $10$ et une pièce de $15$, soit $25$ sous :
  il a bien dépensé $5$ sous.
- Le conducteur repart avec les dix pièces de $20$, soit exactement $200$ sous.
