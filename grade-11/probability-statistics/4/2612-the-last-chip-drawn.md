---
id: "2612"
title: "Le dernier jeton tiré"
grade: 11
theme: probability-statistics
difficulty: 4
duration_min: 35
tags: [probabilite, tirage-sans-remise, symetrie, denombrement]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), High School Circle, AMC Problem Session"
  reference: "Handout-456-552.pdf, exercice 12 (AMC 12 2001, problème 11 ; réponse donnée dans le même fichier)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-456-552.pdf"
---

## Statement

Une boîte contient cinq jetons : **trois rouges** et **deux blancs**.

On tire les jetons un par un, au hasard et sans remise, et on s'arrête dès que l'une des deux couleurs est épuisée, c'est-à-dire dès que les trois rouges sont sortis, ou dès que les deux blancs sont sortis.

Quelle est la probabilité que le **dernier jeton tiré soit blanc** ?

## Hints

1. Si le dernier jeton tiré est blanc, c'est que le tirage s'est arrêté parce que les blancs étaient épuisés. Formule la question autrement : quelle couleur s'épuise la première ?
2. Le nombre de tirages varie d'une partie à l'autre, ce qui est désagréable. Imagine qu'on ne s'arrête pas et qu'on tire les cinq jetons jusqu'au bout.
3. Sur la suite complète des cinq jetons, comment reconnaît-on que les blancs se sont épuisés avant les rouges ? Regarde le tout dernier jeton de la liste.
4. Il ne reste alors qu'à calculer la probabilité que le cinquième et dernier jeton de la liste complète soit rouge.

## Solution

**L'idée : tirer les cinq jetons jusqu'au bout.**

Le problème est gênant parce qu'on ne sait pas d'avance combien de tirages il y aura. Contournons la difficulté : imaginons qu'on **ne s'arrête pas** et qu'on tire les cinq jetons, obtenant une liste complète des cinq couleurs dans l'ordre. Cela ne change rien au déroulement du début, donc rien à l'événement qui nous intéresse.

**Traduction de l'événement.**

« Le dernier jeton tiré (au moment où l'on s'arrête) est blanc » signifie que le tirage s'est arrêté parce qu'on venait de sortir le **deuxième blanc**, donc que les blancs se sont épuisés **avant** les rouges.

Regardons maintenant la liste complète des cinq jetons.

- Si le **cinquième** jeton de la liste est rouge, alors les deux blancs sont parmi les quatre premiers : les blancs sont épuisés au plus tard au quatrième tirage, tandis que le troisième rouge n'arrive qu'au cinquième. **Les blancs s'épuisent en premier.**
- Si le cinquième jeton de la liste est blanc, alors les trois rouges sont parmi les quatre premiers : **les rouges s'épuisent en premier.**

Les deux couleurs ne peuvent pas s'épuiser en même temps. On a donc l'équivalence

$$\text{« le dernier jeton tiré est blanc »} \iff \text{« le cinquième jeton de la liste complète est rouge »} .$$

**Le calcul.**

Les cinq jetons sont tirés au hasard, donc toutes les positions se valent : le jeton qui occupe la cinquième place est un jeton pris au hasard parmi les cinq. Sur les cinq jetons, trois sont rouges, donc

$$P(\text{le cinquième jeton est rouge}) = \frac{3}{5}.$$

$$\boxed{P(\text{le dernier jeton tiré est blanc}) = \frac{3}{5}.}$$

**Ce résultat peut surprendre** : il y a plus de rouges que de blancs, et pourtant c'est la couleur blanche qui a le plus de chances de finir en dernier dans le tirage. C'est justement parce qu'il y a peu de blancs qu'ils s'épuisent vite.

## Going further

Le raisonnement ne se sert jamais des nombres $3$ et $2$. Avec $r$ jetons rouges et $b$ jetons blancs, la même équivalence donne
$$P(\text{le dernier jeton tiré est blanc}) = \frac{r}{r+b},$$
c'est-à-dire exactement la proportion de rouges dans la boîte.
