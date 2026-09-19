---
id: "0129"
title: "Combien d'élèves ont passé le contrôle ?"
grade: 8
theme: arithmetic
difficulty: 4
duration_min: 30
tags: [pourcentages, multiples, divisibilite, fractions]
adapted_from: null
created: 2026-09-18
source:
  name: "Малый мехмат МГУ, пособие для преподавателей"
  reference: "Ast2017.pdf, листок 12, задача 7"
  url: "https://mmmf.msu.ru/for_schools/Ast2017.pdf"
  original_language: "ru"
  local_copy: "sources/originals/mmmf-msu/Ast2017.pdf"
---

## Statement

Quatre classes ont passé le même contrôle de mathématiques.

À l'issue du contrôle, $28\,\%$ des élèves ont obtenu la mention « très bien », $35\,\%$ la mention « bien », $25\,\%$ la mention « assez bien » et $12\,\%$ la mention « insuffisant ».

Combien d'élèves ont passé ce contrôle, sachant qu'aucune de ces quatre classes ne compte plus de $30$ élèves ?

## Hints

1. Appelle $x$ le nombre total d'élèves qui ont passé le contrôle. Écris, en fonction de $x$, le nombre d'élèves qui ont eu « très bien ».
2. Un nombre d'élèves est forcément un nombre entier. Simplifie chacune des quatre fractions $\frac{28}{100}$, $\frac{35}{100}$, $\frac{25}{100}$, $\frac{12}{100}$ et regarde ce que cela impose à $x$.
3. Avec $\frac{28}{100} = \frac{7}{25}$, il faut que $\frac{7x}{25}$ soit entier. Comme $7$ n'est pas divisible par $5$, de quoi $x$ doit-il être un multiple ?
4. Tu trouves que $x$ est à la fois un multiple de $25$ et un multiple de $20$. Liste les multiples de $25$. N'oublie pas la dernière information de l'énoncé : quatre classes d'au plus $30$ élèves, cela donne un maximum pour $x$.

## Solution

**L'idée : un nombre d'élèves est un nombre entier. Cette contrainte suffit presque à tout déterminer.**

Appelons $x$ le nombre total d'élèves qui ont passé le contrôle.

**Étape 1. Écrire les quatre effectifs et simplifier.**

$$\text{« très bien » : } x \times \frac{28}{100} = \frac{7x}{25}
\qquad
\text{« bien » : } x \times \frac{35}{100} = \frac{7x}{20}$$

$$\text{« assez bien » : } x \times \frac{25}{100} = \frac{x}{4}
\qquad
\text{« insuffisant » : } x \times \frac{12}{100} = \frac{3x}{25}$$

**Étape 2. Chacun de ces quatre nombres est un nombre entier d'élèves.**

- $\dfrac{7x}{25}$ est entier. Le nombre $25 = 5 \times 5$, et $7$ n'est divisible ni par $5$ ni par $25$ : les deux facteurs $5$ doivent donc venir de $x$. Donc **$x$ est un multiple de $25$**.
- $\dfrac{7x}{20}$ est entier. De même, $7$ n'a aucun diviseur commun avec $20$ à part $1$, donc **$x$ est un multiple de $20$**.
- $\dfrac{x}{4}$ est entier : $x$ est un multiple de $4$. C'est déjà vrai, puisque $x$ est un multiple de $20$.
- $\dfrac{3x}{25}$ est entier : comme $3$ n'a rien de commun avec $25$, cela redonne que $x$ est un multiple de $25$.

**Étape 3. Chercher les nombres qui conviennent.**

$x$ doit être à la fois multiple de $25$ et multiple de $20$. Écrivons les multiples de $25$ et regardons lesquels sont aussi des multiples de $20$ :

$$25,\quad 50,\quad 75,\quad \mathbf{100},\quad 125,\quad 150,\quad 175,\quad \mathbf{200},\quad \dots$$

Seuls $100$, $200$, $300$, … conviennent : les multiples communs de $20$ et $25$ sont les multiples de $100$.

**Étape 4. Utiliser la taille des classes.**

Il y a quatre classes, et chacune compte au plus $30$ élèves. Donc

$$x \leqslant 4 \times 30 = 120.$$

Parmi $100$, $200$, $300$, …, seul $100$ est inférieur ou égal à $120$.

**Vérification.**

Avec $100$ élèves, les effectifs sont $28$, $35$, $25$ et $12$ élèves : ce sont bien des nombres entiers, et leur somme fait $28 + 35 + 25 + 12 = 100$. Tout est cohérent, et quatre classes de $25$ élèves donnent bien un total de $100$.

**Conclusion.**

$100$ élèves ont passé le contrôle.

## Going further

1. Si l'on n'avait pas su qu'aucune classe ne compte plus de $30$ élèves, quelles auraient été les autres réponses possibles ?
2. Dans une classe, on affirme que $\text{37,5}\,\%$ des élèves sont des filles. Quel est le plus petit effectif possible pour cette classe ?
3. Un journal annonce que $2\,\%$ des habitants d'un village possèdent un cheval. Que peut-on en déduire sur le nombre d'habitants du village ?
