---
id: "6103"
title: "Trois couleurs dans le plan, deux sur chaque droite"
grade: 11
theme: coloring
difficulty: 4
duration_min: 40
tags: [coloriage, plan, droites, construction, disjonction-de-cas]
adapted_from: null
see_also: ["6008"]
created: 2026-09-20
source:
  name: "MathCircles.org (National Association of Math Circles), MTCircular Winter 2012, rubrique « Problem Circle »"
  reference: "MTCircularWinter2012.pdf, rappel du problème « Have Colors, Will Paint » paru dans le numéro précédent. Le magazine annonce que c'est possible et montre deux dessins, sans rédiger de solution."
  url: "https://mathteacherscircle.org/newsletter"
  original_language: "en"
  local_copy: "sources/originals/namc/MTCircularWinter2012.pdf"
---

## Statement

On dispose de trois couleurs : rouge, bleu et vert.

Peut-on peindre **chaque** point du plan avec l'une de ces trois couleurs de telle sorte que **toute** droite du plan porte exactement deux couleurs — jamais une seule, jamais les trois ?

Si oui, décris un coloriage qui convient et démontre qu'il convient.

## Hints

1. Une droite porte exactement deux couleurs, c'est-à-dire qu'il lui manque exactement une couleur. Pour chaque droite, demande-toi quelle couleur lui manque.
2. Essaie de rendre une couleur très rare. Que se passe-t-il si une seule couleur, le rouge, n'est portée que par **un seul point** $O$ ?
3. Avec ce choix, toute droite qui ne passe pas par $O$ doit porter du bleu et du vert, et toute droite qui passe par $O$ ne doit porter, à part $O$, qu'une seule autre couleur : elle est donc entièrement bleue ou entièrement verte une fois $O$ retiré.
4. Il faut donc partager les droites passant par $O$ en deux familles, les « bleues » et les « vertes ». Une droite qui ne passe pas par $O$ coupe toutes les droites passant par $O$ sauf une : laquelle ? Combien de droites faut-il au minimum dans chaque famille pour qu'elle en rencontre forcément une de chaque ?
5. Prends un repère, $O$ l'origine, et essaie : famille bleue = les deux axes, famille verte = toutes les autres droites passant par $O$.

## Solution

**Oui, c'est possible.** Voici un coloriage qui convient.

Plaçons un repère d'origine $O$ et peignons :

- **en rouge** : le seul point $O$ ;
- **en bleu** : tous les points des deux axes, sauf $O$ ;
- **en vert** : tous les autres points du plan.

Chaque point du plan reçoit une couleur et une seule. Vérifions maintenant que toute droite porte exactement deux couleurs. Il y a trois sortes de droites.

**Cas 1 : la droite est l'un des deux axes.**

Elle contient $O$, qui est rouge, et tous ses autres points sont sur un axe donc bleus. Elle porte le rouge et le bleu, et rien d'autre : exactement deux couleurs.

**Cas 2 : la droite passe par $O$ sans être un axe.**

Elle contient $O$, qui est rouge. Un autre de ses points ne peut pas être sur un axe : une droite et un axe qui ne sont pas confondus se coupent en un point au plus, et ici ce point est déjà $O$. Tous les autres points de la droite sont donc verts. Elle porte le rouge et le vert : exactement deux couleurs.

**Cas 3 : la droite ne passe pas par $O$.**

- Elle ne porte pas de rouge, puisque $O$ n'est pas dessus.
- Elle porte du bleu. En effet, une droite ne peut être parallèle qu'à un seul des deux axes. Elle coupe donc au moins l'un des deux, en un point qui n'est pas $O$ : ce point est bleu.
- Elle porte du vert. Elle a une infinité de points, et au plus deux d'entre eux sont sur les axes (un sur chaque axe au maximum). Tous les autres sont verts.

Elle porte donc le bleu et le vert, et pas le rouge : exactement deux couleurs.

Les trois cas couvrent toutes les droites, donc le coloriage convient. $\square$

**D'où vient l'idée.**

Le point de départ est de rendre une couleur aussi rare que possible : le rouge n'est porté que par le point $O$. Alors :

- une droite passant par $O$ porte déjà du rouge, donc il ne lui faut plus qu'une seule autre couleur : privée de $O$, elle doit être monochrome ;
- une droite ne passant pas par $O$ ne porte pas de rouge, donc il lui faut du bleu **et** du vert.

Il s'agit donc de partager les droites passant par $O$ en deux familles, l'une peinte en bleu, l'autre en vert. Une droite $d$ qui ne passe pas par $O$ coupe toute droite passant par $O$, sauf la parallèle à $d$ menée par $O$ : elle en rate donc exactement une. Si chaque famille contient au moins **deux** droites, $d$ rencontre forcément une droite bleue et une droite verte, et tout marche.

Dans la solution ci-dessus, la famille bleue est faite des deux axes, et la famille verte de toutes les autres droites passant par $O$. N'importe quel autre partage en deux familles d'au moins deux droites conviendrait aussi ; c'est pourquoi le problème a beaucoup de réponses différentes.

## Going further

Pourquoi « exactement deux » est-il le premier cas intéressant ? Si l'on exigeait que toute droite ne porte qu'**une** couleur, le plan entier serait d'une seule couleur : deux points quelconques sont sur une droite commune, donc ont la même couleur.

Le magazine annonce deux réponses différentes à ce problème. La solution ci-dessus en fournit en réalité une infinité : à chaque partage des droites passant par $O$ en deux familles comptant chacune au moins deux droites correspond un coloriage qui convient. Vérifie par exemple que le coloriage suivant marche aussi : rouge pour $O$, bleu pour les points non nuls des trois droites d'équations $y = 0$, $y = x$ et $y = -x$, vert pour tout le reste.
