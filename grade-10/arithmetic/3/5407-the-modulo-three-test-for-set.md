---
id: "5407"
title: "Le test des multiples de 3 au jeu de SET"
grade: 10
theme: arithmetic
difficulty: 3
duration_min: 30
tags: [set, multiples, divisibilite, codage, disjonction-de-cas]
adapted_from: null
see_also: ["5403"]
same_as: []
created: 2026-09-20
source:
  name: "MathCircles.org (National Association of Math Circles), The Game of SET, Brian Conrey et Brianna Donaldson"
  reference: "Set-Activity-Guide.pdf, section 2 « Coordinatization », questions 8 et 9"
  url: "https://mathcircles.org/activity/set/"
  original_language: "en"
  local_copy: "sources/originals/namc/Set-Activity-Guide.pdf"
---

## Statement

Le jeu de **SET** contient $81$ cartes. Chaque carte porte un dessin décrit par quatre caractéristiques, qui prennent chacune trois valeurs : le **nombre** de figures ($1$, $2$ ou $3$), la **forme** (losange, ovale, vague), la **couleur** (rouge, verte, violette) et le **remplissage** (vide, hachuré, plein). Le paquet contient une carte par combinaison.

Trois cartes forment un **SET** lorsque, pour chacune des quatre caractéristiques, ou bien les trois cartes ont la même valeur, ou bien elles ont trois valeurs toutes différentes.

Vérifier qu'un triplet est un SET demande quatre contrôles, chacun avec deux cas à distinguer. On va remplacer tout cela par un seul calcul.

**Codage.** Pour chaque caractéristique, numérotons les trois valeurs $0$, $1$ et $2$, dans un ordre quelconque mais fixé une fois pour toutes :

| | valeur 0 | valeur 1 | valeur 2 |
|---|---|---|---|
| nombre | $1$ figure | $2$ figures | $3$ figures |
| forme | losange | ovale | vague |
| couleur | rouge | verte | violette |
| remplissage | vide | hachuré | plein |

Une carte devient alors une liste de quatre chiffres. Par exemple « $2$ vagues rouges pleines » devient $(1, 2, 0, 2)$.

1. Coder les trois cartes « $1$ losange vert vide », « $2$ vagues rouges hachurées », « $3$ ovales violets pleins », qui forment un SET, et calculer les quatre sommes obtenues en additionnant les chiffres de même position. Que remarque-t-on ?
2. Démontrer le critère : **trois cartes forment un SET si et seulement si, pour chacune des quatre positions, la somme des trois chiffres est un multiple de $3$.**
3. En déduire une méthode de calcul qui donne, à partir de deux cartes, la troisième carte qui complète le SET.
4. Appliquer cette méthode aux cartes $(1, 0, 2, 2)$ et $(1, 1, 0, 2)$.

## Hints

1. Question 2 : le critère porte sur chaque position séparément. Il suffit donc de tout démontrer pour **une** position, c'est-à-dire pour trois chiffres pris dans $\{0, 1, 2\}$.
2. Pour une position, il n'y a que trois situations : les trois chiffres sont égaux, ils sont tous différents, ou exactement deux sont égaux. Calculez la somme dans chaque situation.
3. Le troisième cas demande un peu de patience : il y a six sommes à calculer. Aucune ne doit être un multiple de $3$.
4. Question 3 : si $x$ et $y$ sont connus, quelles sont les valeurs de $z$ dans $\{0,1,2\}$ telles que $x + y + z$ soit un multiple de $3$ ?

## Solution

### 1. L'exemple

Les trois cartes se codent ainsi :

- « $1$ losange vert vide » $\rightarrow (0, 0, 1, 0)$ ;
- « $2$ vagues rouges hachurées » $\rightarrow (1, 2, 0, 1)$ ;
- « $3$ ovales violets pleins » $\rightarrow (2, 1, 2, 2)$.

Additionnons position par position :

$$0 + 1 + 2 = 3, \qquad 0 + 2 + 1 = 3, \qquad 1 + 0 + 2 = 3, \qquad 0 + 1 + 2 = 3 .$$

Les quatre sommes sont des multiples de $3$.

