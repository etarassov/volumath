---
id: "40683"
title: "Fonctions bornées ou nulles en 0 : un ensemble sans x + 1"
grade: 12
theme: functions-analysis
difficulty: 3
duration_min: 40
tags: [fonctions, composition, exponentielle, logarithme, polynome, ensembles, majoration, contre-exemple, disjonction-de-cas]
adapted_from: null
see_also: ["40681", "40682"]
same_as: []
created: 2026-11-27
source:
  name: "Concours général des lycées 2019, mathématiques, série S"
  reference: "cg-2019-s-sujet.pdf, problème 1 « Ensembles remarquables de fonctions », question 3 e (i à iii) et f"
  url: "https://www.freemaths.fr/annales-composition-mathematiques-concours-general/concours-general-mathematiques-sujet-serie-s-2019.pdf"
  original_language: "fr"
  local_copy: "sources/originals/concours-general/cg-2019-s-sujet.pdf"
---

## Statement

On note $\mathcal{P}$ l'ensemble des fonctions définies sur $[0, +\infty[$ et à valeurs dans
$[0, +\infty[$. Pour $f$ et $g$ dans $\mathcal{P}$, on note $f \circ g$ la fonction
$x \mapsto f(g(x))$. Si $f(x) \geqslant g(x)$ pour tout réel $x \geqslant 0$, on note
$f \geqslant g$. On note $u$ et $v$ les fonctions de $\mathcal{P}$ définies par
$$u(x) = e^x - 1 \qquad \text{et} \qquad v(x) = \ln(x + 1).$$

Si $\mathcal{S}$ est un ensemble de fonctions de $\mathcal{P}$, on considère les propriétés :

- **(P1)** $\mathcal{S}$ contient $u$ et $v$.
- **(P2)** $\mathcal{S}$ contient toutes les fonctions constantes positives (ou nulles).
- **(P3)** Si $f$ et $g$ sont dans $\mathcal{S}$, alors $f + g$ est dans $\mathcal{S}$.
- **(P4)** Si $f$ et $g$ sont dans $\mathcal{S}$, alors $f \circ g$ est dans $\mathcal{S}$.
- **(P5)** Si $f$ et $g$ sont dans $\mathcal{S}$ avec $f \geqslant g$, alors $f - g$ est dans
  $\mathcal{S}$.
- **(P6)** Si $f$ et $g$ sont dans $\mathcal{S}$, alors $f \times g$ est dans $\mathcal{S}$.

Soit $f$ une fonction de $\mathcal{P}$.

- On dit que $f$ est *segmentée* si, pour tout réel $a \geqslant 0$, il existe un réel
  $b \geqslant 0$ tel que $0 \leqslant f(x) \leqslant b$ pour tout $x$ de $[0, a]$.
- On dit que $f$ est *bornée* s'il existe un réel $b \geqslant 0$ tel que
  $0 \leqslant f(x) \leqslant b$ pour tout réel $x \geqslant 0$.

On note $\mathcal{A}$ l'ensemble des fonctions segmentées, et $\mathcal{B}$ l'ensemble des
fonctions segmentées qui sont nulles en $0$ **ou** bornées.

1. Soit $f$ une fonction bornée de $\mathcal{P}$. Démontrer que $f$ est segmentée. La réciproque
   est-elle vraie ?

2. Montrer que $\mathcal{A}$ vérifie les six propriétés (P1) à (P6).
3. Montrer que $\mathcal{B}$ vérifie les propriétés (P1), (P2), (P4), (P5) et (P6), mais pas la
   propriété (P3).

4. On considère un ensemble $\mathcal{V}$ de fonctions de $\mathcal{P}$ qui vérifie (P1), (P2),
   (P4), (P5) et (P6). On admet que $\mathcal{V}$ contient alors toutes les fonctions
   polynomiales de $\mathcal{P}$ qui sont nulles en $0$. Une fonction polynomiale de
   $\mathcal{P}$ est-elle nécessairement dans $\mathcal{V}$ ?

## Hints

1. **Question 1.** Pour la réciproque, chercher une fonction très simple qui n'est pas bornée.
2. **Question 2.** Pour la composée $f \circ g$ sur $[0, a]$ : les valeurs $g(x)$ restent dans un
   intervalle $[0, b]$. Que sait-on de $f$ sur cet intervalle ?
3. **Question 2.** Pour la différence, $0 \leqslant f - g \leqslant f$ quand $f \geqslant g$.
4. **Question 3.** Grâce à la question 2, les fonctions considérées sont déjà segmentées : il ne
   reste qu'à vérifier « nulle en $0$ ou bornée », en distinguant les cas.
5. **Question 3.** Pour la différence : si $f \geqslant g$ et $f(0) = 0$, que vaut $g(0)$ ?
6. **Question 3.** Pour (P3), additionner une fonction nulle en $0$ et une fonction bornée bien
   choisies.
7. **Question 4.** Utiliser l'ensemble $\mathcal{B}$.

## Solution

**1.** Si $0 \leqslant f(x) \leqslant b$ pour tout $x \geqslant 0$, alors, pour tout
$a \geqslant 0$, le même $b$ convient sur $[0, a]$ : $f$ est segmentée.

La réciproque est fausse. La fonction $\ell : x \mapsto x$ est segmentée (sur $[0, a]$, on a
$0 \leqslant x \leqslant a$, donc $b = a$ convient), mais elle n'est pas bornée : pour tout
$b \geqslant 0$, $\ell(b + 1) = b + 1 > b$.

**2.** On vérifie les six propriétés une par une.

- (P1) $u$ et $v$ sont croissantes et nulles en $0$. Sur $[0, a]$, on a donc
  $0 \leqslant u(x) \leqslant u(a)$ et $0 \leqslant v(x) \leqslant v(a)$ : elles sont
  segmentées.
- (P2) Une constante $k \geqslant 0$ est bornée, donc segmentée (question 1).
- (P3) Soient $f$, $g$ segmentées et $a \geqslant 0$. Si $f \leqslant b_1$ et $g \leqslant b_2$
  sur $[0, a]$, alors $0 \leqslant f + g \leqslant b_1 + b_2$ sur $[0, a]$.
- (P4) Soient $f$, $g$ segmentées et $a \geqslant 0$. Il existe $b$ tel que
  $0 \leqslant g(x) \leqslant b$ pour $x \in [0, a]$. Comme $f$ est segmentée, il existe $b'$
  tel que $0 \leqslant f(y) \leqslant b'$ pour $y \in [0, b]$. Pour $x \in [0, a]$, on a
  $g(x) \in [0, b]$, donc $0 \leqslant f(g(x)) \leqslant b'$.
- (P5) Si $f \geqslant g$ sont segmentées et $f \leqslant b_1$ sur $[0, a]$, alors
  $0 \leqslant f - g \leqslant f \leqslant b_1$ sur $[0, a]$ (car $g \geqslant 0$).
- (P6) Avec les mêmes notations qu'en (P3), $0 \leqslant fg \leqslant b_1 b_2$ sur $[0, a]$.

Donc $\mathcal{A}$ vérifie (P1) à (P6).

**3.** Les fonctions de $\mathcal{B}$ sont dans $\mathcal{A}$, et d'après la question 2 toutes
les fonctions construites ci-dessous à partir d'elles sont segmentées. Il reste à vérifier
qu'elles sont nulles en $0$ ou bornées.

- (P1) $u(0) = e^0 - 1 = 0$ et $v(0) = \ln 1 = 0$.
- (P2) Les constantes sont bornées.
- (P4) Soient $f$, $g$ dans $\mathcal{B}$.
  - Si $f$ est bornée par $b$, alors $f \circ g$ aussi.
  - Si $f(0) = 0$ et $g(0) = 0$, alors $f(g(0)) = f(0) = 0$.
  - Si $f(0) = 0$ et $g$ est bornée par $b$ : les valeurs $g(x)$ sont toutes dans $[0, b]$, et
    $f$, segmentée, est majorée par un certain $b'$ sur $[0, b]$. Donc $f \circ g$ est bornée par
    $b'$.

  Ces trois cas couvrent toutes les possibilités, donc $f \circ g$ est dans $\mathcal{B}$.
- (P5) Soient $f \geqslant g$ dans $\mathcal{B}$. Si $f$ est bornée par $b$, alors
  $0 \leqslant f - g \leqslant f \leqslant b$. Sinon $f(0) = 0$, et
  $0 \leqslant g(0) \leqslant f(0) = 0$, donc $g(0) = 0$ et $(f - g)(0) = 0$.
- (P6) Soient $f$, $g$ dans $\mathcal{B}$. Si l'une des deux est nulle en $0$, le produit est nul
  en $0$. Sinon, les deux sont bornées, par $b_1$ et $b_2$, et $fg$ est bornée par $b_1 b_2$.

En revanche, $\mathcal{B}$ ne vérifie pas (P3). La fonction $\ell$ est dans $\mathcal{B}$
(segmentée et nulle en $0$), la constante $1$ aussi (bornée). Mais $\ell + 1 : x \mapsto x + 1$
n'est pas nulle en $0$, et elle n'est pas bornée : elle n'est pas dans $\mathcal{B}$.

**4.** Non. L'ensemble $\mathcal{V} = \mathcal{B}$ vérifie (P1), (P2), (P4), (P5) et (P6)
(question 3), et la fonction polynomiale $x \mapsto x + 1$, qui est dans $\mathcal{P}$, n'est pas
dans $\mathcal{B}$.

Plus précisément, une fonction polynomiale de $\mathcal{P}$ non constante n'est jamais bornée
(elle tend vers $+\infty$). Celles qui sont dans $\mathcal{B}$ sont donc exactement les constantes
et celles qui sont nulles en $0$.

**Bilan.** L'ensemble des fonctions segmentées vérifie les six propriétés. L'ensemble des
fonctions segmentées nulles en $0$ ou bornées vérifie toutes les propriétés sauf la stabilité par
somme, et il ne contient pas $x \mapsto x + 1$. Ainsi, sans (P3), on ne peut plus garantir
qu'un ensemble contient toutes les fonctions polynomiales positives : le résultat admis à la
question 4, pour les fonctions nulles en $0$, ne s'étend pas à toutes.

## Going further

- Le résultat admis à la question 4 est démontré dans l'exercice 40682. Avec (P3) en plus, on
  obtient toutes les fonctions polynomiales positives (exercice 40681).
- Montrer qu'un ensemble $\mathcal{V}$ vérifiant (P1), (P2), (P4), (P5) et (P6) contient toujours
  les fonctions polynomiales de $\mathcal{P}$ qui sont constantes ou nulles en $0$. Pour
  $\mathcal{V} = \mathcal{B}$, ce sont exactement celles qu'il contient.
