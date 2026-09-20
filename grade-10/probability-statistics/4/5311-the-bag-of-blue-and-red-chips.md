---
id: "5311"
title: "Le sac de jetons bleus et rouges"
grade: 10
theme: probability-statistics
difficulty: 4
duration_min: 40
tags: [probabilite, jeu equitable, tirage sans remise, nombres triangulaires, equation]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "MathCircles.org (National Association of Math Circles), Match or No Match"
  reference: "Match-No-Match-Notes.pdf, diapositives 2 à 11 ; la conjecture « nombres triangulaires consécutifs » est énoncée diapositive 11 sans démonstration"
  url: "https://mathcircles.org/activity/match-or-no-match/"
  original_language: "en"
  local_copy: "sources/originals/namc/Match-No-Match-Notes.pdf"
---

## Statement

Un sac contient des jetons bleus et des jetons rouges, identiques au toucher.

Alice tire un jeton du sac, puis Bob en tire un autre. Aucun des deux jetons n'est remis dans le sac.

- Si les deux jetons sont **de la même couleur**, Alice gagne.
- S'ils sont **de couleurs différentes**, Bob gagne.

1. Le sac contient $3$ jetons bleus et $3$ jetons rouges. Le jeu est-il équitable, c'est-à-dire les deux joueurs ont-ils la même probabilité de gagner ?
2. Le sac contient maintenant $b$ jetons bleus et $r$ jetons rouges. Montrer que le jeu est équitable si et seulement si
$$(b - r)^2 = b + r .$$
3. Trouver tous les sacs équitables contenant au plus $40$ jetons.

## Hints

1. Pour la question 1, dessiner l'arbre des deux tirages. Attention : après le premier tirage, il ne reste que $5$ jetons dans le sac.
2. Avec $3$ bleus et $3$ rouges, la probabilité que les deux jetons soient bleus vaut $\dfrac{3}{6} \times \dfrac{2}{5}$. Faire de même pour « deux rouges », puis additionner.
3. Pour la question 2, refaire le même calcul avec $b$ et $r$, et écrire que la probabilité de gagner d'Alice vaut $\dfrac{1}{2}$. Tout multiplier par $(b+r)(b+r-1)$ pour se débarrasser des fractions.
4. Pour la question 3, poser $k = r - b$ (en supposant $r \geqslant b$) et remplacer dans l'égalité : que vaut $b$ en fonction de $k$ ?

## Solution

### Question 1 : le sac à 3 bleus et 3 rouges

Il y a $6$ jetons. Le premier tirage se fait parmi $6$ jetons, le second parmi les $5$ restants.

$$P(\text{deux bleus}) = \frac{3}{6} \times \frac{2}{5} = \frac{6}{30}, \qquad P(\text{deux rouges}) = \frac{3}{6} \times \frac{2}{5} = \frac{6}{30}.$$

Donc
$$P(\text{Alice gagne}) = \frac{6}{30} + \frac{6}{30} = \frac{12}{30} = \text{0,4} \qquad \text{et} \qquad P(\text{Bob gagne}) = \text{0,6} .$$

**Le jeu n'est pas équitable : il avantage Bob.** C'est contraire à l'intuition, car le sac a l'air parfaitement symétrique. L'explication tient au fait que le premier jeton tiré est retiré du sac : quelle que soit sa couleur, il reste ensuite $2$ jetons de cette couleur et $3$ de l'autre, donc « ne pas assortir » est plus probable.

### Question 2 : la condition sur $b$ et $r$

Le sac contient $n = b + r$ jetons, avec $n \geqslant 2$. En raisonnant comme ci-dessus :

$$P(\text{deux bleus}) = \frac{b}{b+r} \times \frac{b-1}{b+r-1}, \qquad P(\text{deux rouges}) = \frac{r}{b+r} \times \frac{r-1}{b+r-1} .$$

Le jeu est équitable exactement quand la somme de ces deux probabilités vaut $\dfrac{1}{2}$ :

$$\frac{b(b-1) + r(r-1)}{(b+r)(b+r-1)} = \frac{1}{2} ,$$

c'est-à-dire, en multipliant les deux membres par $2(b+r)(b+r-1)$ :

$$2b(b-1) + 2r(r-1) = (b+r)(b+r-1) .$$

Développons chaque membre :

$$2b^2 - 2b + 2r^2 - 2r = b^2 + 2br + r^2 - b - r .$$

Tout passer à gauche :

$$b^2 + r^2 - 2br - b - r = 0 ,$$

et comme $b^2 - 2br + r^2 = (b-r)^2$, cela s'écrit

$$\boxed{(b - r)^2 = b + r .}$$

**Vérification sur la question 1 :** avec $b = r = 3$, le membre de gauche vaut $0$ et celui de droite $6$. Ils diffèrent, donc le jeu n'est pas équitable, ce qui confirme le calcul précédent. Au passage, on voit que **deux couleurs en nombres égaux ne donnent jamais un jeu équitable**, sauf le cas vide $b = r = 0$.

### Question 3 : tous les sacs équitables d'au plus 40 jetons

Supposons $r \geqslant b$ (sinon on échange les deux couleurs) et posons
$$k = r - b \geqslant 0 .$$

L'égalité devient $k^2 = b + r$. Or $r = b + k$, donc $b + r = 2b + k$, d'où

$$k^2 = 2b + k, \qquad \text{c'est-à-dire} \qquad b = \frac{k^2 - k}{2} = \frac{k(k-1)}{2},$$

et alors
$$r = b + k = \frac{k(k-1)}{2} + k = \frac{k(k+1)}{2} .$$

Les deux nombres $b$ et $r$ sont donc **deux nombres triangulaires consécutifs**, et le nombre total de jetons vaut
$$b + r = k^2 ,$$
un carré parfait.

Il ne reste qu'à faire défiler $k$ :

| $k$ | $b$ | $r$ | total |
|---|---|---|---|
| $2$ | $1$ | $3$ | $4$ |
| $3$ | $3$ | $6$ | $9$ |
| $4$ | $6$ | $10$ | $16$ |
| $5$ | $10$ | $15$ | $25$ |
| $6$ | $15$ | $21$ | $36$ |
| $7$ | $21$ | $28$ | $49$ |

Les valeurs $k = 0$ et $k = 1$ donnent un sac vide ou un sac d'un seul jeton, où l'on ne peut pas tirer deux jetons.

**Les sacs équitables d'au plus $40$ jetons sont donc, à l'échange des couleurs près :**
$$(1 \text{ bleu}, 3 \text{ rouges}), \quad (3, 6), \quad (6, 10), \quad (10, 15), \quad (15, 21).$$

**Vérification sur le plus petit.** Avec $1$ bleu et $3$ rouges :
$$P(\text{deux rouges}) = \frac{3}{4} \times \frac{2}{3} = \frac{1}{2}, \qquad P(\text{deux bleus}) = 0 .$$
Alice gagne bien une fois sur deux.

## Going further

1. On change la règle : le premier jeton est **remis dans le sac** avant le second tirage. Pour quels sacs le jeu est-il alors équitable ? La réponse est très différente.
2. On tire maintenant **trois** jetons, et Alice gagne si les trois sont de la même couleur. Existe-t-il encore des sacs équitables ?
3. Avec **trois** couleurs de jetons, Alice gagnant si les deux jetons tirés sont de la même couleur : trouver des sacs équitables.
