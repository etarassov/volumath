---
id: "8255"
title: "Combien de chaussettes pour être sûr ?"
grade: 8
theme: combinatorics
difficulty: 1
duration_min: 10
tags: [principe des tiroirs, pire des cas]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2019, cours de Groupe B"
  reference: "PolycopieV1-1.pdf, chapitre IV « Groupe B », première partie, « Principe des tiroirs, récurrence » (Yohann D'Anello), exercice 1"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/PolycopieV1-1.pdf"
---

## Statement

Un tiroir contient $2019$ paires de chaussettes, toutes de modèles différents : deux
chaussettes se ressemblent si et seulement si elles viennent de la même paire.

Le tiroir est tellement en désordre qu'on ne peut pas regarder dedans : on sort les
chaussettes une par une, au hasard.

Combien faut-il en sortir au minimum pour être **certain** d'avoir deux chaussettes
identiques ?

## Hints

1. « Être certain » veut dire : même dans le pire des cas, même si on n'a vraiment pas de
   chance.
2. Quel est le plus grand nombre de chaussettes qu'on peut sortir sans jamais en avoir deux
   identiques ?
3. Combien y a-t-il de modèles différents ?

## Solution

**Réponse : $2020$ chaussettes.**

**$2019$ chaussettes ne suffisent pas.**

Il y a $2019$ modèles différents. On peut très bien sortir $2019$ chaussettes sans avoir la
moindre paire : une de chaque modèle. C'est le pire des cas, et il est possible. Donc $2019$ ne
garantit rien.

**$2020$ chaussettes suffisent toujours.**

Supposons qu'on ait sorti $2020$ chaussettes et qu'aucune paire ne soit complète. Alors chaque
modèle apparaît au plus une fois parmi les chaussettes sorties. Comme il n'y a que $2019$
modèles, on aurait sorti au plus $2019$ chaussettes. C'est faux, puisqu'on en a sorti $2020$.

Il y a donc forcément deux chaussettes du même modèle.

C'est le **principe des tiroirs** : si l'on range $2020$ objets dans $2019$ casiers, un casier
contient au moins deux objets. Ici les casiers sont les modèles et les objets les chaussettes
sorties.

$$\boxed{\text{Il faut sortir } 2020 \text{ chaussettes.}}$$

## Going further

1. Combien faut-il en sortir pour être sûr d'avoir **deux** paires complètes ?
2. Le tiroir contient maintenant $10$ chaussettes noires, $12$ bleues et $14$ rouges (les
   chaussettes d'une même couleur sont identiques entre elles). Combien en sortir pour être sûr
   d'avoir une paire de la même couleur ? Et pour être sûr d'avoir une paire **noire** ?
3. Pourquoi la réponse à la deuxième question du point 2 est-elle si différente de la première ?
