---
id: "0866"
title: "Quatre calculs avec des fractions"
grade: 8
theme: arithmetic
difficulty: 2
duration_min: 20
tags: [fractions, denominateur commun, simplification, ppcm]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Club de mathématiques de Lyon, feuille « Calcul », niveau collège - débutants, 16 avril 2024"
  reference: "Nombres.Introduction.pdf, exercice 42, section « Fractions »"
  url: ""
  original_language: "fr"
  local_copy: "sources/originals/clublyon/Nombres.Introduction.pdf"
---

## Statement

Calcule, et donne chaque résultat sous forme de fraction simplifiée :

**a)** $\dfrac{2}{3} + \dfrac{4}{7}$

**b)** $\dfrac{1}{2} + \dfrac{2}{3} + \dfrac{3}{4}$

**c)** $\dfrac{91}{30} + \dfrac{29}{42} - \dfrac{2}{35}$

**d)** $15 - \left( \dfrac{19}{6} + \dfrac{7}{8} \right)$

## Hints

1. On n'additionne des fractions qu'une fois qu'elles ont le même dénominateur. Tout le travail consiste à bien choisir ce dénominateur commun.
2. Le plus petit dénominateur commun n'est pas toujours le produit des dénominateurs. Pour la question b), $2 \times 3 \times 4 = 24$ convient, mais $12$ suffit.
3. Question c) : décompose $30 = 2 \times 3 \times 5$, $42 = 2 \times 3 \times 7$ et $35 = 5 \times 7$. Quel est le plus petit nombre qui contient les facteurs de ces trois-là ?
4. Question d) : un entier est une fraction comme les autres, $15 = \dfrac{15}{1}$. Calcule d'abord ce qu'il y a dans la parenthèse.

## Solution

**a)** Les dénominateurs $3$ et $7$ n'ont pas de facteur commun, donc on prend $21$ :

$$\frac{2}{3} + \frac{4}{7} = \frac{14}{21} + \frac{12}{21} = \frac{26}{21}.$$

$26 = 2 \times 13$ et $21 = 3 \times 7$ n'ont pas de facteur commun : c'est terminé.

**b)** Le plus petit dénominateur commun à $2$, $3$ et $4$ est $12$ :

$$\frac{1}{2} + \frac{2}{3} + \frac{3}{4} = \frac{6}{12} + \frac{8}{12} + \frac{9}{12} = \frac{23}{12}.$$

$23$ est premier, la fraction est irréductible.

**c)** On décompose les trois dénominateurs :

$$30 = 2 \times 3 \times 5, \qquad 42 = 2 \times 3 \times 7, \qquad 35 = 5 \times 7.$$

Le plus petit dénominateur commun doit contenir $2$, $3$, $5$ et $7$ : c'est $210$. On a
$210 = 7 \times 30 = 5 \times 42 = 6 \times 35$, donc

$$\frac{91}{30} = \frac{637}{210}, \qquad \frac{29}{42} = \frac{145}{210}, \qquad \frac{2}{35} = \frac{12}{210}.$$

D'où

$$\frac{637 + 145 - 12}{210} = \frac{770}{210}.$$

On simplifie : $770 = 70 \times 11$ et $210 = 70 \times 3$, donc

$$\frac{770}{210} = \frac{11}{3}.$$

**d)** On calcule d'abord la parenthèse, avec le dénominateur commun $24$ :

$$\frac{19}{6} + \frac{7}{8} = \frac{76}{24} + \frac{21}{24} = \frac{97}{24}.$$

Puis

$$15 - \frac{97}{24} = \frac{360}{24} - \frac{97}{24} = \frac{263}{24}.$$

$263$ est premier, la fraction est irréductible.

**Conclusion.**

$$\text{a)}\ \frac{26}{21}, \qquad \text{b)}\ \frac{23}{12}, \qquad \text{c)}\ \frac{11}{3}, \qquad \text{d)}\ \frac{263}{24}.$$

**Contrôle rapide en décimales.** $\frac{26}{21} \approx \text{1,24}$ ; $\frac{23}{12} \approx \text{1,92}$ ;
$\frac{11}{3} \approx \text{3,67}$ ; $\frac{263}{24} \approx \text{10,96}$. Chacun est bien de l'ordre de grandeur
attendu, ce qui rassure sur les calculs.

## Going further

1. La question c) tombe sur une fraction très simple, $\frac{11}{3}$. Ce n'est pas un hasard : l'exercice a été fabriqué à l'envers, en partant du résultat. Fabrique à ton tour une somme de trois fractions de dénominateurs $12$, $18$ et $8$ dont le résultat vaut $\frac{5}{2}$.
2. Calcule $\dfrac{1}{2} + \dfrac{1}{4} + \dfrac{1}{8} + \dfrac{1}{16} + \dfrac{1}{32}$. Que remarques-tu si tu compares le résultat à $1$ ?
