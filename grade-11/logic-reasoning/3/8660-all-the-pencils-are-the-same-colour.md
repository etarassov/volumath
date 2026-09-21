---
id: "8660"
title: "Tous les crayons sont de la même couleur"
grade: 11
theme: logic-reasoning
difficulty: 3
duration_min: 20
tags: [recurrence, heredite, faux raisonnement, contre exemple]
adapted_from: null
see_also: ["7720"]
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2023, Groupe A"
  reference: "valbonne-2023.pdf, Groupe A, cours « Récurrence » (Elsa), exercice 6 (« bizarre... »)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/12/valbonne-2023.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/valbonne-2023.pdf"
---

## Statement

Voici une démonstration. Elle prétend établir que **toute boîte de crayons de couleur ne contient que des crayons de la même couleur.**

> Montrons par récurrence sur $n \geqslant 1$ la propriété $P(n)$ : « toute boîte contenant $n$ crayons ne contient que des crayons de la même couleur ».
>
> **Initialisation.** Une boîte contenant un seul crayon ne contient évidemment que des crayons de la même couleur. Donc $P(1)$ est vraie.
>
> **Hérédité.** Supposons $P(n)$ vraie pour un certain entier $n \geqslant 1$. Prenons une boîte de $n+1$ crayons, alignés de gauche à droite.
>
> Les $n$ **premiers** crayons forment une boîte de $n$ crayons : par hypothèse de récurrence, ils sont tous de la même couleur.
>
> Les $n$ **derniers** crayons forment aussi une boîte de $n$ crayons : par hypothèse de récurrence, ils sont eux aussi tous de la même couleur.
>
> Ces deux groupes se chevauchent, donc la couleur du premier groupe est la même que celle du second. Tous les $n+1$ crayons sont donc de la même couleur, et $P(n+1)$ est vraie.
>
> D'après le principe de récurrence, $P(n)$ est vraie pour tout $n \geqslant 1$.

La conclusion est manifestement fausse. **Où est l'erreur ?**

## Hints

1. L'initialisation est-elle correcte ? Relis-la attentivement : elle l'est.
2. L'erreur est donc dans l'hérédité. Or l'hérédité doit être valable pour **tout** $n \geqslant 1$, sans exception.
3. Teste l'hérédité pour la plus petite valeur possible, $n = 1$. Elle prétend faire passer de « toute boîte de $1$ crayon » à « toute boîte de $2$ crayons ».
4. Dessine deux crayons. Quel est le groupe des « $n$ premiers » ? Celui des « $n$ derniers » ? Se chevauchent-ils vraiment ?

## Solution

L'initialisation est correcte : dans une boîte à un crayon, il n'y a rien à comparer.

L'erreur est dans **l'hérédité**, et plus précisément dans la phrase « ces deux groupes se chevauchent ».

**Regardons le cas $n = 1$.** L'hérédité prétend alors faire passer de $P(1)$ à $P(2)$. Prenons donc une boîte de $2$ crayons, un crayon $A$ à gauche et un crayon $B$ à droite.

- Le groupe des « $n = 1$ premiers » crayons, c'est $\{A\}$. Effectivement, tous ses crayons sont de la même couleur : celle de $A$.
- Le groupe des « $n = 1$ derniers » crayons, c'est $\{B\}$. Effectivement, tous ses crayons sont de la même couleur : celle de $B$.
- Et maintenant : **ces deux groupes ne se chevauchent pas.** Ils n'ont aucun crayon en commun. Rien ne permet donc de dire que la couleur de $A$ est celle de $B$.

L'hérédité est donc fausse au rang $n = 1$. Et comme la chaîne des implications est brisée dès le premier maillon, la conclusion ne tient pas.

**Pourquoi le raisonnement semblait marcher.** Dès que $n \geqslant 2$, les deux groupes se chevauchent bel et bien : le groupe des $n$ premiers contient le crayon numéro $2$, le groupe des $n$ derniers aussi. Le raisonnement est alors correct. L'hérédité fonctionne donc **de $2$ vers $3$, de $3$ vers $4$, et ainsi de suite**. Ce qu'elle ne fait pas, c'est le tout premier pas, de $1$ vers $2$.

**Conclusion.**

$$\boxed{\text{L'hérédité est fausse pour } n = 1 : \text{les deux groupes de } 1 \text{ crayon ne se chevauchent pas.}}$$

Autrement dit, la démonstration établit correctement que si toute boîte de $2$ crayons était monochrome, alors toutes les boîtes le seraient. Ce qui est vrai, et parfaitement inutile.

## Going further

Cet exercice illustre une règle de rédaction qui a l'air pédante et qui ne l'est pas : quand on écrit une hérédité, il faut **préciser pour quels $n$ elle est valable**, et vérifier que le premier pas est couvert.

Le piège apparaît chaque fois que l'hérédité utilise un objet intermédiaire — ici, un crayon commun aux deux groupes — dont l'existence n'est pas garantie pour les petites valeurs de $n$.

Cherche l'erreur dans celui-ci, construit sur le même modèle : « montrons que dans tout groupe de $n$ personnes, toutes ont le même âge ». Tu la trouveras au même endroit.
