---
id: "2223"
title: "Une personne entre, ou deux sortent"
grade: 9
theme: logic-reasoning
difficulty: 4
duration_min: 35
tags: [invariant, divisibilite, restes, raisonnement]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Advanced Circle, Invariants II"
  reference: "Handout-623-735.pdf, exercice 4 (réponses dans Handout-624-735.pdf)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-623-735.pdf"
---

## Statement

Au départ, une salle est vide. Chaque minute, il se passe exactement une des deux choses suivantes :

- soit **une** personne entre dans la salle ;
- soit **deux** personnes sortent de la salle.

(Pour que deux personnes sortent, il faut évidemment qu'il y en ait au moins deux dans la salle.)

1. Au bout de $15$ minutes exactement, la salle peut-elle contenir exactement $9$ personnes ?
2. Au bout de $15$ minutes exactement, la salle peut-elle contenir exactement $8$ personnes ?
3. Au bout de $1000$ minutes exactement, la salle peut-elle contenir exactement $200$ personnes ?
4. Au bout de $3000$ minutes exactement, la salle peut-elle contenir exactement $3600$ personnes ?

Justifier chaque réponse.

## Hints

1. Pour montrer qu'une situation est possible, il suffit de la décrire. Pour montrer qu'elle est impossible, il faut un argument valable pour **toutes** les façons de faire.
2. Note $n$ le nombre de minutes écoulées et $k$ le nombre de fois où deux personnes sont sorties. Combien de fois quelqu'un est-il entré ?
3. Écris le nombre de personnes présentes en fonction de $n$ et de $k$.
4. Dans cette expression, quel nombre divise le terme qui contient $k$ ? Que peux-tu en déduire sur le reste dans la division par ce nombre ?
5. Pour la question 4, méfie-toi : l'argument des questions précédentes ne suffit pas. Regarde plutôt à quelle vitesse la salle peut se remplir, au mieux.

## Solution

**Une écriture qui résume tout.**

Supposons que $n$ minutes se soient écoulées, et notons $k$ le nombre de minutes où deux personnes sont sorties. Les $n - k$ autres minutes ont vu entrer une personne chacune. Le nombre de personnes présentes vaut donc

$$P = \underbrace{(n - k) \times 1}_{\text{entrées}} \; - \; \underbrace{k \times 2}_{\text{sorties}} = n - 3k .$$

**L'invariant.** Le terme $3k$ est un multiple de $3$. Donc **$P$ et $n$ laissent toujours le même reste dans la division par $3$**, quelle que soit la façon dont les minutes se sont déroulées.

**1. Neuf personnes après 15 minutes.**

$15$ et $9$ ont bien le même reste modulo $3$ (tous deux sont des multiples de $3$), donc rien ne s'y oppose. Il reste à exhiber un déroulement. L'équation $15 - 3k = 9$ donne $k = 2$ : il faut deux minutes de sortie et treize minutes d'entrée. Par exemple :

- minutes $1$ à $13$ : une personne entre chaque minute, il y en a $13$ ;
- minute $14$ : deux sortent, il en reste $11$ ;
- minute $15$ : deux sortent, il en reste $9$.

À aucun moment on n'a essayé de faire sortir des gens qui n'étaient pas là. **Oui, c'est possible.**

**2. Huit personnes après 15 minutes.**

Il faudrait $15 - 3k = 8$, c'est-à-dire $3k = 7$. Or $7$ n'est pas un multiple de $3$ : aucun entier $k$ ne convient.

Autrement dit, après $15$ minutes le nombre de personnes est forcément un multiple de $3$ (puisque $15$ en est un), et $8$ n'en est pas un. **Non, c'est impossible.**

**3. Deux cents personnes après 1000 minutes.**

$1000 = 3 \times 333 + 1$, donc $1000$ laisse le reste $1$ modulo $3$. Le nombre de personnes présentes doit donc lui aussi laisser le reste $1$.

Or $200 = 3 \times 66 + 2$ laisse le reste $2$. Les deux restes diffèrent. **Non, c'est impossible.**

(On peut aussi le dire avec l'équation : $1000 - 3k = 200$ donnerait $3k = 800$, et $800$ n'est pas un multiple de $3$.)

**4. Trois mille six cents personnes après 3000 minutes : le piège.**

Commençons par le test des restes : $3000$ est un multiple de $3$, et $3600$ aussi. **Le test ne décèle rien !** On pourrait croire que c'est possible. Ce serait une erreur.

Reprenons l'équation :

$$3000 - 3k = 3600 \qquad \text{donne} \qquad 3k = -600, \qquad \text{c'est-à-dire} \qquad k = -200 .$$

Un nombre de minutes ne peut pas être négatif : il n'y a pas de solution.

On peut aussi raisonner sans calcul, ce qui est encore plus clair. En une minute, le nombre de personnes augmente **d'au plus $1$** (il augmente de $1$ si quelqu'un entre, et il diminue si deux sortent). Parti de $0$, au bout de $3000$ minutes le nombre de personnes est donc au plus $3000$. Et $3600 > 3000$.

**Non, c'est impossible**, mais pour une raison complètement différente de celle des questions 2 et 3.

**Ce qu'il faut retenir.** Un invariant est un outil puissant, mais il ne dit jamais que « oui, c'est possible ». Quand l'invariant ne s'oppose à rien, la situation peut rester impossible pour une autre raison : ici, tout simplement, la salle ne peut pas se remplir plus vite qu'une personne par minute.

## Going further

1. Quelles sont, exactement, toutes les valeurs possibles du nombre de personnes présentes au bout de $15$ minutes ?
2. Et au bout de $n$ minutes ?
3. On change la règle : chaque minute, soit une personne entre, soit **trois** sortent. Quelles sont les valeurs possibles au bout de $20$ minutes ?
