---
id: "41001"
title: "Fonctions de type C : la courbe sous ses cordes"
grade: 10
theme: functions-analysis
difficulty: 3
duration_min: 45
tags: [convexite, fonction-affine, equation-de-droite, valeur-absolue, partie-entiere, contre-exemple]
adapted_from: null
see_also: ["41002"]
same_as: []
created: 2026-11-27
source:
  name: "Concours général des lycées 2017, mathématiques, série ES"
  reference: "cg-2017-es-sujet.pdf, problème I « Fonctions de type C », questions 1 à 4"
  url: "https://www.freemaths.fr/annales-composition-mathematiques-concours-general/concours-general-mathematiques-sujet-serie-es-2017.pdf"
  original_language: "fr"
  local_copy: "sources/originals/concours-general/cg-2017-es-sujet.pdf"
---

## Statement

1. Soit $a$ et $b$ deux réels distincts, et soit $h$ la fonction définie sur $[0, 1]$ par
   $$h(t) = ta + (1 - t)b .$$
   On suppose d'abord que $a < b$.

   a) En étudiant les variations de $h$ sur $[0, 1]$, montrer que pour tout $t \in [0, 1]$, on a
      $h(t) \in [a, b]$.

   b) Montrer que pour tout réel $x$ de $[a, b]$, il existe un unique $t$ de $[0, 1]$ tel que
      $h(t) = x$. Exprimer ce $t$ en fonction de $x$, $a$ et $b$.

   c) Que deviennent les résultats a) et b) quand $b < a$ ?

2. Soit $f$ une fonction définie sur un intervalle $I$, et soit $a$ et $b$ deux réels distincts de
   $I$. On note $A$ le point $(a, f(a))$, $B$ le point $(b, f(b))$ et $\Delta$ la droite $(AB)$. Le
   segment $[AB]$ s'appelle la *corde* définie par $A$ et $B$.

   a) Donner une équation de la droite $\Delta$.

   b) Pour tout réel $t$, on note $P(t)$ le point de $\Delta$ d'abscisse $ta + (1 - t)b$. Montrer que
      l'ordonnée de $P(t)$ est égale à $t f(a) + (1 - t) f(b)$. Quel ensemble décrit le point $P(t)$
      quand $t$ parcourt $[0, 1]$ ?

**Définition.** Une fonction $f$ définie sur un intervalle $I$ est dite **de type C** sur $I$ si,
pour tous réels $a$ et $b$ de $I$ et pour tout $t \in [0, 1]$,
$$f(ta + (1 - t)b) \leq t f(a) + (1 - t) f(b) .$$

3. À l'aide des questions précédentes, justifier que la courbe d'une fonction de type C est en
   dessous de chacune de ses cordes.

4. a) La fonction $x \mapsto |x|$ est-elle de type C sur $\mathbb{R}$ ?

   b) La fonction $x \mapsto x^2$ est-elle de type C sur $\mathbb{R}$ ?

   c) Pour tout réel $x$, la *partie entière* de $x$, notée $\lfloor x \rfloor$, est le plus grand
      entier inférieur ou égal à $x$. Par exemple $\lfloor 4 \rfloor = 4$,
      $\lfloor \pi \rfloor = 3$, $\lfloor \text{1,35} \rfloor = 1$ et
      $\lfloor -\sqrt{2} \rfloor = -2$.

      - Tracer la courbe de la fonction $x \mapsto \lfloor x \rfloor$ sur $[-2, 2]$.
      - La fonction $x \mapsto \lfloor x \rfloor$ est-elle de type C sur $[-2, 2]$ ? Et sur
        $[0, 1]$ ?

## Hints

1. **Question 1.** Écrire $h(t) = b + t(a - b)$ : c'est une fonction affine de $t$. Quel est le
   signe de son coefficient directeur ?
2. **Question 2.** Pour $x = ta + (1 - t)b$, calculer $x - a$ en fonction de $t$, $a$ et $b$, puis
   remplacer dans l'équation de $\Delta$.
3. **Question 3.** Prendre un point de la courbe dont l'abscisse $x$ est entre $a$ et $b$. La
   question 1 permet d'écrire $x = ta + (1 - t)b$ avec $t \in [0, 1]$. Quel point de la corde a la
   même abscisse ?
4. **Question 4 a).** Partir de $-|a| \leq a \leq |a|$ et de l'encadrement analogue pour $b$,
   multiplier par les nombres positifs $t$ et $1 - t$, puis ajouter.
5. **Question 4 b).** Calculer la différence $t a^2 + (1 - t) b^2 - (ta + (1 - t)b)^2$.
   Essayer d'abord avec $a = 0$ et $b = 1$ pour deviner sa forme factorisée.
6. **Question 4 c).** Sur le dessin, chercher une corde qui passe *sous* un point de la courbe.
   Regarder ce qui se passe autour de $x = 1$.
