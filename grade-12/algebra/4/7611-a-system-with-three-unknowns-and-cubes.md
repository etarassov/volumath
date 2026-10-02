---
id: "7611"
title: "Un système avec des carrés et des cubes"
grade: 12
theme: algebra
difficulty: 4
duration_min: 45
tags: [systeme, fonctions-symetriques, polynome-de-degre-trois, identites-remarquables]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Montpellier 2013, test de mi-parcours"
  reference: "stage_ete_2013.pdf, chapitre IV « Test de mi-parcours », groupe C, exercice 3"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2013.pdf"
---

## Statement

Trouver tous les triplets $(x, y, z)$ de nombres réels tels que

$$x - y + z = 2, \qquad x^2 + y^2 + z^2 = 30, \qquad x^3 - y^3 + z^3 = 116 .$$

## Hints

1. Les signes gênent : dans la première et la troisième équation, $y$ apparaît avec un signe moins ; dans la deuxième, avec un plus. Trouvez un changement de variable qui rende les trois équations symétriques.
2. Posez $t = -y$. Réécrivez les trois équations en $x$, $z$, $t$.
3. Notez $s = x + z + t$, $p = xz + zt + tx$ et $q = xzt$. Exprimez $x^2 + z^2 + t^2$ en fonction de $s$ et $p$ en développant $s^2$.
4. Pour les cubes, utilisez l'identité $$u^3 + v^3 + w^3 - 3uvw = (u + v + w)\left(u^2 + v^2 + w^2 - uv - vw - wu\right).$$
5. Une fois $s$, $p$, $q$ connus, $x$, $z$, $t$ sont les racines du polynôme $X^3 - sX^2 + pX - q$. Cherchez une racine évidente.

## Solution

**Étape 1 : rendre le système symétrique.**

Posons $t = -y$. Alors $y = -t$, et comme $y^2 = t^2$ et $y^3 = -t^3$, le système devient

$$x + z + t = 2, \qquad x^2 + z^2 + t^2 = 30, \qquad x^3 + z^3 + t^3 = 116 .$$

Les trois équations sont maintenant symétriques en $x$, $z$, $t$.

**Étape 2 : passer aux fonctions symétriques.**

Posons

$$s = x + z + t, \qquad p = xz + zt + tx, \qquad q = xzt .$$

La première équation donne directement $s = 2$.

En développant le carré de la somme,

$$s^2 = x^2 + z^2 + t^2 + 2p ,$$

donc $4 = 30 + 2p$, d'où

$$p = -13 .$$

Pour les cubes, on utilise l'identité classique

$$x^3 + z^3 + t^3 - 3xzt = (x + z + t)\left(x^2 + z^2 + t^2 - xz - zt - tx\right) .$$

Le membre de droite vaut $s \times (30 - p) = 2 \times (30 + 13) = 2 \times 43 = 86$. Donc

$$116 - 3q = 86 , \qquad \text{d'où} \qquad q = 10 .$$

**Étape 3 : le polynôme dont $x$, $z$, $t$ sont les racines.**

Trois nombres de somme $s$, de somme des produits deux à deux $p$ et de produit $q$ sont exactement les trois racines du polynôme

$$X^3 - s X^2 + p X - q = X^3 - 2X^2 - 13X - 10 .$$

(En effet, $(X-x)(X-z)(X-t) = X^3 - sX^2 + pX - q$ : il suffit de développer.)

Cherchons une racine évidente. Pour $X = -1$ :

$$(-1)^3 - 2(-1)^2 - 13(-1) - 10 = -1 - 2 + 13 - 10 = 0 .$$

Donc $-1$ est racine, et on peut factoriser :

$$X^3 - 2X^2 - 13X - 10 = (X + 1)\left(X^2 - 3X - 10\right) = (X+1)(X-5)(X+2) .$$

Les racines sont donc $-1$, $-2$ et $5$ :

$$\{x, z, t\} = \{-1, -2, 5\} .$$

**Étape 4 : revenir à $(x, y, z)$.**

Le nombre $t$ peut être l'un quelconque des trois, et alors $x$ et $z$ sont les deux autres, dans l'un ou l'autre ordre. Comme $y = -t$, cela donne $3 \times 2 = 6$ triplets :

| $t$ | $y = -t$ | $(x\,;z)$ | triplet $(x, y, z)$ |
|---|---|---|---|
| $-1$ | $1$ | $(-2\,;5)$ ou $(5\,;-2)$ | $(-2, 1, 5)$ et $(5, 1, -2)$ |
| $-2$ | $2$ | $(-1\,;5)$ ou $(5\,;-1)$ | $(-1, 2, 5)$ et $(5, 2, -1)$ |
| $5$ | $-5$ | $(-1\,;-2)$ ou $(-2\,;-1)$ | $(-1, -5, -2)$ et $(-2, -5, -1)$ |

**Vérification** sur le premier : $-2 - 1 + 5 = 2$ ✔, $4 + 1 + 25 = 30$ ✔, $-8 - 1 + 125 = 116$ ✔.

**Conclusion.** Les solutions sont les six triplets

$$(-2, 1, 5), \quad (5, 1, -2), \quad (-1, 2, 5), \quad (5, 2, -1), \quad (-1, -5, -2), \quad (-2, -5, -1) .$$

## Going further

La méthode est générale et vaut la peine d'être retenue : **quand un système est symétrique en plusieurs inconnues, on ne cherche pas les inconnues, on cherche leurs fonctions symétriques** — la somme, la somme des produits deux à deux, le produit. Une fois celles-ci connues, les inconnues sont les racines d'un polynôme, et il ne reste qu'à le factoriser.

Le petit tour de passe-passe du début, $t = -y$, est ce qui rend la méthode applicable : le système de départ n'était pas symétrique, mais il l'était à un signe près.

Pour s'entraîner : résoudre $x + y + z = 6$, $x^2 + y^2 + z^2 = 14$, $x^3 + y^3 + z^3 = 36$.
