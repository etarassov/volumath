---
id: "40930"
title: "f(x + 1) = 1/2 + √(f(x) − f(x)²) : une fonction forcément périodique"
grade: 10
theme: functions-analysis
difficulty: 4
duration_min: 45
tags: [equation-fonctionnelle, periodicite, racine-carree, changement-de-fonction, fonction-constante, construction, continuite]
adapted_from: null
see_also: []
same_as: []
created: 2026-11-27
source:
  name: "Concours général des lycées 2025, mathématiques"
  reference: "cg-2025-s-sujet.pdf, exercice 3, questions 1 à 3"
  url: "https://www.freemaths.fr/annales-composition-mathematiques-concours-general/concours-general-mathematiques-sujet-serie-s-2025.pdf"
  original_language: "fr"
  local_copy: "sources/originals/concours-general/cg-2025-s-sujet.pdf"
---

## Statement

On dit qu'une fonction $f$ définie sur $\mathbb{R}$ vérifie la propriété $\mathcal{E}$ si, pour
tout réel $x$,
$$f(x + 1) = \frac{1}{2} + \sqrt{f(x) - f(x)^2} .$$

1. Proposer une fonction continue qui vérifie la propriété $\mathcal{E}$.
2. On rappelle qu'une fonction $g$ définie sur $\mathbb{R}$ est *périodique* s'il existe un réel
   $T > 0$ tel que $g(x + T) = g(x)$ pour tout réel $x$.
   Soit $f$ une fonction qui vérifie $\mathcal{E}$. Démontrer que $f$ est périodique.
3. Proposer une infinité de fonctions continues $f$ qui vérifient $\mathcal{E}$ et
   $f(0) = \frac{1}{2}$.

## Hints

1. **Question 1.** Chercher une fonction constante.
2. **Question 1.** Poser $g(x) = f(x) - \frac{1}{2}$ et écrire $f(x) - f(x)^2$ à l'aide de
   $g(x)$.
3. **Question 2.** Avec $g = f - \frac{1}{2}$, la propriété devient
   $g(x + 1) = \sqrt{\frac{1}{4} - g(x)^2}$. Calculer $g(x + 2)$ en fonction de $g(x)$.
4. **Question 2.** On trouve $g(x + 2) = \sqrt{g(x)^2} = |g(x)|$. Pourquoi $g(x)$ est-il
   toujours positif ou nul ? Penser à écrire $x = (x - 1) + 1$.
5. **Question 3.** Il faut $g(0) = 0$, donc $g(1) = \frac{1}{2}$, $g(2) = 0$, … Choisir librement
   $g$ sur $[0 ; 1]$, en déduire $g$ sur $[1 ; 2]$, puis répéter avec la période $2$.
6. **Question 3.** Une fonction est continue quand sa courbe se trace sans lever le crayon. Une
   fonction définie par morceaux est continue si chaque morceau l'est et si les morceaux se
   raccordent aux bornes.

## Solution

