---
id: "4019"
title: "Un seul élève retrouve son chapeau"
grade: 10
theme: combinatorics
difficulty: 4
duration_min: 25
tags: [denombrement, permutations, derangements, disjonction-de-cas]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Intermediate 2A, Week 1 Competition"
  reference: "Handout-3131-2694.pdf, problème 22 (réponse 45 dans le barème en fin de fichier)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-3131-2694.pdf"
---

## Statement

Cinq élèves laissent leur chapeau dans la salle de classe en sortant. Le professeur
redistribue ensuite les cinq chapeaux, un par élève, dans un ordre quelconque.

De combien de façons peut-il le faire pour qu'**exactement un** élève récupère son propre
chapeau ?

## Hints

1. Commence par choisir l'élève chanceux, celui qui retrouve son chapeau.
2. Une fois cet élève mis de côté, il reste quatre élèves et quatre chapeaux, avec une contrainte : **aucun** des quatre ne doit recevoir le sien.
3. Note $D_4$ le nombre de façons de distribuer $4$ chapeaux à $4$ élèves sans qu'aucun ne récupère le sien. Calcule d'abord $D_2$ et $D_3$ à la main, c'est très court.
4. Pour $D_4$ : le premier élève reçoit l'un des $3$ chapeaux qui ne sont pas le sien. Sépare ensuite deux cas selon que le propriétaire de ce chapeau reçoit ou non celui du premier élève.

## Solution

**Étape 1. Choisir l'élève chanceux.**

Exactement un élève récupère son chapeau : il y a $5$ façons de choisir lequel.

Une fois cet élève servi, il reste $4$ élèves et leurs $4$ chapeaux, et **aucun** de ces
quatre ne doit recevoir le sien (sinon il y aurait deux élèves chanceux).

Notons $D_n$ le nombre de façons de distribuer $n$ chapeaux à leurs $n$ propriétaires sans
qu'aucun ne reçoive le sien. La réponse cherchée est $5 \times D_4$.

**Étape 2. Les petits cas.**

- $D_2 = 1$ : avec deux élèves $A$ et $B$, la seule distribution sans chanceux est l'échange.
- $D_3 = 2$ : avec $A$, $B$, $C$, les deux distributions sont $A \to B \to C \to A$ et $A \to C \to B \to A$ (chaque flèche se lit « donne son chapeau à »).

**Étape 3. Calculer $D_4$.**

Appelons les élèves $1$, $2$, $3$, $4$ et les chapeaux $c_1$, $c_2$, $c_3$, $c_4$.

L'élève $1$ ne peut pas recevoir $c_1$ : il reçoit $c_2$, $c_3$ ou $c_4$, soit $3$
possibilités. Par symétrie, elles donnent toutes le même nombre de suites possibles ;
supposons donc que l'élève $1$ reçoive $c_2$, et comptons.

*Cas A : l'élève $2$ reçoit $c_1$.* Les élèves $1$ et $2$ ont échangé leurs chapeaux. Il
reste les élèves $3$ et $4$ avec les chapeaux $c_3$ et $c_4$, et aucun ne doit recevoir le
sien : il n'y a qu'une façon, l'échange. Cela fait $D_2 = 1$ distribution.

*Cas B : l'élève $2$ ne reçoit pas $c_1$.* Il reste les élèves $2$, $3$, $4$ et les chapeaux
$c_1$, $c_3$, $c_4$, avec les interdictions : l'élève $2$ ne doit pas recevoir $c_1$,
l'élève $3$ ne doit pas recevoir $c_3$, l'élève $4$ ne doit pas recevoir $c_4$. Chaque élève
a donc exactement un chapeau interdit, et ces trois interdictions portent sur trois chapeaux
différents : la situation est identique à celle de $D_3$. Cela fait $D_3 = 2$ distributions.

Au total, pour chaque choix du chapeau donné à l'élève $1$ :
$$D_2 + D_3 = 1 + 2 = 3 \text{ distributions.}$$

Comme il y a $3$ choix pour ce chapeau,

$$D_4 = 3 \times 3 = 9.$$

**Étape 4. Conclure.**

$$5 \times D_4 = 5 \times 9 = 45.$$

**Réponse : le professeur a $45$ façons de distribuer les chapeaux.**

## Going further

Les nombres $D_n$ s'appellent les **dérangements**. La relation utilisée ci-dessus se
généralise : $D_n = (n-1)\,(D_{n-1} + D_{n-2})$. On obtient ainsi
$D_1 = 0$, $D_2 = 1$, $D_3 = 2$, $D_4 = 9$, $D_5 = 44$, $D_6 = 265$. La proportion de
distributions sans aucun chanceux, $\dfrac{D_n}{n!}$, tend vers $\dfrac1e \approx \text{0,368}$.