### 2. Le critère

Les quatre positions sont indépendantes les unes des autres : le triplet est un SET si et seulement si les quatre positions conviennent, et la somme d'une position ne dépend que de cette position. Il suffit donc de démontrer le critère pour **une** position, c'est-à-dire pour trois chiffres $x$, $y$, $z$ de $\{0, 1, 2\}$.

**Premier cas : les trois chiffres sont égaux.** La somme vaut $0+0+0 = 0$, ou $1+1+1 = 3$, ou $2+2+2 = 6$. Ce sont trois multiples de $3$.

**Deuxième cas : les trois chiffres sont tous différents.** Ce sont alors $0$, $1$ et $2$ dans un certain ordre, et la somme vaut $0 + 1 + 2 = 3$, un multiple de $3$.

**Troisième cas : exactement deux chiffres sont égaux.** Notons $x$ la valeur répétée et $y$ l'autre, avec $y \ne x$. La somme vaut $2x + y$, et les six possibilités sont :

$$2 \times 0 + 1 = 2, \quad 2 \times 0 + 2 = 4, \quad 2 \times 1 + 0 = 2,$$
$$2 \times 1 + 2 = 4, \quad 2 \times 2 + 0 = 4, \quad 2 \times 2 + 1 = 5 .$$

Aucun de ces six nombres n'est un multiple de $3$.

**Bilan pour une position.** La somme est un multiple de $3$ exactement dans les deux premiers cas, c'est-à-dire exactement quand les trois chiffres sont tous égaux ou tous différents. C'est précisément la condition d'un SET pour cette caractéristique.

En appliquant cela aux quatre positions, on obtient le critère annoncé.

### 3. Trouver la troisième carte par le calcul

Soient deux cartes données. Pour chaque position, notons $x$ et $y$ leurs chiffres, et cherchons le chiffre $z$ de la troisième carte. D'après le critère, $x + y + z$ doit être un multiple de $3$.

Or les trois nombres $x+y+0$, $x+y+1$, $x+y+2$ sont trois entiers consécutifs : parmi trois entiers consécutifs, il y a exactement un multiple de $3$. Il existe donc **une et une seule** valeur de $z$ dans $\{0,1,2\}$ qui convient.

En pratique : on additionne les deux chiffres et on complète jusqu'au prochain multiple de $3$.

| $x + y$ | $0$ | $1$ | $2$ | $3$ | $4$ |
|---|---|---|---|---|---|
| $z$ | $0$ | $2$ | $1$ | $0$ | $2$ |

Au passage, on a redémontré que deux cartes quelconques se complètent en un SET d'une seule façon.

### 4. L'application

Pour $(1, 0, 2, 2)$ et $(1, 1, 0, 2)$, additionnons position par position : $2$, $1$, $2$, $4$. Il faut compléter chaque somme jusqu'à un multiple de $3$ :

- $2 + z = 3$ donne $z = 1$ ;
- $1 + z = 3$ donne $z = 2$ ;
- $2 + z = 3$ donne $z = 1$ ;
- $4 + z = 6$ donne $z = 2$.

La troisième carte est $(1, 2, 1, 2)$, c'est-à-dire **« $2$ vagues vertes pleines »**.

Vérifions à la main : le nombre est $2$, $2$, $2$ (identique) ; la forme est losange, ovale, vague (toutes différentes) ; la couleur est violette, rouge, verte (toutes différentes) ; le remplissage est plein, plein, plein (identique). C'est bien un SET.

**Conclusion.** Le critère remplace quatre contrôles à deux cas par quatre additions. C'est aussi lui qui explique pourquoi le jeu fonctionne : tout se passe dans une arithmétique où l'on ne retient que le reste dans la division par $3$.

## Going further

1. Que devient le critère si l'on numérote les valeurs d'une caractéristique dans un autre ordre ? Le résultat en dépend-il ?
2. Inventez un jeu du même genre avec **cinq** caractéristiques. Combien de cartes ? Le critère fonctionne-t-il encore ?
3. Et avec quatre valeurs par caractéristique au lieu de trois ? Cherchez ce qui se casse.
