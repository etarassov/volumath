---
id: "6110"
title: "Les crêpes brûlées"
grade: 11
theme: combinatorics
difficulty: 4
duration_min: 45
tags: [algorithme, majoration, recherche-exhaustive, graphe-des-positions, tri]
adapted_from: null
see_also: ["6109"]
created: 2026-09-20
source:
  name: "MathCircles.org (National Association of Math Circles), MTCircular Winter/Spring 2016, rubrique « Problem Circle »"
  reference: "MTCircularWS2016.pdf, page 18, « Problem Circle: Burnt Pancakes », demande le pire des cas pour deux, trois et quatre crêpes brûlées. Le magazine ne publie aucune solution."
  url: "https://mathteacherscircle.org/newsletter"
  original_language: "en"
  local_copy: "sources/originals/namc/MTCircularWS2016.pdf"
---

## Statement

Reprenons la pile de crêpes du serveur, mais cette fois **chaque crêpe est brûlée d'un seul côté**. Le serveur veut servir une pile doublement correcte : les crêpes rangées de la plus petite en haut à la plus grande en bas, **et** toutes les faces brûlées cachées en dessous.

Le geste reste le même : glisser la spatule quelque part dans la pile et retourner d'un bloc tout ce qui est au-dessus. Mais attention, retourner un paquet ne fait pas qu'en inverser l'ordre : **chaque crêpe du paquet se retrouve aussi sur son autre face**. En particulier, retourner la seule crêpe du dessus a maintenant un effet, celui de la remettre à l'endroit ou à l'envers.

Écrivons une pile de haut en bas, avec la taille de chaque crêpe. Une crêpe dont la face brûlée est cachée dessous s'écrit normalement, et une crêpe dont la face brûlée est dessus se note avec une barre. Par exemple, pour deux crêpes, la pile bien servie est

$$1\,2,$$

et la pile $\overline{2}\,1$ signifie : la grande crêpe est en haut avec le brûlé visible, la petite est en bas avec le brûlé caché.

a) Montrer que, pour $n$ crêpes brûlées, $3n - 2$ retournements suffisent toujours.

b) Pour $n = 2$, montrer qu'il existe une pile qui exige vraiment $4$ retournements. La borne du a) est donc atteinte dans ce cas.

## Hints

1. Pour a), reprends l'algorithme des crêpes non brûlées : placer la plus grande, puis la deuxième plus grande, et ainsi de suite. Que faut-il ajouter à cause du brûlé ?
2. Une fois la plus grande crêpe amenée tout en haut, dans quel sens doit-elle être **avant** le grand retournement, pour arriver en bas du bon côté ?
3. Compte : au plus un geste pour la faire monter, au plus un pour la mettre du bon côté, un pour l'envoyer en bas. Et la toute dernière crêpe, celle du dessus à la fin ?
4. Pour b), il n'y a que $8$ piles de deux crêpes brûlées : deux ordres de tailles, et deux faces pour chacune des deux crêpes. Il n'y a aussi que deux gestes : retourner la crêpe du haut, ou retourner les deux.
5. Pars de la pile bien servie et remonte : quelles piles sont à un geste ? à deux gestes ? Comme tout geste est réversible, cela donne directement le nombre de retournements nécessaires pour chacune des huit piles.

## Solution

Notons les deux gestes possibles sur une pile de deux crêpes :

- $R_1$ : retourner la crêpe du haut toute seule (elle reste en haut et change de face) ;
- $R_2$ : retourner les deux (elles échangent leur place et changent toutes deux de face).

Plus généralement, $R_k$ désigne le retournement des $k$ crêpes du haut.

### a) Au plus $3n - 2$ retournements

**L'algorithme.** Supposons qu'il reste $k$ crêpes à ranger, tout en haut de la pile, les autres étant déjà bien placées en dessous.

1. Repérons la plus grande des $k$ crêpes restantes. Si elle n'est pas déjà tout en haut, disons qu'elle occupe la position $j$ : le geste $R_j$ l'amène tout en haut. Coût : au plus $1$ retournement.
2. Elle est maintenant en haut. Pour qu'elle arrive en bas du bloc **avec le brûlé caché**, il faut qu'elle soit à cet instant brûlé **visible**, car le grand retournement va la retourner. Si ce n'est pas le cas, le geste $R_1$ la retourne. Coût : au plus $1$ retournement.
3. Le geste $R_k$ envoie alors cette crêpe tout en bas du bloc, le brûlé caché : elle est à sa place définitive. Coût : $1$ retournement.

Au plus $3$ retournements ont placé une crêpe pour de bon, et on recommence avec les $k-1$ crêpes du dessus.

