---
id: "40921"
title: "Une addition sur la parabole y = x² est associative"
grade: 10
theme: geometry
difficulty: 3
duration_min: 40
tags: [parabole, coordonnees, equation-de-droite, tangente, calcul-litteral, fractions]
adapted_from: null
see_also: ["40922", "40923", "40924"]
same_as: []
created: 2026-11-27
source:
  name: "Concours général des lycées 2025, mathématiques"
  reference: "cg-2025-s-sujet.pdf, exercice 1 « Addition sur une parabole », partie 1, questions 1 à 3. L'équation de la tangente est donnée dans l'énoncé (le sujet la laisse trouver), avec une vérification ajoutée à la question 3 a)."
  url: "https://www.freemaths.fr/annales-composition-mathematiques-concours-general/concours-general-mathematiques-sujet-serie-s-2025.pdf"
  original_language: "fr"
  local_copy: "sources/originals/concours-general/cg-2025-s-sujet.pdf"
---

## Statement

Le plan est muni d'un repère orthonormé. Pour tout point $M$ du plan, on note $(x_M ; y_M)$ ses
coordonnées. Soient $\mathcal{P}$ la parabole d'équation $y = x^2$ et $\Delta$ la droite
d'équation $y = -1$.

Pour deux points $A$ et $B$ de $\mathcal{P}$ tels que $y_A \neq y_B$, on note $A \oplus B$ le
point de $\mathcal{P}$ dont l'abscisse est celle du point d'intersection des droites $(AB)$ et
$\Delta$.

1. Soient $A$ et $B$ deux points de $\mathcal{P}$ tels que $y_A \neq y_B$. Exprimer
   $x_{A \oplus B}$ en fonction de $x_A$ et $x_B$.
2. Soient $A$, $B$ et $C$ trois points de $\mathcal{P}$. On suppose que
   $$y_A \neq y_B, \qquad y_{A \oplus B} \neq y_C, \qquad y_B \neq y_C, \qquad y_A \neq y_{B \oplus C} .$$
   Démontrer que les points $(A \oplus B) \oplus C$ et $A \oplus (B \oplus C)$ sont confondus.

Pour un point $A$ de $\mathcal{P}$ distinct de l'origine $O$, on note $A \oplus A$ le point de
$\mathcal{P}$ dont l'abscisse est celle du point d'intersection de $\Delta$ et de la tangente à
$\mathcal{P}$ en $A$. On admet que cette tangente est la droite d'équation
$y = 2x_A\,x - x_A^2$.

3. Soit $A$ un point de $\mathcal{P}$ distinct de $O$.
   a) Vérifier que la droite d'équation $y = 2x_A\,x - x_A^2$ ne rencontre $\mathcal{P}$ qu'au
   point $A$. Exprimer ensuite $x_{A \oplus A}$ en fonction de $x_A$.
   b) Soit $B$ un point de $\mathcal{P}$ tel que
   $$y_{A \oplus A} \neq y_B, \qquad y_A \neq y_B, \qquad y_A \neq y_{A \oplus B} .$$
   Démontrer que les points $(A \oplus A) \oplus B$ et $A \oplus (A \oplus B)$ sont confondus.

## Hints

1. **Question 1.** Noter $a = x_A$ et $b = x_B$, de sorte que $A(a ; a^2)$ et $B(b ; b^2)$. Que
   signifie la condition $y_A \neq y_B$ pour $a$ et $b$ ?
2. **Question 1.** Le coefficient directeur de $(AB)$ est $\frac{b^2 - a^2}{b - a}$, qui se
   simplifie.
3. **Question 2.** Deux points de $\mathcal{P}$ qui ont la même abscisse sont confondus : il
   suffit de comparer des abscisses.
4. **Question 2.** Avec $s = x_{A \oplus B}$, calculer $\frac{sc - 1}{s + c}$ en multipliant le
   numérateur et le dénominateur par $a + b$. Le résultat a une forme très particulière quand on
   échange les lettres.
5. **Question 3 b).** La formule de la question 3 a) ressemble beaucoup à celle de la question 1
   avec $b = a$. Refaire le calcul de la question 2.

## Solution

Pour un point $M$ de $\mathcal{P}$ d'abscisse $m$, on a $y_M = m^2$. Donc deux points de
$\mathcal{P}$ sont confondus dès qu'ils ont la même abscisse, et pour deux points $A(a ; a^2)$ et
$B(b ; b^2)$ de $\mathcal{P}$,
$$y_A \neq y_B \iff a^2 \neq b^2 \iff a \neq b \text{ et } a + b \neq 0 .$$

**1.** Notons $a = x_A$ et $b = x_B$. Comme $a \neq b$, la droite $(AB)$ n'est pas parallèle à
l'axe des ordonnées, et son coefficient directeur est
$$\frac{b^2 - a^2}{b - a} = \frac{(b - a)(b + a)}{b - a} = a + b .$$
Son équation est donc $y = (a + b)(x - a) + a^2$, c'est-à-dire $y = (a + b)x - ab$. On vérifie
que $B$ est bien dessus : $(a + b)b - ab = b^2$.

