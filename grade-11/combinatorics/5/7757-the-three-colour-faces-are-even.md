---
id: "7757"
title: "Les faces tricolores sont en nombre pair"
grade: 11
theme: combinatorics
difficulty: 5
duration_min: 50
tags: [double-comptage, parite, polyedre, coloriage]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Montpellier 2014, la muraille"
  reference: "stage_ete_2014.pdf, « La muraille », exercice 16 (niveau 1, deux étoiles). Le polycopié ne donne pas de solution : l'exercice est resté non résolu au tableau d'affichage."
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2014.pdf"
---

## Statement

On considère un polyèdre convexe dont toutes les faces sont des triangles, par exemple un tétraèdre, un octaèdre ou un icosaèdre.

On colorie chacun de ses sommets en rouge, en bleu ou en vert. On a le droit de n'utiliser qu'une seule couleur, ou deux, ou les trois ; rien n'est imposé.

Une face est dite **tricolore** lorsque ses trois sommets portent trois couleurs différentes.

Montrer que le nombre de faces tricolores est toujours **pair**.

## Hints

1. Essaie sur un tétraèdre, qui n'a que quatre faces et quatre sommets. Colorie ses sommets de toutes les façons que tu veux et compte : tu trouveras $0$, $2$ ou $4$ faces tricolores, jamais $1$ ni $3$.
2. Une couleur va jouer un rôle à part. Mets le vert de côté et ne t'intéresse plus qu'aux arêtes dont **une extrémité est rouge et l'autre bleue**. Appelons-les les arêtes bicolores.
3. Compte les couples (face, arête bicolore de cette face), de deux façons.
4. Première façon : chaque arête d'un polyèdre appartient à exactement deux faces. Que vaut alors le total ?
5. Seconde façon : pour chaque type de face, compte combien elle possède d'arêtes bicolores. Fais la liste de tous les cas ; il y en a peu. Où l'impair apparaît-il ?

## Solution

**L'idée : une seule quantité, comptée de deux manières, force la parité.**

Appelons **arête RB** une arête dont une extrémité est rouge et l'autre bleue. Nous allons compter les couples

$$(F,\ e) \quad \text{où } F \text{ est une face et } e \text{ une arête RB de cette face} .$$

Notons $T$ le nombre total de ces couples.

### Premier comptage : par les arêtes

Sur un polyèdre, **chaque arête appartient exactement à deux faces**. Donc chaque arête RB apparaît dans exactement deux couples.

Si le polyèdre possède $m$ arêtes RB en tout,

$$T = 2m .$$

En particulier, $T$ est **pair**.

### Second comptage : par les faces

Prenons une face, c'est-à-dire un triangle, et comptons combien de ses trois arêtes sont RB. Tout dépend uniquement des couleurs de ses trois sommets. Passons en revue les possibilités.

| couleurs des trois sommets | arêtes RB de la face |
|---|---|
| rouge, bleu, vert (face tricolore) | $1$ |
| rouge, rouge, bleu | $2$ |
| rouge, bleu, bleu | $2$ |
| rouge, rouge, rouge | $0$ |
| bleu, bleu, bleu | $0$ |
| vert, vert, vert | $0$ |
| rouge, rouge, vert | $0$ |
| rouge, vert, vert | $0$ |
| bleu, bleu, vert | $0$ |
| bleu, vert, vert | $0$ |

Vérifions la première ligne, qui est celle qui compte. Une face tricolore a ses trois sommets rouge, bleu et vert. Ses trois arêtes relient rouge-bleu, bleu-vert et vert-rouge : une seule est RB.

Vérifions la deuxième. Avec deux sommets rouges $R_1$, $R_2$ et un sommet bleu $B$, les trois arêtes sont $R_1R_2$ (pas RB), $R_1B$ (RB) et $R_2B$ (RB) : il y en a deux.

Le tableau montre l'essentiel :

> Une face possède un **nombre impair** d'arêtes RB **si et seulement si** elle est tricolore.

En sommant sur toutes les faces,

$$T = \sum_{F \text{ face}} (\text{nombre d'arêtes RB de } F) .$$

### On recolle

Dans cette somme, les faces qui ne sont pas tricolores apportent chacune un nombre pair ($0$ ou $2$). Les faces tricolores apportent chacune $1$.

Si l'on note $t$ le nombre de faces tricolores, la somme est donc

$$T = t + (\text{une somme de nombres pairs}) ,$$

donc $T$ et $t$ ont la même parité.

Or le premier comptage a donné $T = 2m$, qui est pair. Donc $t$ est pair.

**Conclusion : le nombre de faces tricolores est toujours pair.**

## Going further

Le vert n'a servi à rien, sinon à être ignoré. On aurait pu compter les arêtes rouge-vert, ou bleu-vert, et le raisonnement aurait marché à l'identique. C'est souvent le signe d'un bon argument : il reste vrai quand on permute les données.

La démonstration n'utilise du polyèdre qu'une seule propriété, **chaque arête borde exactement deux faces**. Elle vaut donc sans changement pour toute surface triangulée fermée, et pas seulement pour un polyèdre convexe : un tore triangulé, par exemple.

En revanche elle tombe si la surface a un bord. Prenons un simple triangle rouge-bleu-vert posé dans le plan : c'est une face tricolore, et il y en a une, donc un nombre impair. Ici les trois arêtes ne bordent qu'une face chacune, et le premier comptage donne $T = m$ au lieu de $2m$.

Cette technique, appeler « impair » ce que l'on cherche et le coincer entre deux comptages d'une même quantité, porte un nom : le **double comptage**. C'est l'un des trois ou quatre outils les plus rentables de toute la combinatoire olympique.