7. **Question 4 c).** Sur $[0, 1]$, la fonction vaut $0$ partout sauf en $1$. Dans quel cas la
   condition pourrait-elle échouer ?

## Solution

**1. a)** On a $h(t) = b + t(a - b)$, donc $h$ est une fonction affine de $t$, de coefficient
directeur $a - b < 0$. Elle est donc décroissante sur $[0, 1]$, avec $h(0) = b$ et $h(1) = a$. Pour
$t \in [0, 1]$, on a donc $h(1) \leq h(t) \leq h(0)$, c'est-à-dire $h(t) \in [a, b]$.

**b)** Pour $x$ réel,
$$h(t) = x \iff b + t(a - b) = x \iff t = \frac{x - b}{a - b} = \frac{b - x}{b - a} ,$$
car $a - b \neq 0$. L'équation a donc une seule solution réelle. Si $x \in [a, b]$, on a
$0 \leq b - x \leq b - a$ et $b - a > 0$, donc cette solution est bien dans $[0, 1]$.

**Conclusion :** pour tout $x \in [a, b]$, l'unique $t \in [0, 1]$ tel que $h(t) = x$ est
$t = \frac{b - x}{b - a}$.

**c)** Si $b < a$, le coefficient directeur $a - b$ est positif, donc $h$ est croissante, de
$h(0) = b$ à $h(1) = a$. Pour $t \in [0, 1]$, on a $h(t) \in [b, a]$, et pour tout $x \in [b, a]$
il existe un unique $t \in [0, 1]$ tel que $h(t) = x$, donné par la même formule
$t = \frac{b - x}{b - a} = \frac{x - b}{a - b}$.

Dans les deux cas : quand $t$ parcourt $[0, 1]$, le nombre $ta + (1 - t)b$ parcourt exactement
l'intervalle d'extrémités $a$ et $b$, et chaque nombre de cet intervalle est atteint une seule fois.

**2. a)** Comme $a \neq b$, la droite $\Delta$ n'est pas verticale. Son coefficient directeur est
$m = \frac{f(b) - f(a)}{b - a}$ et elle passe par $A$, donc une équation de $\Delta$ est
$$y = f(a) + \frac{f(b) - f(a)}{b - a}\,(x - a) .$$

**b)** Pour $x = ta + (1 - t)b$, on a $x - a = (1 - t)b - (1 - t)a = (1 - t)(b - a)$. L'ordonnée
de $P(t)$ est donc
$$f(a) + \frac{f(b) - f(a)}{b - a} \times (1 - t)(b - a) = f(a) + (1 - t)(f(b) - f(a))
= t f(a) + (1 - t) f(b) .$$

D'après la question 1, quand $t$ parcourt $[0, 1]$, l'abscisse de $P(t)$ parcourt tout l'intervalle
d'extrémités $a$ et $b$. Le point $P(t)$ est sur $\Delta$, donc il parcourt la partie de $\Delta$
comprise entre les abscisses $a$ et $b$ : **c'est la corde $[AB]$**. On a d'ailleurs $P(1) = A$
et $P(0) = B$.

**3.** Soit $f$ de type C sur $I$, et $A$, $B$ deux points de sa courbe d'abscisses $a \neq b$.
Soit $x$ un réel compris entre $a$ et $b$. D'après la question 1, il existe $t \in [0, 1]$ tel que
$x = ta + (1 - t)b$. Le point de la corde $[AB]$ d'abscisse $x$ est $P(t)$, d'ordonnée
$t f(a) + (1 - t) f(b)$ d'après la question 2. Le point de la courbe d'abscisse $x$ a pour ordonnée
$$f(x) = f(ta + (1 - t)b) \leq t f(a) + (1 - t) f(b) .$$
Ainsi, au-dessus de chaque abscisse $x$ comprise entre $a$ et $b$, le point de la courbe est sous
le point de la corde (ou confondu avec lui) : **la courbe est en dessous de la corde $[AB]$**.

**4. a)** Oui. Soit $a$, $b$ réels et $t \in [0, 1]$. On a $-|a| \leq a \leq |a|$ et
$-|b| \leq b \leq |b|$. En multipliant par $t \geq 0$ et par $1 - t \geq 0$, puis en ajoutant :
$$-(t|a| + (1 - t)|b|) \leq ta + (1 - t)b \leq t|a| + (1 - t)|b| .$$
Le nombre $ta + (1 - t)b$ et son opposé sont donc tous deux inférieurs ou égaux à
$t|a| + (1 - t)|b|$, ce qui donne
$$|ta + (1 - t)b| \leq t|a| + (1 - t)|b| .$$
**La fonction valeur absolue est de type C sur $\mathbb{R}$.**

