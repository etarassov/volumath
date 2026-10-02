---
id: "2011"
title: "Trois racines cubiques de somme nulle"
grade: 12
theme: functions-analysis
difficulty: 4
duration_min: 30
tags: [racine-cubique, monotonie, equation, parametre]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Advanced, Quadratic equations (Oleg Gleizer)"
  reference: "Handout-1272-1283.pdf, exercice 6"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-1272-1283.pdf"
---

## Statement

Soit $a$ un nombre réel fixé. Résoudre dans $\mathbb{R}$ l'équation

$$\sqrt[3]{x + a} \ + \ \sqrt[3]{x + a + 1} \ + \ \sqrt[3]{x + a + 2} \ = \ 0 .$$

On rappelle que la racine cubique est définie pour **tous** les réels : $\sqrt[3]{-8} = -2$, par exemple.

On demande toutes les solutions, et la preuve qu'il n'y en a pas d'autres.

## Hints

1. Ne cherchez pas à élever au cube : posez plutôt $t = x + a + 1$ pour rendre l'expression symétrique.
2. L'équation devient $\sqrt[3]{t-1} + \sqrt[3]{t} + \sqrt[3]{t+1} = 0$. Une valeur de $t$ saute aux yeux.
3. Pour montrer qu'il n'y a pas d'autre solution, étudiez le sens de variation de la fonction $t \mapsto \sqrt[3]{t-1} + \sqrt[3]{t} + \sqrt[3]{t+1}$.
4. La fonction $u \mapsto \sqrt[3]{u}$ est strictement croissante sur $\mathbb{R}$. Une somme de fonctions strictement croissantes est strictement croissante.

## Solution

**Un changement de variable.** Posons $t = x + a + 1$. Les trois nombres sous les racines deviennent $t-1$, $t$ et $t+1$, et l'équation s'écrit

$$f(t) = 0, \qquad \text{où} \qquad f(t) = \sqrt[3]{t-1} + \sqrt[3]{t} + \sqrt[3]{t+1}.$$

**Une solution visible.** Pour $t = 0$ :

$$f(0) = \sqrt[3]{-1} + \sqrt[3]{0} + \sqrt[3]{1} = -1 + 0 + 1 = 0.$$

Donc $t = 0$ est solution.

**C'est la seule.** La fonction $u \mapsto \sqrt[3]{u}$ est définie et strictement croissante sur $\mathbb{R}$ : si $u_1 < u_2$, alors $\sqrt[3]{u_1} < \sqrt[3]{u_2}$. (En effet, $u \mapsto u^3$ est strictement croissante sur $\mathbb{R}$, et la racine cubique est sa fonction réciproque.)

La fonction $f$ est la somme de trois fonctions strictement croissantes :

$$t \mapsto \sqrt[3]{t-1}, \qquad t \mapsto \sqrt[3]{t}, \qquad t \mapsto \sqrt[3]{t+1}.$$

Donc $f$ est strictement croissante sur $\mathbb{R}$. Une fonction strictement croissante ne peut prendre deux fois la même valeur : elle s'annule donc au plus une fois. Comme elle s'annule en $0$, c'est le seul point où elle s'annule.

**Retour à $x$.** La condition $t = 0$ s'écrit $x + a + 1 = 0$, c'est-à-dire

$$\boxed{x = -a - 1}.$$

**Conclusion.** Quelle que soit la valeur du réel $a$, l'équation admet une unique solution : $x = -a-1$. C'est la valeur qui rend les trois nombres $x+a$, $x+a+1$, $x+a+2$ égaux à $-1$, $0$ et $1$ : leurs racines cubiques sont alors $-1$, $0$ et $1$, dont la somme est nulle.

## Going further

La même idée règle une famille entière d'équations. Chaque fois que l'on reconnaît une somme de fonctions toutes croissantes (ou toutes décroissantes), une solution trouvée « à l'œil » est automatiquement la seule. Par exemple

$$\sqrt[3]{x-2} + \sqrt{x+1} + x = 6$$

a pour unique solution $x = 3$ : chacun des trois termes croît avec $x$ sur $[-1\,;+\infty[$, et $x = 3$ donne $1 + 2 + 3 = 6$.

Attention toutefois : si l'un des termes décroît, l'argument tombe et il peut y avoir plusieurs solutions.