Comme $a + b \neq 0$, la droite $(AB)$ n'est pas parallèle à $\Delta$. Elle coupe $\Delta$ au
point d'abscisse $x$ telle que $(a + b)x - ab = -1$, soit $x = \frac{ab - 1}{a + b}$.

**Conclusion :**
$$x_{A \oplus B} = \frac{x_A x_B - 1}{x_A + x_B} .$$

**2.** Notons $a$, $b$, $c$ les abscisses de $A$, $B$, $C$, et $s = x_{A \oplus B}$,
$t = x_{B \oplus C}$. Les hypothèses disent que $a + b$, $s + c$, $b + c$ et $a + t$ sont non
nuls, donc toutes les formules ci-dessous ont un sens.

D'après la question 1, $s = \frac{ab - 1}{a + b}$ et l'abscisse de $(A \oplus B) \oplus C$ est
$\frac{sc - 1}{s + c}$. On multiplie le numérateur et le dénominateur par $a + b$ :
$$\frac{sc - 1}{s + c} = \frac{(ab - 1)c - (a + b)}{(ab - 1) + c(a + b)} = \frac{abc - a - b - c}{ab + bc + ca - 1} .$$
Le dénominateur n'est pas nul, car il vaut $(a + b)(s + c)$.

De même $t = \frac{bc - 1}{b + c}$, et l'abscisse de $A \oplus (B \oplus C)$ est
$$\frac{at - 1}{a + t} = \frac{a(bc - 1) - (b + c)}{a(b + c) + (bc - 1)} = \frac{abc - a - b - c}{ab + bc + ca - 1} .$$

Les deux points de $\mathcal{P}$ ont la même abscisse, ils sont donc confondus :
$(A \oplus B) \oplus C = A \oplus (B \oplus C)$.

**3. a)** Notons $a = x_A \neq 0$. Un point $(x ; x^2)$ de $\mathcal{P}$ est sur la droite
d'équation $y = 2ax - a^2$ si et seulement si $x^2 = 2ax - a^2$, soit $(x - a)^2 = 0$, soit
$x = a$. La droite ne rencontre donc $\mathcal{P}$ qu'au point $A$.

Comme $a \neq 0$, cette droite n'est pas parallèle à $\Delta$. Elle coupe $\Delta$ au point
d'abscisse $x$ telle que $2ax - a^2 = -1$, soit $x = \frac{a^2 - 1}{2a}$.

**Conclusion :**
$$x_{A \oplus A} = \frac{x_A^2 - 1}{2x_A} .$$
C'est la formule de la question 1 avec $x_B = x_A$.

**3. b)** Notons $a = x_A$, $b = x_B$, $d = x_{A \oplus A} = \frac{a^2 - 1}{2a}$ et
$t = x_{A \oplus B} = \frac{ab - 1}{a + b}$. Les hypothèses disent que $d + b$, $a + b$ et $a + t$
sont non nuls.

L'abscisse de $(A \oplus A) \oplus B$ est, en multipliant en haut et en bas par $2a$,
$$\frac{db - 1}{d + b} = \frac{(a^2 - 1)b - 2a}{(a^2 - 1) + 2ab} = \frac{a^2 b - 2a - b}{a^2 + 2ab - 1} .$$
L'abscisse de $A \oplus (A \oplus B)$ est, en multipliant en haut et en bas par $a + b$,
$$\frac{at - 1}{a + t} = \frac{a(ab - 1) - (a + b)}{a(a + b) + (ab - 1)} = \frac{a^2 b - 2a - b}{a^2 + 2ab - 1} .$$
Les deux abscisses sont égales, donc $(A \oplus A) \oplus B = A \oplus (A \oplus B)$.

**Bilan.** L'opération $\oplus$ se calcule sur les abscisses par la formule
$(a, b) \mapsto \frac{ab - 1}{a + b}$, et on a démontré qu'elle est associative : chaque fois que
les deux membres sont définis, $(A \oplus B) \oplus C = A \oplus (B \oplus C)$. Cela reste vrai
quand on remplace la droite $(AB)$ par la tangente pour définir $A \oplus A$, au moins dans le
cas $(A \oplus A) \oplus B = A \oplus (A \oplus B)$ traité ici.

## Going further

- Pour le club : si $a = \frac{\cos \theta}{\sin \theta}$ et $b = \frac{\cos \varphi}{\sin \varphi}$
  (la « cotangente »), alors $\frac{ab - 1}{a + b} = \frac{\cos(\theta + \varphi)}{\sin(\theta + \varphi)}$.
  L'opération $\oplus$ est donc l'addition des angles déguisée, ce qui explique pourquoi elle est
  associative.
- Dans la suite du sujet, on partait du point $A(3 ; 9)$ et on doublait sans cesse :
  $A_{n+1} = A_n \oplus A_n$. Voir les exercices 40922, 40923 et 40924.
