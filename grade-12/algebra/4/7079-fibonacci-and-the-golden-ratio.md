---
id: "7079"
title: "Fibonacci et le nombre d'or"
grade: 12
theme: algebra
difficulty: 4
duration_min: 30
tags: [suite-de-fibonacci, nombre-d-or, recurrence]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique junior de Cachan 2012, groupe des débutants"
  reference: "stage_junior_2012.pdf, mardi : combinatoire, récurrence, exercice 2"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_junior_2012.pdf"
---

## Statement

La suite de **Fibonacci** est définie par
$$F_0 = 0, \qquad F_1 = 1, \qquad \text{et} \qquad F_n = F_{n-1} + F_{n-2}
\ \text{ pour } n \geq 2 .$$

Ses premiers termes sont $0, 1, 1, 2, 3, 5, 8, 13, 21, \ldots$

On note $\Phi = \dfrac{1 + \sqrt5}{2}$ le **nombre d'or**, qui est la solution positive de
l'équation $\Phi^2 = \Phi + 1$.

Montrer que pour tout entier $n \geq 0$ :
$$F_{n+1} = \Phi\,F_n + \left(-\frac{1}{\Phi}\right)^{n} .$$

## Hints

1. Vérifie la formule pour $n = 0$, $n = 1$ et $n = 2$ avant de te lancer.
2. Une récurrence simple suffit. Pose $\psi = -\dfrac1\Phi$ pour alléger l'écriture.
3. Deux relations te seront utiles. La première est $\Phi^2 = \Phi + 1$.
4. La seconde : calcule $\Phi + \psi$, c'est-à-dire $\Phi - \dfrac1\Phi$. Tu trouveras un
   nombre très simple.
5. Dans l'hérédité, pars de $F_{n+2} = F_{n+1} + F_n$ et remplace $F_{n+1}$ par l'hypothèse de
   récurrence.

## Solution

**Notation et deux relations.**

Posons
$$\psi = -\frac{1}{\Phi} .$$

*Première relation.* Par définition, $\Phi^2 = \Phi + 1$.

*Seconde relation.* Divisons cette égalité par $\Phi$ (qui n'est pas nul) :
$$\Phi = 1 + \frac1\Phi , \qquad \text{donc} \qquad \Phi - \frac1\Phi = 1 ,
\qquad \text{c'est-à-dire} \qquad \Phi + \psi = 1 .$$

L'égalité à démontrer s'écrit alors
$$F_{n+1} = \Phi\,F_n + \psi^n .$$

**Récurrence.**

*Initialisation ($n = 0$).* Le membre de gauche vaut $F_1 = 1$. Le membre de droite vaut
$$\Phi \times F_0 + \psi^0 = \Phi \times 0 + 1 = 1 . \ \checkmark$$

*Hérédité.* Supposons la formule vraie au rang $n$, c'est-à-dire
$F_{n+1} = \Phi F_n + \psi^n$. Montrons-la au rang $n+1$.

Partons de la définition de la suite :
$$F_{n+2} = F_{n+1} + F_n .$$

Remplaçons $F_{n+1}$ par l'hypothèse de récurrence :
$$F_{n+2} = \left(\Phi F_n + \psi^n\right) + F_n = (\Phi + 1) F_n + \psi^n
= \Phi^2 F_n + \psi^n ,$$
en utilisant $\Phi + 1 = \Phi^2$.

Il reste à reconnaître la forme voulue. Écrivons ce que l'on veut obtenir :
$$\Phi\,F_{n+1} + \psi^{n+1}
= \Phi\left(\Phi F_n + \psi^n\right) + \psi^{n+1}
= \Phi^2 F_n + \Phi\,\psi^n + \psi \cdot \psi^{n}
= \Phi^2 F_n + \psi^n\left(\Phi + \psi\right) .$$

Or $\Phi + \psi = 1$, donc
$$\Phi\,F_{n+1} + \psi^{n+1} = \Phi^2 F_n + \psi^n = F_{n+2} .$$

C'est exactement la formule au rang $n+1$, ce qui achève la récurrence. $\blacksquare$

**Vérification numérique.**

$\Phi \approx \text{1,618}$ et $\psi \approx -\text{0,618}$.

- $n = 3$ : $\Phi F_3 + \psi^3 \approx \text{1,618} \times 2 - \text{0,236} = \text{3,000}$,
  et $F_4 = 3$. $\checkmark$
- $n = 5$ : $\Phi F_5 + \psi^5 \approx \text{1,618} \times 5 - \text{0,090} = \text{8,000}$,
  et $F_6 = 8$. $\checkmark$

## Going further

La formule dit que $F_{n+1}$ est très proche de $\Phi F_n$, à un terme
$\psi^n$ près qui tend vers $0$ puisque $|\psi| < 1$. Autrement dit, **le rapport de deux
termes consécutifs de Fibonacci tend vers le nombre d'or** :
$$\frac{F_{n+1}}{F_n} \longrightarrow \Phi .$$

Mieux : comme $|\psi^n| < \dfrac12$ dès que $n \geq 2$, l'entier $F_{n+1}$ est l'entier le
plus proche de $\Phi F_n$. On peut donc calculer le terme suivant de la suite de Fibonacci
avec une seule multiplication et un arrondi.

De la même façon, on démontre la **formule de Binet** :
$$F_n = \frac{\Phi^n - \psi^n}{\sqrt 5} ,$$
qui donne $F_n$ directement, sans calculer tous les termes précédents. C'est une formule
surprenante : un quotient de puissances irrationnelles qui tombe toujours sur un entier.
