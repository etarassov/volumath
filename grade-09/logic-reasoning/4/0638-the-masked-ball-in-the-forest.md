---
id: "0638"
title: "Le bal masqué de la forêt"
grade: 9
theme: logic-reasoning
difficulty: 4
duration_min: 40
tags: [raisonnement, denombrement, majoration, contraintes]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Club de mathématiques de Lyon, feuille « Ensembles. Géométrie »"
  reference: "Ensembles.Geometry.pdf, 22 septembre 2023, problème P 9, section « Problèmes divers », d'après M. A. Khachaturyan, 2020"
  url: ""
  original_language: "fr"
  local_copy: "sources/originals/clublyon/Ensembles.Geometry.pdf"
---

## Statement

Quarante animaux vivent dans une forêt : des loups, des renards, des lièvres et des blaireaux. Chaque année ils organisent un bal masqué, et deux règles sont respectées :

- chaque animal porte le masque d'une espèce **différente de la sienne** ;
- d'une année à l'année suivante, un même animal ne porte jamais deux fois le même masque.

Voici ce que l'on a compté aux trois derniers bals :

- **il y a deux ans** : $12$ « renards » et $28$ « loups » ;
- **l'an dernier** : $15$ « blaireaux », $10$ « renards » et $15$ « lièvres » ;
- **cette année** : $15$ « lièvres » et $25$ « renards ».

(Les guillemets rappellent qu'il s'agit des masques portés, et non des espèces réelles.)

Quels sont les animaux les plus nombreux dans la forêt ?

## Hints

1. Les nombres de l'énoncé comptent des **masques**, pas des animaux. Vérifie d'abord que chaque année le total fait bien $40$.
2. Il y a deux ans, il n'y avait que deux sortes de masques : des masques de renard et des masques de loup. Un loup peut-il porter un masque de loup ? Que porte donc chaque loup cette année-là, et combien de loups peut-il y avoir au maximum ?
3. Cette année aussi il n'y a que deux sortes de masques. Que porte forcément chaque renard ? Et chaque lièvre ?
4. Relie maintenant l'an dernier et cette année. Les $10$ animaux qui portaient un masque de renard l'an dernier : que peuvent-ils porter cette année ? Et les $15$ qui portaient un masque de lièvre ?
5. Un renard ne porte jamais de masque de renard, ni l'an dernier ni cette année. Dans quel groupe se trouve-t-il donc forcément ? Fais le même raisonnement pour les lièvres.
6. Tu obtiens trois majorations. Que reste-t-il pour les blaireaux ?

## Solution

Notons $L$, $R$, $E$ et $B$ le nombre de loups, de renards, de lièvres et de blaireaux qui vivent dans la forêt. On sait que

$$L + R + E + B = 40.$$

Chaque année, les masques comptés font bien $40$ : $12 + 28 = 40$, puis $15 + 10 + 15 = 40$, puis $15 + 25 = 40$. Tout le monde participe donc au bal.

L'idée est de majorer séparément $L$, $R$ et $E$, c'est-à-dire de montrer que chacun de ces nombres ne peut pas dépasser une certaine valeur. Ce qui restera sera pour les blaireaux.

**Les loups : au plus 12.**

Il y a deux ans, seuls deux masques étaient portés : renard ($12$ fois) et loup ($28$ fois). Aucun loup ne portait un masque de loup, donc **tous les loups portaient un masque de renard** cette année-là. Comme il n'y avait que $12$ masques de renard :

$$L \leqslant 12.$$

**Qui portait quoi, l'an dernier et cette année ?**

Cette année, seuls deux masques sont portés : lièvre ($15$) et renard ($25$).

- Les $10$ animaux qui portaient un masque de **renard** l'an dernier ne peuvent pas le reporter cette année : ils portent donc tous un masque de **lièvre**.
- Les $15$ animaux qui portaient un masque de **lièvre** l'an dernier ne peuvent pas le reporter : ils portent donc tous un masque de **renard**.
- Restent les $15$ animaux qui portaient un masque de **blaireau** l'an dernier. Ils se répartissent sur les places qui restent : $15 - 10 = 5$ masques de lièvre, et $25 - 15 = 10$ masques de renard. Cela fait bien $5 + 10 = 15$ animaux.

Résumons dans un tableau :

| masque l'an dernier | effectif | masque de lièvre cette année | masque de renard cette année |
|---|---|---|---|
| renard | $10$ | $10$ | $0$ |
| lièvre | $15$ | $0$ | $15$ |
| blaireau | $15$ | $5$ | $10$ |
| **total** | $40$ | $15$ | $25$ |

**Les renards : au plus 5.**

Un renard ne peut pas porter de masque de renard. Cette année, il porte donc un masque de lièvre : il fait partie de la colonne « masque de lièvre cette année ». Mais l'an dernier non plus il ne portait pas de masque de renard : il n'est donc pas dans la première ligne du tableau.

Il ne reste qu'une case : les $5$ animaux qui portaient un masque de blaireau l'an dernier et un masque de lièvre cette année. D'où

$$R \leqslant 5.$$

**Les lièvres : au plus 10.**

Un lièvre ne peut pas porter de masque de lièvre. Cette année, il porte donc un masque de renard : il est dans la dernière colonne. Et l'an dernier il ne portait pas de masque de lièvre : il n'est donc pas dans la deuxième ligne.

Il ne reste qu'une case : les $10$ animaux qui portaient un masque de blaireau l'an dernier et un masque de renard cette année. D'où

$$E \leqslant 10.$$

**On compte ce qui reste.**

$$L + R + E \leqslant 12 + 5 + 10 = 27,$$

donc

$$B = 40 - (L + R + E) \geqslant 40 - 27 = 13.$$

**Conclusion.**

Il y a au moins $13$ blaireaux, alors qu'il y a au plus $12$ loups, au plus $10$ lièvres et au plus $5$ renards. Les blaireaux sont donc, à coup sûr, les animaux les plus nombreux de la forêt.

Remarquons que l'énoncé ne permet pas de connaître les effectifs exacts : plusieurs répartitions restent possibles. Mais quelle que soit la répartition, la réponse à la question posée est la même.

## Going further

1. Les trois majorations sont-elles atteignables ? Essaie de construire une répartition complète (qui porte quoi, chaque année) avec exactement $12$ loups, $5$ renards, $10$ lièvres et $13$ blaireaux.
2. Quel est le plus grand nombre de blaireaux possible ?
3. Où le raisonnement se casserait-il si la règle « jamais le même masque deux années de suite » n'existait pas ? Pourrait-on encore répondre à la question ?
