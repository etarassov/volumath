---
id: "11448"
title: "Des bonbons pour les enfants"
grade: 12
theme: combinatorics
difficulty: 5
duration_min: 60
tags: [extremalite, double-comptage, construction, tiroirs, demonstration]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2022-2023 n° 4 (combinatoire)"
  reference: "2023-02_Sujet-envoi-4.pdf, Exercices Seniors, exercice 17 ; corrigé 2023-03_corrige-envoi-4.pdf ; le corrigé écrit 4n − dext(a) + dext(b) au lieu de 4n − (dext(a) + dext(b)), sans effet sur la conclusion ; le graphe du corrigé est remplacé ici par les enfants et les couleurs"
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/02/Sujet-envoi-4.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2023-02_Sujet-envoi-4.pdf"
---

## Statement

Soit $k \geqslant 1$ et $n \geqslant 1$ deux entiers. Thanima avait des bonbons de plusieurs couleurs,
exactement $2n$ bonbons de chaque couleur. Elle a donné à chaque enfant de sa famille deux bonbons de
couleurs différentes. Elle n'a pas forcément distribué tous ses bonbons.

On sait que, parmi $k + 1$ enfants quelconques, il y en a toujours deux qui ont reçu un bonbon de la
même couleur.

Quel est le plus grand nombre possible d'enfants dans la famille ?

## Hints

1. Commence par $k = 1$ : deux enfants quelconques ont toujours une couleur en commun. Compare une
   distribution où tous les enfants ont une même couleur, et une distribution qui n'utilise que trois
   couleurs.
2. Pour $k$ quelconque, pense à des groupes de trois couleurs.
3. Pour la majoration, prends un groupe $C$ d'enfants deux à deux sans couleur commune, aussi grand que
   possible. Pourquoi chaque enfant a-t-il au moins une couleur qui apparaît chez les enfants de $C$ ?
4. Pour un enfant de $C$ qui a les couleurs $a$ et $b$, regarde les enfants qui ont la couleur $a$ ou
   $b$, et une autre couleur qui n'apparaît pas dans $C$. Montre qu'ils sont au plus $2n$.

## Solution

Disons que deux enfants sont **étrangers** s'ils n'ont aucune couleur en commun. L'énoncé dit
qu'on ne peut pas trouver $k + 1$ enfants deux à deux étrangers. Nous allons montrer que le nombre
maximal d'enfants est $\boxed{3kn}$.

**Étape 1 : $3kn$ enfants, c'est possible.** Prenons $3k$ couleurs, rangées en $k$ groupes de trois
couleurs. Dans chaque groupe $\{a, b, c\}$, donnons les couleurs $a$ et $b$ à $n$ enfants, les
couleurs $b$ et $c$ à $n$ autres, et les couleurs $a$ et $c$ à $n$ autres.

- Chaque couleur sert à $2n$ enfants exactement : il y a bien assez de bonbons.
- Parmi $k + 1$ enfants, deux sont dans le même groupe, puisqu'il n'y a que $k$ groupes. Or deux
  paires de couleurs prises parmi trois couleurs ont toujours une couleur commune : ces deux enfants
  ne sont pas étrangers.

Cela fait $3n$ enfants par groupe, donc $3kn$ en tout.

**Étape 2 : un plus grand groupe d'étrangers.** Prenons maintenant une distribution quelconque qui
respecte l'énoncé, et choisissons un groupe $C$ d'enfants deux à deux étrangers, aussi grand que
possible. Notons $c$ son nombre d'enfants : on a $c \leqslant k$.

Appelons **couleurs de $C$** les $2c$ couleurs reçues par les enfants de $C$ (elles sont toutes
différentes, puisque ces enfants sont étrangers). Chacune appartient à un seul enfant de $C$.

Tout enfant a au moins une couleur de $C$ : sinon, il serait étranger à tous les enfants de $C$, et on
pourrait l'ajouter à $C$, qui ne serait pas le plus grand possible.

