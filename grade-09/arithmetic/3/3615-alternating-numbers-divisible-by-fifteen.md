---
id: "3615"
title: "Nombres alternés divisibles par 15"
grade: 9
theme: arithmetic
difficulty: 3
duration_min: 20
tags: [criteres-de-divisibilite, chiffres, denombrement, multiples]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), X26 AMC 8, Number Theory"
  reference: "Handout-5143-5656.pdf, problème 2.5 (AMC 8 2020, problème 19)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-5143-5656.pdf"
---

## Statement

On dit qu'un nombre est **alterné** lorsque ses chiffres alternent entre deux chiffres distincts.

Par exemple $2020$ et $37373$ sont alternés, mais $3883$ et $123123$ ne le sont pas.

Combien y a-t-il de nombres alternés de cinq chiffres qui sont divisibles par $15$ ?

## Hints

1. Écris la forme générale d'un nombre alterné de cinq chiffres. Combien de fois chacun des deux chiffres apparaît-il ?
2. Être divisible par $15$, c'est être divisible par $3$ et par $5$ en même temps. Commence par la condition la plus contraignante.
3. Le premier chiffre d'un nombre de cinq chiffres ne peut pas être $0$.

## Solution

**Étape 1. La forme d'un nombre alterné de cinq chiffres.**

Un tel nombre s'écrit

$$\overline{ababa}$$

où $a$ et $b$ sont deux chiffres **distincts**, et où $a \neq 0$ puisque c'est le chiffre de gauche d'un nombre de cinq chiffres.

Le chiffre $a$ apparaît trois fois (rangs $1$, $3$, $5$) et le chiffre $b$ deux fois (rangs $2$ et $4$).

**Étape 2. La divisibilité par 5.**

$15 = 3 \times 5$, et $3$ et $5$ n'ont pas de diviseur commun autre que $1$. Un nombre est donc divisible par $15$ si et seulement s'il est divisible par $3$ **et** par $5$.

Un nombre est divisible par $5$ si et seulement si son chiffre des unités est $0$ ou $5$. Ici le chiffre des unités est $a$, et $a \neq 0$. Donc

$$a = 5$$

Le nombre s'écrit $\overline{5b5b5}$.

**Étape 3. La divisibilité par 3.**

Un nombre est divisible par $3$ si et seulement si la somme de ses chiffres l'est. Ici la somme vaut

$$5 + b + 5 + b + 5 = 15 + 2b$$

Comme $15$ est un multiple de $3$, cette somme est un multiple de $3$ si et seulement si $2b$ en est un. Et comme $3$ ne divise pas $2$, cela revient à dire que $3$ divise $b$.

Les chiffres $b$ possibles sont donc $0$, $3$, $6$ et $9$. Tous conviennent, car aucun n'est égal à $5$ : la condition $a \neq b$ est automatiquement respectée.

**Étape 4. Conclure.**

Il y a $4$ nombres :

$$50505, \quad 53535, \quad 56565, \quad 59595$$

On vérifie par exemple que $50505 = 15 \times 3367$ et $59595 = 15 \times 3973$.

**Réponse.** Il y en a $4$.

## Going further

Pour les nombres alternés de **quatre** chiffres, la forme est $\overline{abab}$, le chiffre des unités est $b$, donc $b \in \{0, 5\}$, et la somme des chiffres vaut $2a + 2b$. Il faut alors que $3$ divise $2(a+b)$, donc que $3$ divise $a + b$. Avec $b = 0$ : $a \in \{3, 6, 9\}$. Avec $b = 5$ : $a + 5$ multiple de $3$ donc $a \in \{1, 4, 7\}$ (en écartant $a = 0$ et $a = b$). Cela fait $6$ nombres.
