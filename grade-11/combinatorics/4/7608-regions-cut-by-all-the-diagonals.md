---
id: "7608"
title: "Les régions découpées par toutes les diagonales"
grade: 11
theme: combinatorics
difficulty: 4
duration_min: 45
tags: [denombrement, coefficients binomiaux, polygone, diagonales, comptage pas a pas]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Montpellier 2013, test de mi-parcours"
  reference: "stage_ete_2013.pdf, chapitre IV « Test de mi-parcours », groupe A, exercice 4"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2013.pdf"
---

## Statement

Soit $n \geqslant 4$ un entier. On trace **toutes** les diagonales d'un polygone convexe à $n$ sommets. On suppose que la figure est en position générale : jamais trois diagonales ne passent par un même point.

Ces diagonales découpent l'intérieur du polygone en plusieurs régions.

Combien y a-t-il de régions ? On cherchera la formule la plus simple possible, en fonction de $n$.

## Hints

1. Comptez d'abord à la main pour $n = 4$ puis $n = 5$. Vous devriez trouver $4$ et $11$.
2. Ne comptez pas les régions de la figure finie. Tracez les diagonales **une par une**, en partant du polygone nu, et regardez de combien le nombre de régions augmente à chaque fois.
3. Une nouvelle diagonale qui ne rencontre aucune diagonale déjà tracée coupe une région en deux : elle fait donc $+1$. Et si elle en croise $k$ ?
4. Il vous faudra deux comptages : le nombre total de diagonales, et le nombre total de points de croisement. Pour ce dernier, regardez ce que donne un choix de quatre sommets du polygone.

## Solution

Appelons $R$ le nombre cherché.

**L'idée : tracer les diagonales une par une.**

Au départ, le polygone sans aucune diagonale forme **une seule** région.

Traçons maintenant les diagonales une par une, dans un ordre quelconque, et regardons ce qui se passe quand on en trace une nouvelle, appelons-la $\delta$. Supposons que $\delta$ croise $k$ diagonales déjà tracées. Ces $k$ points de croisement découpent $\delta$ en $k+1$ morceaux, et chaque morceau traverse une région en la coupant en deux.

> Tracer une diagonale qui croise $k$ diagonales déjà présentes fait augmenter le nombre de régions de $k + 1$.

En additionnant sur toutes les diagonales :

$$R = 1 + (\text{nombre de diagonales}) + (\text{nombre total de croisements}) .$$

En effet, chaque diagonale apporte son « $+1$ », et chaque point de croisement est compté exactement une fois : au moment où l'on trace la seconde des deux diagonales qui s'y croisent.

Il reste donc deux comptages à faire.

**Premier comptage : le nombre de diagonales.**

De chaque sommet partent $n - 3$ diagonales : on peut le relier à tous les autres sommets sauf lui-même et ses deux voisins. Cela fait $n(n-3)$ couples (sommet, diagonale), mais chaque diagonale a été comptée deux fois, une par extrémité. Le nombre de diagonales est donc

$$D = \frac{n(n-3)}{2} .$$

**Deuxième comptage : le nombre de points de croisement.**

Choisissons quatre sommets du polygone, et notons-les $A$, $B$, $C$, $D$ dans l'ordre où on les rencontre en parcourant le polygone. Parmi les trois façons de les apparier, une seule donne deux diagonales qui se croisent : ce sont $[AC]$ et $[BD]$. Les paires $[AB]$ et $[CD]$, ou $[AD]$ et $[BC]$, ne se croisent pas, car le polygone est convexe.

Donc **chaque groupe de quatre sommets donne exactement un point de croisement.**

Réciproquement, chaque point de croisement provient d'exactement un groupe de quatre sommets : les quatre extrémités des deux diagonales qui s'y croisent. Ces extrémités sont bien quatre sommets distincts, car deux diagonales qui partagent une extrémité se coupent en ce sommet, et non à l'intérieur.

C'est ici que sert l'hypothèse « jamais trois diagonales concourantes » : sans elle, plusieurs groupes de quatre sommets pourraient donner le même point, et le compte serait faussé.

Le nombre de points de croisement est donc le nombre de façons de choisir $4$ sommets parmi $n$ :

$$X = \binom{n}{4} .$$

**La formule.**

$$R = 1 + \frac{n(n-3)}{2} + \binom{n}{4} .$$

**Vérifications.**

- $n = 4$ : $R = 1 + \dfrac{4 \times 1}{2} + 1 = 1 + 2 + 1 = 4$. Un quadrilatère convexe avec ses deux diagonales est bien coupé en $4$ morceaux. ✔
- $n = 5$ : $R = 1 + \dfrac{5 \times 2}{2} + 5 = 1 + 5 + 5 = 11$. ✔
- $n = 6$ : $R = 1 + 9 + 15 = 25$.

## Going further

On peut aussi écrire la formule sous forme développée. En posant tout sur le même dénominateur $24$ :

$$R = \frac{n^4 - 6n^3 + 23n^2 - 42n + 24}{24} .$$

C'est exact, mais bien moins parlant que $1 + \dfrac{n(n-3)}{2} + \binom{n}{4}$, où chacun des trois termes a un sens : la région de départ, les diagonales, les croisements.

**Attention à l'hypothèse.** Pour un hexagone **régulier**, les trois grandes diagonales passent toutes par le centre : trois diagonales concourantes ! On y compte alors $24$ régions et non $25$, car deux points de croisement qui auraient dû être distincts se sont confondus en un seul. L'hypothèse « jamais trois diagonales concourantes » n'est pas un détail de rédaction.
