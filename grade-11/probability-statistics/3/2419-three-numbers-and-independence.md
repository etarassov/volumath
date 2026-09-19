---
id: "2419"
title: "Trois nombres, une question d'indépendance"
grade: 11
theme: probability-statistics
difficulty: 3
duration_min: 25
tags: [independance, evenements, union, complementaire, incompatible]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Advanced Circle, Random Variables"
  reference: "Handout-505-598.pdf, exercices 10 et 11 (réponses dans Handout-506-598.pdf)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-505-598.pdf"
---

## Statement

1. Soient $A$ et $B$ deux événements d'un même univers tels que

   $$P(A) = \text{0,3} , \qquad P(\overline{A} \cap \overline{B}) = \text{0,2} , \qquad P(\overline{B}) = \text{0,4} .$$

   Les événements $A$ et $B$ sont-ils indépendants ?

2. Soient $A$ et $B$ deux événements **incompatibles**, c'est-à-dire tels que $A \cap B = \varnothing$. Peuvent-ils être indépendants ? Discuter selon les valeurs de $P(A)$ et $P(B)$.

## Hints

1. Une donnée porte sur $\overline{A} \cap \overline{B}$. Sais-tu réécrire cet événement à l'aide de $A \cup B$ ?
2. Une fois $P(A \cup B)$ connue, la formule $P(A \cup B) = P(A) + P(B) - P(A \cap B)$ donne $P(A \cap B)$.
3. Pour la question 2, que vaut $P(A \cap B)$ si $A$ et $B$ sont incompatibles ?
4. « Incompatibles » et « indépendants » sont deux mots très différents. Le premier parle des issues, le second des probabilités.

## Solution

### 1. Le calcul

*On commence par $P(B)$.* Puisque $P(\overline{B}) = \text{0,4}$,

$$P(B) = 1 - \text{0,4} = \text{0,6} .$$

*On passe à l'union.* Les lois de De Morgan donnent $\overline{A} \cap \overline{B} = \overline{A \cup B}$ : ne pas être dans $A$ et ne pas être dans $B$, c'est ne pas être dans $A \cup B$. Donc

$$P(A \cup B) = 1 - P(\overline{A}\cap\overline{B}) = 1 - \text{0,2} = \text{0,8} .$$

*On obtient l'intersection.* La formule

$$P(A \cup B) = P(A) + P(B) - P(A \cap B)$$

donne

$$P(A \cap B) = P(A) + P(B) - P(A \cup B) = \text{0,3} + \text{0,6} - \text{0,8} = \text{0,1} .$$

*On conclut.*

$$P(A)\times P(B) = \text{0,3} \times \text{0,6} = \text{0,18} \qquad \text{alors que} \qquad P(A\cap B) = \text{0,1} .$$

Comme $\text{0,1} \ne \text{0,18}$, **les événements $A$ et $B$ ne sont pas indépendants.**

On peut ajouter une lecture : $P_B(A) = \dfrac{\text{0,1}}{\text{0,6}} = \dfrac{1}{6} \approx \text{0,17}$, ce qui est nettement inférieur à $P(A) = \text{0,3}$. Savoir que $B$ s'est réalisé rend $A$ moins probable.

### 2. Incompatibles et indépendants

Si $A$ et $B$ sont incompatibles, alors $A \cap B = \varnothing$ et donc

$$P(A \cap B) = 0 .$$

Ils sont indépendants si et seulement si $P(A)\,P(B) = 0$, c'est-à-dire si et seulement si

$$P(A) = 0 \quad \text{ou} \quad P(B) = 0 .$$

Autrement dit :

* si $P(A) > 0$ et $P(B) > 0$, deux événements incompatibles ne sont **jamais** indépendants ;
* le seul cas où ils le sont est celui, sans intérêt, où l'un des deux est de probabilité nulle.

**Pourquoi c'est naturel.** Si $A$ et $B$ ne peuvent pas se produire ensemble, alors apprendre que $B$ s'est produit apporte une information très forte sur $A$ : cela rend $A$ impossible. Formellement, si $P(B) > 0$,

$$P_B(A) = \frac{P(A\cap B)}{P(B)} = 0 ,$$

ce qui ne peut égaler $P(A)$ que si $P(A) = 0$.

**À retenir.** *Incompatibles* veut dire qu'ils ne se produisent jamais ensemble ; *indépendants* veut dire que l'un n'apprend rien sur l'autre. Ces deux propriétés sont presque contraires l'une de l'autre, et il ne faut pas les confondre.

## Going further

1. Avec les données de la question 1, calculer $P(A \cap \overline{B})$ et $P(\overline{A} \cap B)$, puis vérifier que les quatre probabilités des cases $A\cap B$, $A\cap\overline B$, $\overline A\cap B$, $\overline A\cap\overline B$ ont bien pour somme $1$.
2. Modifier la valeur de $P(\overline{A}\cap\overline{B})$ pour que $A$ et $B$ deviennent indépendants, les autres données restant inchangées.
3. Montrer que si $A$ et $B$ sont indépendants, alors $A$ et $\overline{B}$ le sont aussi.
