---
id: "0805"
title: "Deux pizzas pour cinq enfants"
grade: 8
theme: logic-reasoning
difficulty: 3
duration_min: 25
tags: [logique, disjonction-de-cas, contraintes]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Club de mathématiques de Lyon, feuille « Problèmes divers. Démonstrations par coloriage »"
  reference: "Moscou.Coloriage.pdf, exercice 5, d'après Mathematical Olympiads for Middle School (Moscou), 2015"
  url: ""
  original_language: "fr"
  local_copy: "sources/originals/clublyon/Moscou.Coloriage.pdf"
---

## Statement

Un mathématicien va à la pizzeria avec ses cinq enfants. La pizzeria propose trois ingrédients : la tomate, le champignon et la saucisse. Chaque pizza est garnie d'un seul coup, avec les ingrédients que l'on choisit pour elle (on peut aussi n'en mettre aucun), et cette garniture est la même sur toute la pizza.

Les enfants ont des préférences :

- Masha : aime les tomates mais pas les saucisses ;
- Vanya : aime les champignons ;
- Dasha : n'aime pas les tomates ;
- Nikita : aime les tomates mais pas les champignons ;
- Igor : n'aime pas les champignons, mais il aime la saucisse.

Un enfant est content d'une pizza si elle porte tous les ingrédients qu'il aime et aucun de ceux qu'il n'aime pas. Un ingrédient dont il n'a rien dit ne le gêne pas.

Il est clair que le mathématicien ne peut pas contenter tous ses enfants avec une seule pizza. Mais peut-il y arriver avec deux pizzas, chaque enfant prenant sa part dans l'une des deux ?

## Hints

1. Repère les enfants qui ne peuvent jamais manger la même pizza. Par exemple Masha veut de la tomate et Dasha n'en veut pas.
2. Trouve toutes les paires d'enfants de ce genre. Il y en a trois.
3. Masha ne peut manger ni avec Dasha, ni avec Igor. S'il n'y a que deux pizzas, où sont Dasha et Igor ?
4. Vanya et Nikita ne peuvent pas manger ensemble non plus. Il ne reste alors que deux cas à examiner.

## Solution

**Réponse : non, deux pizzas ne suffisent pas.**

**Étape 1. Les enfants qui ne peuvent pas partager une pizza.**

Regardons les préférences deux à deux :

- **Masha et Dasha** : Masha veut de la tomate, Dasha n'en veut pas. Une même pizza ne peut pas contenir de la tomate et ne pas en contenir. Ils mangent donc des pizzas différentes.
- **Masha et Igor** : Igor veut de la saucisse, Masha n'en veut pas. Pizzas différentes.
- **Vanya et Nikita** : Vanya veut du champignon, Nikita n'en veut pas. Pizzas différentes.

**Étape 2. Placer les enfants sur les deux pizzas.**

Supposons qu'il n'y ait que deux pizzas. Appelons **pizza A** celle dont Masha mange une part.

Dasha ne peut pas manger la pizza A, donc elle mange la **pizza B**. Igor non plus, donc Igor mange aussi la **pizza B**.

Restent Vanya et Nikita, qui doivent être sur des pizzas différentes. Il n'y a que deux possibilités.

**Étape 3. Premier cas : Vanya sur la pizza B.**

La pizza B doit alors contenir du champignon, puisque Vanya en veut. Mais Igor mange lui aussi la pizza B, et il ne veut pas de champignon. Impossible.

**Étape 4. Deuxième cas : Vanya sur la pizza A, donc Nikita sur la pizza B.**

La pizza B doit alors contenir de la tomate, puisque Nikita en veut. Mais Dasha mange elle aussi la pizza B, et elle ne veut pas de tomate. Impossible.

**Conclusion.** Les deux cas mènent à une contradiction : avec deux pizzas, le mathématicien ne peut pas contenter ses cinq enfants.

*Autre façon de conclure.* On peut aussi vérifier une à une les $8$ garnitures possibles (aucun ingrédient, un seul, deux, les trois) : **aucune ne contente plus de deux enfants**. Deux pizzas ne peuvent donc contenter que $4$ enfants au plus, et ils sont $5$.

## Going further

1. Trois pizzas suffisent-elles ? Essaie par exemple les garnitures tomate + champignon, tomate + saucisse, et champignon seul, et regarde qui est content.
2. Si un sixième enfant arrivait en disant « je n'aime ni la tomate, ni le champignon, ni la saucisse », combien de pizzas faudrait-il ?
