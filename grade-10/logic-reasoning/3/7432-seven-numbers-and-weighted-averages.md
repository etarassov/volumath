---
id: "7432"
title: "Les nombres 1 à 7 et les moyennes pondérées"
grade: 10
theme: logic-reasoning
difficulty: 3
duration_min: 30
tags: [invariant, somme, tableau, absurde]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Grésillon 2010, groupe des débutants"
  reference: "stage_ete_2010.pdf, « Groupe des Débutants », test de stratégies de base (3h), exercice 3"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2010.pdf"
---

## Statement

Les nombres $1$, $2$, $3$, $4$, $5$, $6$, $7$ sont écrits au tableau.

Un coup consiste à effacer deux nombres $a$ et $b$ et à écrire à leur place les deux nombres
$$\frac{2a+b}{3} \qquad \text{et} \qquad \frac{a+2b}{3}.$$

Il y a donc toujours sept nombres au tableau (qui ne sont plus forcément entiers).

1. Peut-on, au bout d'un nombre fini de coups, obtenir un tableau où le nombre $3$ apparaît sept
   fois ?
2. Même question avec le nombre $4$.

## Hints

1. Calcule la somme des deux nouveaux nombres et compare-la à $a+b$.
2. La somme de tous les nombres du tableau est donc un invariant. Que vaut-elle au départ ?
   Cela règle la première question.
3. Pour la seconde question, l'invariant ne suffit pas. Regarde le **dernier** coup : juste avant
   lui, à quoi ressemblait le tableau ? Deux nombres $a$ et $b$ devaient donner deux $4$.

## Solution

**L'invariant : la somme.**

Calculons la somme des deux nombres écrits :
$$\frac{2a+b}{3} + \frac{a+2b}{3} = \frac{3a+3b}{3} = a + b.$$

Le coup remplace donc deux nombres par deux autres de même somme : **la somme de tous les nombres
du tableau ne change jamais.**

Au départ, cette somme vaut
$$1 + 2 + 3 + 4 + 5 + 6 + 7 = \frac{7 \times 8}{2} = 28.$$

Elle vaudra donc $28$ pour toujours.

### 1. Sept fois le nombre 3 ?

Si le tableau portait sept fois le nombre $3$, sa somme vaudrait
$$7 \times 3 = 21 \neq 28.$$

**C'est donc impossible.**

### 2. Sept fois le nombre 4 ?

Cette fois l'invariant ne dit rien contre : $7 \times 4 = 28$, exactement la bonne somme. Il faut
un autre argument.

**Regardons le dernier coup.**

Supposons qu'on arrive à sept fois le nombre $4$, et regardons le tout dernier coup. Juste avant
ce coup, le tableau portait cinq nombres égaux à $4$ (ceux qu'on n'a pas touchés) et deux autres
nombres $a$ et $b$. Après le coup, ces deux-là sont devenus $4$ et $4$ :
$$\frac{2a+b}{3} = 4 \qquad \text{et} \qquad \frac{a+2b}{3} = 4.$$

**On résout.**

Ces deux égalités donnent $2a + b = 12$ et $a + 2b = 12$. En soustrayant la seconde de la
première :
$$(2a+b) - (a+2b) = a - b = 0,$$
donc $a = b$. En reportant, $3a = 12$, donc $a = b = 4$.

**La contradiction.**

Le dernier coup aurait donc effacé deux $4$ pour écrire deux $4$ : il n'aurait servi à rien. Le
tableau portait déjà sept $4$ **avant** ce coup.

On peut alors répéter le raisonnement sur le coup précédent, et ainsi de suite en remontant
jusqu'au départ : à aucun moment le tableau n'a changé, et il aurait fallu qu'au départ déjà les
sept nombres soient tous égaux à $4$.

Or au départ le tableau porte $1, 2, 3, 4, 5, 6, 7$, qui ne sont pas tous égaux à $4$.

**C'est donc impossible aussi.**

## Going further

Peut-on obtenir un tableau où les sept nombres sont tous égaux, quelle que soit leur valeur
commune ? (La somme impose déjà cette valeur ; le reste du raisonnement est le même.)

Et si le coup consistait à remplacer $a$ et $b$ par $\dfrac{3a+b}{4}$ et $\dfrac{a+3b}{4}$ ?
