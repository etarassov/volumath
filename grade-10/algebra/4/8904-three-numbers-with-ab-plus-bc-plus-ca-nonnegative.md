---
id: "8904"
title: "Trois nombres tels que ab + bc + ca soit positif"
grade: 10
theme: algebra
difficulty: 4
duration_min: 30
tags: [signe, tiroirs, contre-exemple, inegalite]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, Coupe Animath de printemps 2026"
  reference: "Poly-Valbonne-2026.pdf, chapitre II « Coupe Animath de printemps 2026 », exercice 4 (sujet collégiens)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2026/09/Poly-Valbonne-2026.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly-Valbonne-2026.pdf"
---

## Statement

Aline écrit au tableau $n$ nombres réels deux à deux distincts, avec $n \geq 3$. Elle choisit ces nombres comme elle veut, et elle cherche à embêter Emilhan.

Emilhan regarde le tableau et doit y trouver trois nombres $a$, $b$, $c$ (trois nombres différents parmi ceux écrits) tels que

$$ab + bc + ca \geq 0.$$

Pour quelles valeurs de $n$ Emilhan est-il sûr de réussir, quels que soient les nombres écrits par Aline ?

## Hints

1. Commencez par chercher, pour de petites valeurs de $n$, une liste de nombres qui fait perdre Emilhan. Essayez avec des nombres simples, positifs et négatifs mélangés.
2. Quand les trois nombres $a$, $b$, $c$ sont-ils faciles à traiter ? Regardez ce qui se passe si les trois sont positifs. Et si les trois sont négatifs ?
3. Si trois nombres ont le même signe, que vaut le signe de chacun des trois produits $ab$, $bc$, $ca$ ?
4. Il n'y a que deux signes possibles. Combien de nombres faut-il écrire au tableau pour être certain que trois d'entre eux ont le même signe ?
5. Pour la borne dans l'autre sens, essayez la liste $-2$, $-1$, $1$, $2$ et calculez les quatre valeurs possibles de $ab+bc+ca$.

## Solution

La réponse : **Emilhan est sûr de réussir exactement quand $n \geq 5$.** Il y a donc deux choses à montrer.

### Si $n \geq 5$, Emilhan gagne toujours

Chaque nombre du tableau est soit **positif ou nul**, soit **strictement négatif**. Cela fait deux catégories.

S'il y a au moins $5$ nombres au tableau et seulement deux catégories, l'une des deux catégories contient au moins $3$ nombres. En effet, si chacune en contenait au plus $2$, il y aurait au plus $4$ nombres en tout, ce qui est faux.

Emilhan prend donc trois nombres $a$, $b$, $c$ de la même catégorie.

- S'ils sont tous positifs ou nuls : chacun des produits $ab$, $bc$, $ca$ est un produit de deux nombres positifs ou nuls, donc $ab \geq 0$, $bc \geq 0$ et $ca \geq 0$.
- S'ils sont tous strictement négatifs : chacun des produits est un produit de deux nombres négatifs, donc **positif**. Là encore $ab \geq 0$, $bc \geq 0$ et $ca \geq 0$.

Dans les deux cas, la somme de trois quantités positives ou nulles est positive ou nulle :

$$ab + bc + ca \geq 0.$$

Emilhan a gagné.

### Si $n = 4$, Aline peut gagner

Aline écrit les quatre nombres

$$-2, \quad -1, \quad 1, \quad 2.$$

Emilhan doit en choisir trois. Il y a exactement quatre choix possibles : choisir trois nombres parmi quatre, c'est la même chose que décider lequel on laisse de côté. Calculons les quatre valeurs :

| Nombres choisis | $ab + bc + ca$ | Valeur |
|---|---|---|
| $-1, \ 1, \ 2$ | $(-1)\times 1 + 1 \times 2 + 2 \times (-1)$ | $-1$ |
| $-2, \ 1, \ 2$ | $(-2)\times 1 + 1 \times 2 + 2 \times (-2)$ | $-4$ |
| $-2, \ -1, \ 2$ | $(-2)\times(-1) + (-1) \times 2 + 2 \times (-2)$ | $-4$ |
| $-2, \ -1, \ 1$ | $(-2)\times(-1) + (-1) \times 1 + 1 \times (-2)$ | $-1$ |

Les quatre valeurs sont strictement négatives. Emilhan ne peut donc pas réussir : $n = 4$ ne convient pas.

### Si $n = 3$, Aline peut gagner aussi

Il lui suffit de garder trois des quatre nombres précédents, par exemple $-2$, $-1$, $1$ : le seul choix possible d'Emilhan donne $-1 < 0$. (Une autre liste très simple qui marche : $-1$, $0$, $1$, qui donne $0 \times(-1) + (-1)\times 1 + 1 \times 0 = -1$.)

### Conclusion

$$\boxed{\text{Emilhan est sûr de gagner exactement pour } n \geq 5.}$$

*Attention à la réciproque.* Il est vrai que « trois nombres de même signe » entraîne « $ab+bc+ca \geq 0$ ». Mais l'inverse est faux : avec $10$, $11$ et $-1$, on trouve $110 - 11 - 10 = 89 \geq 0$ alors que les signes ne sont pas tous les mêmes. Il faut donc bien fournir un contre-exemple explicite pour $n = 3$ et $n = 4$ ; dire « ma méthode ne marche plus » ne prouve rien.

## Going further

1. Pour $n = 4$, existe-t-il une liste d'Aline où Emilhan gagne ? (Autrement dit, $n = 4$ échoue-t-il toujours, ou seulement parfois ?)
2. Remplacez la condition par $ab + bc + ca > 0$, strictement. La réponse change-t-elle ?