Posons $g(x) = f(x) - \frac{1}{2}$, de sorte que $f(x) = \frac{1}{2} + g(x)$. Alors
$$f(x) - f(x)^2 = f(x)(1 - f(x)) = \left(\frac{1}{2} + g(x)\right)\left(\frac{1}{2} - g(x)\right) = \frac{1}{4} - g(x)^2 .$$
La propriété $\mathcal{E}$ s'écrit donc : pour tout réel $x$,
$$g(x + 1) = \sqrt{\frac{1}{4} - g(x)^2} . \qquad (\mathcal{E}')$$

**1.** Cherchons $g$ constante égale à $c$. Il faut $c = \sqrt{\frac{1}{4} - c^2}$, donc
$c \geq 0$ et $c^2 = \frac{1}{4} - c^2$, soit $c^2 = \frac{1}{8}$ et $c = \frac{\sqrt{2}}{4}$.
Réciproquement, $c = \frac{\sqrt{2}}{4}$ convient : $\frac{1}{4} - c^2 = \frac{1}{8}$ et
$\sqrt{\frac{1}{8}} = \frac{\sqrt{2}}{4} = c$.

**Conclusion :** la fonction constante $f(x) = \frac{1}{2} + \frac{\sqrt{2}}{4} = \frac{2 + \sqrt{2}}{4}$
est continue et vérifie $\mathcal{E}$.

**2.** Soit $f$ qui vérifie $\mathcal{E}$, et $g = f - \frac{1}{2}$.

*$g$ est positive ou nulle.* Pour tout réel $x$, on applique $(\mathcal{E}')$ au réel $x - 1$ :
$g(x) = \sqrt{\frac{1}{4} - g(x - 1)^2} \geq 0$.

*Calcul de $g(x + 2)$.* En appliquant deux fois $(\mathcal{E}')$,
$$g(x + 2) = \sqrt{\frac{1}{4} - g(x + 1)^2} = \sqrt{\frac{1}{4} - \left(\frac{1}{4} - g(x)^2\right)} = \sqrt{g(x)^2} = |g(x)| = g(x) .$$
Donc $f(x + 2) = \frac{1}{2} + g(x + 2) = \frac{1}{2} + g(x) = f(x)$ pour tout réel $x$.

**Conclusion :** $f$ est périodique, de période $2$.

**3.** Si $f(0) = \frac{1}{2}$, alors $g(0) = 0$, et $(\mathcal{E}')$ impose
$g(1) = \sqrt{\frac{1}{4}} = \frac{1}{2}$. Voici une construction.

*Construction.* Soit $h$ une fonction continue sur $[0 ; 1]$, à valeurs dans
$\left[0 ; \frac{1}{2}\right]$, avec $h(0) = 0$ et $h(1) = \frac{1}{2}$. On définit $g$ sur
$[0 ; 2]$ par
$$g(x) = h(x) \text{ si } 0 \leq x \leq 1, \qquad g(x) = \sqrt{\frac{1}{4} - h(x - 1)^2} \text{ si } 1 \leq x \leq 2 .$$
Les deux formules donnent la même valeur en $x = 1$, à savoir $h(1) = \frac{1}{2}$ et
$\sqrt{\frac{1}{4} - h(0)^2} = \frac{1}{2}$. De plus $g(2) = \sqrt{\frac{1}{4} - \frac{1}{4}} = 0 = g(0)$.
On prolonge ensuite $g$ à tout $\mathbb{R}$ par périodicité de période $2$ : $g(x + 2) = g(x)$.
Enfin on pose $f = \frac{1}{2} + g$.

*$g$ est continue.* Chaque morceau est continu (la racine carrée d'une fonction continue
positive est continue), les deux morceaux se raccordent en $1$, et comme $g(2) = g(0)$, les
copies successives se raccordent en $2$, $4$, $-2$, etc.

*$g$ vérifie $(\mathcal{E}')$.* Toutes les valeurs de $g$ sont dans $\left[0 ; \frac{1}{2}\right]$.
Soit $x$ un réel ; par périodicité, on peut supposer $0 \leq x < 2$.

- Si $0 \leq x \leq 1$, alors $x + 1 \in [1 ; 2]$ et, par définition,
  $g(x + 1) = \sqrt{\frac{1}{4} - h(x)^2} = \sqrt{\frac{1}{4} - g(x)^2}$.
- Si $1 \leq x < 2$, alors $g(x + 1) = g(x - 1) = h(x - 1)$ par périodicité, et
  $$\sqrt{\frac{1}{4} - g(x)^2} = \sqrt{\frac{1}{4} - \left(\frac{1}{4} - h(x - 1)^2\right)} = \sqrt{h(x - 1)^2} = h(x - 1)$$
  car $h(x - 1) \geq 0$. Les deux membres sont égaux.

*Une infinité d'exemples.* Pour tout entier $k \geq 1$, la fonction $h_k(x) = \frac{x^k}{2}$
convient : elle est continue sur $[0 ; 1]$, à valeurs dans $\left[0 ; \frac{1}{2}\right]$, avec
$h_k(0) = 0$ et $h_k(1) = \frac{1}{2}$. Les fonctions $f_k$ obtenues sont toutes différentes,
puisque $f_k\left(\frac{1}{2}\right) = \frac{1}{2} + \frac{1}{2^{k+1}}$.

**Conclusion :** pour tout entier $k \geq 1$, la fonction $f_k$ de période $2$ définie par
$$f_k(x) = \frac{1}{2} + \frac{x^k}{2} \text{ sur } [0 ; 1], \qquad f_k(x) = \frac{1}{2} + \frac{1}{2}\sqrt{1 - (x - 1)^{2k}} \text{ sur } [1 ; 2]$$
est continue, vérifie $\mathcal{E}$ et $f_k(0) = \frac{1}{2}$.

**Bilan.** En posant $g = f - \frac{1}{2}$, la propriété devient
$g(x + 1) = \sqrt{\frac{1}{4} - g(x)^2}$. On a montré que toute fonction qui la vérifie est
périodique de période $2$, qu'une fonction constante convient, et que les solutions continues
avec $f(0) = \frac{1}{2}$ sont nombreuses : on peut choisir librement leur morceau sur $[0 ; 1]$
(continu, à valeurs dans $\left[0 ; \frac{1}{2}\right]$, partant de $0$ et arrivant à
$\frac{1}{2}$), le reste en découle.

## Going further

- Pour $k = 1$, le morceau sur $[1 ; 2]$ est un quart de cercle. Tracer la courbe de $f_1$
  sur $[-2 ; 4]$.
- Pour les élèves de première : vérifier que $f(x) = \frac{1}{2} + \frac{1}{2}|\sin(\pi x / 2)|$
  vérifie $\mathcal{E}$ et $f(0) = \frac{1}{2}$.
- Toutes les solutions continues avec $f(0) = \frac{1}{2}$ sont-elles obtenues par la
  construction de la question 3 ?
- C'est un problème classique des Olympiades internationales (1968), où le décalage $1$ est
  remplacé par un réel $a > 0$ quelconque : la fonction est alors périodique de période $2a$.