**Étape 3 : on compte les enfants.** Pour une couleur $u$ de $C$, notons

- $e(u)$ le nombre d'enfants qui ont la couleur $u$ et dont l'autre couleur n'est **pas** une couleur
  de $C$ ;
- $i(u)$ le nombre d'enfants qui ont la couleur $u$ et dont l'autre couleur **est** une couleur de
  $C$.

Ces enfants ont tous reçu un bonbon de couleur $u$, donc

$$e(u) + i(u) \leqslant 2n . \qquad (1)$$

Un enfant qui a exactement une couleur de $C$ est compté une fois dans la somme des $e(u)$. Un enfant
qui a deux couleurs de $C$ est compté deux fois dans la somme des $i(u)$. D'après l'étape 2, il n'y a
pas d'autre enfant. Le nombre total d'enfants est donc

$$N = \sum_{u} e(u) + \frac{1}{2} \sum_{u} i(u),$$

où les sommes portent sur les $2c$ couleurs de $C$.

**Étape 4 : le point clé.** Soit un enfant de $C$, qui a les couleurs $a$ et $b$. Montrons que

$$e(a) + e(b) \leqslant 2n . \qquad (2)$$

Supposons qu'il existe un enfant $X$ qui a les couleurs $a$ et $x$, et un enfant $Y$ qui a les
couleurs $b$ et $y$, où $x$ et $y$ ne sont pas des couleurs de $C$ et sont **différentes**. Retirons
alors de $C$ l'enfant qui a $a$ et $b$, et ajoutons $X$ et $Y$.

- $X$ et $Y$ sont étrangers : $a \neq b$, $a \neq y$ et $x \neq b$ car $x$ et $y$ ne sont pas des
  couleurs de $C$, et $x \neq y$.
- $X$ et $Y$ sont étrangers aux autres enfants de $C$, qui n'utilisent que des couleurs de $C$
  différentes de $a$ et de $b$.

On obtiendrait $c + 1$ enfants deux à deux étrangers, ce qui contredit le choix de $C$. Donc de tels
$X$ et $Y$ n'existent pas. Deux cas se présentent alors.

- *Si $e(a) = 0$ ou $e(b) = 0$*, par exemple $e(b) = 0$, alors $e(a) + e(b) = e(a) \leqslant 2n$
  d'après (1).
- *Sinon*, prenons un enfant $X$ compté dans $e(a)$, d'autre couleur $x$. Tout enfant compté dans
  $e(b)$ a alors pour autre couleur $x$ lui aussi. Et comme il en existe au moins un, le même argument
  montre que tout enfant compté dans $e(a)$ a aussi pour autre couleur $x$. Ainsi, les enfants
  comptés dans $e(a)$ et dans $e(b)$ ont tous reçu un bonbon de couleur $x$. Un même enfant ne peut
  pas être compté dans les deux, puisqu'il aurait alors les trois couleurs $a$, $b$ et $x$. Il n'y a
  que $2n$ bonbons de couleur $x$, donc $e(a) + e(b) \leqslant 2n$.

**Étape 5 : au plus $3n$ par enfant de $C$.** Pour l'enfant de $C$ qui a les couleurs $a$ et $b$,
la part de $N$ qui correspond à $a$ et $b$ vérifie, d'après (1) puis (2),

$$e(a) + e(b) + \frac{i(a) + i(b)}{2} \leqslant e(a) + e(b) + \frac{4n - e(a) - e(b)}{2} = 2n + \frac{e(a) + e(b)}{2} \leqslant 2n + n = 3n .$$

Les $2c$ couleurs de $C$ se regroupent deux par deux, selon l'enfant de $C$ qui les a reçues. En
additionnant ces inégalités pour les $c$ enfants de $C$, on obtient

$$N \leqslant 3n \times c \leqslant 3kn .$$

**Conclusion.** La famille compte au plus $3kn$ enfants, et l'étape 1 montre que $3kn$ est possible.
Le nombre maximal d'enfants est $3kn$.
