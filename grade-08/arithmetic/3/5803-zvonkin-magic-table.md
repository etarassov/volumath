---
id: "5803"
title: "La table magique de Zvonkine"
grade: 8
theme: arithmetic
difficulty: 3
duration_min: 25
tags: [tableau, somme, periodicite, tour de magie]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "MathCircles.org (National Association of Math Circles), Mathematical Magic for Muggles (Paul Zeitz)"
  reference: "ZeitzMathMuggles.pdf, problème 3 « Zvonkin's Magic Table », d'après A. Zvonkine, Des maths avec des enfants de 3 à 7 ans (solution p. 6)"
  url: "https://mathcircles.org/activity/mathematical-magic-for-muggles/"
  original_language: "en"
  local_copy: "sources/originals/namc/ZeitzMathMuggles.pdf"
---

## Statement

Voici la table que le magicien pose devant toi. Les lignes sont numérotées de $1$ à $10$ de haut
en bas, les colonnes de $1$ à $10$ de gauche à droite.

|   | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 | 10 |
|---|---|---|---|---|---|---|---|---|---|----|
| **1**  | 5 | 6 | 1 | 6 | 2 | 5 | 6 | 1 | 6 | 2 |
| **2**  | 1 | 0 | 5 | 5 | 9 | 1 | 0 | 5 | 5 | 9 |
| **3**  | 7 | 1 | 7 | 2 | 3 | 7 | 1 | 7 | 2 | 3 |
| **4**  | 2 | 7 | 6 | 1 | 4 | 2 | 7 | 6 | 1 | 4 |
| **5**  | 5 | 6 | 1 | 6 | 2 | 5 | 6 | 1 | 6 | 2 |
| **6**  | 5 | 6 | 1 | 6 | 2 | 5 | 6 | 1 | 6 | 2 |
| **7**  | 1 | 0 | 5 | 5 | 9 | 1 | 0 | 5 | 5 | 9 |
| **8**  | 7 | 1 | 7 | 2 | 3 | 7 | 1 | 7 | 2 | 3 |
| **9**  | 2 | 7 | 6 | 1 | 4 | 2 | 7 | 6 | 1 | 4 |
| **10** | 5 | 6 | 1 | 6 | 2 | 5 | 6 | 1 | 6 | 2 |

Le jeu est le suivant. Tu choisis **quatre cases voisines alignées**, soit quatre cases qui se
suivent sur une même ligne, soit quatre cases qui se suivent sur une même colonne, et tu les
caches avec une bande de papier. Le magicien, sans jamais avoir appris la table par cœur,
annonce immédiatement la somme des quatre nombres cachés.

Par exemple, si tu caches les cases $4$, $5$, $6$, $7$ de la ligne $2$, il annonce $15$. Si tu
caches les cases des lignes $3$, $4$, $5$, $6$ dans la colonne $6$, il annonce $19$. Vérifie que
c'est exact.

Trouve sa méthode, et explique pourquoi elle fonctionne à tous les coups.

## Hints

1. Regarde d'abord la table elle-même, avant de penser aux sommes. Que remarques-tu quand tu
   parcours une ligne de gauche à droite ? Et une colonne de haut en bas ?
2. Additionne cinq nombres qui se suivent sur une même ligne. Recommence ailleurs. Puis fais la
   même chose sur une colonne.
3. Le magicien regarde toujours la même chose : une case bien précise, tout près de ta bande de
   papier. Laquelle ?
4. Quatre cases cachées, cela fait cinq cases si on ajoute la voisine. Que vaut cette somme de
   cinq ?

## Solution

**Ce que cache la table.**

Chaque ligne se répète tous les $5$ pas : la ligne $2$ est $1, 0, 5, 5, 9$, puis de nouveau
$1, 0, 5, 5, 9$. Chaque colonne aussi : la colonne $1$ est $5, 1, 7, 2, 5$, puis de nouveau
$5, 1, 7, 2, 5$.

Et surtout, **cinq nombres qui se suivent, sur une ligne comme sur une colonne, ont toujours pour
somme $20$**. Par exemple sur la ligne $2$ :
$$1 + 0 + 5 + 5 + 9 = 20,$$
et sur la colonne $1$ :
$$5 + 1 + 7 + 2 + 5 = 20.$$

Cela reste vrai où que l'on démarre, parce que cinq cases qui se suivent contiennent toujours un
motif complet, dans un ordre ou dans un autre. Par exemple sur la ligne $2$, en partant de la
colonne $3$ : $5 + 5 + 9 + 1 + 0 = 20$. Ce sont les mêmes cinq nombres, décalés.

**La méthode du magicien.**

Tu caches quatre cases alignées. Le magicien regarde la case voisine, juste avant ou juste après
ta bande de papier, sur la même ligne ou la même colonne. Il appelle $v$ le nombre qu'il y lit,
et il annonce
$$20 - v.$$

**Pourquoi cela marche.** Les quatre cases cachées, plus cette case voisine, forment cinq cases
qui se suivent. Leur somme vaut donc $20$. Si $S$ est la somme cachée, alors
$$S + v = 20, \qquad \text{donc} \qquad S = 20 - v.$$

**Les deux exemples.**

- Ligne $2$, colonnes $4$ à $7$ : la voisine de gauche est la case de la colonne $3$, qui vaut
  $5$. Le magicien annonce $20 - 5 = 15$. Et en effet $5 + 9 + 1 + 0 = 15$.
- Colonne $6$, lignes $3$ à $6$ : la voisine du haut est la case de la ligne $2$, qui vaut $1$.
  Le magicien annonce $20 - 1 = 19$. Et en effet $7 + 2 + 5 + 5 = 19$.

**Conclusion.** Il n'y a ni mémoire prodigieuse ni télépathie : la table est construite pour que
cinq cases consécutives fassent toujours $20$, et le magicien lit simplement la case voisine de
la bande de papier.

## Going further

Fabrique ta propre table. Choisis un carré de $5$ par $5$ dont **chaque ligne et chaque colonne**
a pour somme $20$, puis recopie ce carré côte à côte et les uns sous les autres autant de fois
que tu veux. Ta table est prête, et le tour fonctionne dessus.

Si tu préfères un autre total, disons $30$, construis le carré de $5$ par $5$ avec des lignes et
des colonnes de somme $30$ : le magicien annoncera alors $30 - v$.