**La dernière crêpe.** Quand il n'en reste qu'une, c'est la plus petite et elle est déjà tout en haut, donc à sa place. Il suffit éventuellement de la retourner sur elle-même pour cacher le brûlé : au plus $1$ retournement.

**Le compte.** L'étape à $3$ retournements sert pour $k = n$, puis $k = n-1$, ..., jusqu'à $k = 2$, c'est-à-dire $n - 1$ fois. Puis la dernière crêpe coûte au plus $1$. Au total :

$$3(n-1) + 1 = 3n - 2 .$$

Pour $n = 1$, la formule donne $1$, ce qui est correct : une crêpe unique posée à l'envers demande un retournement.

### b) Deux crêpes peuvent exiger quatre retournements

Pour $n = 2$, la formule du a) donne $3 \times 2 - 2 = 4$. Montrons que ce nombre est réellement atteint.

Une pile de deux crêpes est décrite par l'ordre des tailles ($12$ ou $21$) et par la face de chacune, soit $2 \times 2 \times 2 = 8$ piles en tout.

Les deux gestes $R_1$ et $R_2$ sont **réversibles** : refaire le même geste ramène à la pile de départ. Le nombre minimal de retournements pour amener une pile à la pile bien servie $1\,2$ est donc aussi le nombre minimal de retournements pour aller de $1\,2$ à cette pile. Partons donc de $1\,2$ et explorons.

**Distance $0$ :** $1\,2$.

**Distance $1$ :** depuis $1\,2$,

- $R_1$ donne $\overline{1}\,2$ ;
- $R_2$ inverse l'ordre et les deux faces, et donne $\overline{2}\,\overline{1}$.

**Distance $2$ :** depuis $\overline{1}\,2$, le geste $R_1$ ramène à $1\,2$, et $R_2$ donne $\overline{2}\,1$. Depuis $\overline{2}\,\overline{1}$, le geste $R_1$ donne $2\,\overline{1}$, et $R_2$ ramène à $1\,2$.

Les nouvelles piles sont donc $\overline{2}\,1$ et $2\,\overline{1}$.

**Distance $3$ :** depuis $\overline{2}\,1$, le geste $R_1$ donne $2\,1$ et $R_2$ ramène à $\overline{1}\,2$. Depuis $2\,\overline{1}$, le geste $R_1$ ramène à $\overline{2}\,\overline{1}$ et $R_2$ donne $1\,\overline{2}$.

Les nouvelles piles sont donc $2\,1$ et $1\,\overline{2}$.

**Distance $4$ :** depuis $2\,1$, le geste $R_1$ ramène à $\overline{2}\,1$ et $R_2$ donne $\overline{1}\,\overline{2}$. Depuis $1\,\overline{2}$, le geste $R_1$ donne $\overline{1}\,\overline{2}$ et $R_2$ ramène à $2\,\overline{1}$.

La seule nouvelle pile est $\overline{1}\,\overline{2}$.

Récapitulons dans un tableau :

| Nombre de retournements | Piles |
|---|---|
| $0$ | $1\,2$ |
| $1$ | $\overline{1}\,2$ et $\overline{2}\,\overline{1}$ |
| $2$ | $\overline{2}\,1$ et $2\,\overline{1}$ |
| $3$ | $2\,1$ et $1\,\overline{2}$ |
| $4$ | $\overline{1}\,\overline{2}$ |

Les huit piles y sont toutes, chacune une seule fois. La pile

$$\overline{1}\,\overline{2}$$

exige donc exactement $4$ retournements : c'est la pile dont les tailles sont **déjà dans le bon ordre**, mais dont les deux crêpes montrent leur côté brûlé. C'est l'ironie du problème : la pile qui a l'air la plus proche du but est la plus éloignée.

## Going further

Pour trois crêpes brûlées, le pire des cas vaut $6$ et non $7$ : la majoration $3n-2$ n'est donc plus atteinte. Pour quatre crêpes il vaut $8$, et pour cinq crêpes $10$. Ces valeurs se calculent en explorant toutes les positions ($2^n \times n!$ pour $n$ crêpes, soit déjà $3840$ positions pour $n = 5$), ce qui n'est plus raisonnable à la main.

Le problème des crêpes brûlées n'est pas qu'une curiosité de salle de classe : il sert de modèle pour comparer deux génomes. Un chromosome est vu comme une suite de blocs orientés, et une mutation qui retourne un morceau du chromosome est exactement un retournement de crêpes brûlées. Le nombre minimal de retournements mesure alors la distance évolutive entre deux espèces.