**b)** Oui. Calculons la différence
$$D = t a^2 + (1 - t) b^2 - (ta + (1 - t)b)^2 .$$
En développant le carré :
$$D = t a^2 + (1 - t) b^2 - t^2 a^2 - 2t(1 - t)ab - (1 - t)^2 b^2 .$$
Or $t a^2 - t^2 a^2 = t(1 - t)a^2$ et $(1 - t)b^2 - (1 - t)^2 b^2 = (1 - t)(1 - (1 - t))b^2
= t(1 - t) b^2$. Donc
$$D = t(1 - t)(a^2 - 2ab + b^2) = t(1 - t)(a - b)^2 .$$
Pour $t \in [0, 1]$, les trois facteurs sont positifs ou nuls, donc $D \geq 0$.
**La fonction carré est de type C sur $\mathbb{R}$.**

**c)** Voici la courbe de la fonction partie entière sur $[-2, 2]$. Elle est faite de marches :
$\lfloor x \rfloor = -2$ sur $[-2, -1[$, $-1$ sur $[-1, 0[$, $0$ sur $[0, 1[$, $1$ sur $[1, 2[$, et
$\lfloor 2 \rfloor = 2$. Le point plein en début de marche appartient à la courbe, le point creux en
fin de marche n'en fait pas partie.

![Courbe de la partie entière sur l'intervalle [-2, 2], formée de quatre marches et d'un point isolé en x = 2](41001-figure-1.svg)

*Sur $[-2, 2]$ : non.* Prenons $a = \frac{1}{2}$, $b = \frac{3}{2}$ et $t = \frac{1}{2}$. Alors
$ta + (1 - t)b = 1$ et
$$\lfloor 1 \rfloor = 1 \qquad \text{alors que} \qquad
\frac{1}{2}\lfloor \frac{1}{2} \rfloor + \frac{1}{2}\lfloor \frac{3}{2} \rfloor
= \frac{1}{2} \times 0 + \frac{1}{2} \times 1 = \frac{1}{2} .$$
Comme $1 > \frac{1}{2}$, la condition est fausse pour ce choix : la corde qui joint les points
$\left(\frac{1}{2}, 0\right)$ et $\left(\frac{3}{2}, 1\right)$ passe sous le point $(1, 1)$ de la
courbe. **La partie entière n'est pas de type C sur $[-2, 2]$.**

*Sur $[0, 1]$ : oui.* Sur $[0, 1]$, on a $\lfloor x \rfloor = 0$ pour $x < 1$ et
$\lfloor 1 \rfloor = 1$. Soit $a$, $b$ dans $[0, 1]$, $t \in [0, 1]$, et $x = ta + (1 - t)b$, qui
est dans $[0, 1]$ d'après la question 1.

- Si $\lfloor x \rfloor = 0$ : le membre de droite $t\lfloor a \rfloor + (1 - t)\lfloor b \rfloor$
  est une somme de produits de nombres positifs, donc il est positif, et l'inégalité est vraie.
- Si $\lfloor x \rfloor = 1$, alors $x = 1$. Or
  $$1 - x = t(1 - a) + (1 - t)(1 - b)$$
  est une somme de deux produits positifs ou nuls. Elle ne vaut $0$ que si les deux produits sont
  nuls. Donc si $t > 0$, alors $a = 1$ ; et si $1 - t > 0$, alors $b = 1$. Dans le membre de droite
  $t\lfloor a \rfloor + (1 - t)\lfloor b \rfloor$, chaque terme de poids non nul a donc une partie
  entière égale à $1$, et le membre de droite vaut $t + (1 - t) = 1$. L'inégalité est une égalité.

**La partie entière est de type C sur $[0, 1]$.** Être de type C dépend donc de l'intervalle
choisi.

**Bilan.** Quand $t$ parcourt $[0, 1]$, le point d'abscisse $ta + (1 - t)b$ et d'ordonnée
$t f(a) + (1 - t) f(b)$ parcourt la corde qui joint les points d'abscisses $a$ et $b$ de la courbe.
Une fonction de type C est donc une fonction dont la courbe reste sous toutes ses cordes. La valeur
absolue et la fonction carré sont de type C sur $\mathbb{R}$ ; la partie entière l'est sur
$[0, 1]$ mais pas sur $[-2, 2]$.

## Going further

- Dans la suite du sujet, on montrait qu'une fonction dont la dérivée seconde est positive est de
  type C, puis on en déduisait l'inégalité $\sqrt[3]{xyz} \leq \frac{x + y + z}{3}$ : c'est
  l'exercice 41002.
- La somme de deux fonctions de type C sur $I$ est-elle de type C sur $I$ ? Et leur produit ?
  (Penser à $x \mapsto x$ et $x \mapsto x^2$ sur $\mathbb{R}$.)
- Montrer que la fonction inverse $x \mapsto \frac{1}{x}$ est de type C sur $]0, +\infty[$, sans
  dérivée, en calculant la différence comme en 4 b).
- En classe de Terminale, les fonctions de type C s'appellent les fonctions **convexes**.
