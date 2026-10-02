---
id: "8738"
title: "Deux couples au bal"
grade: 11
theme: combinatorics
difficulty: 4
duration_min: 35
tags: [principe-de-l-extremum, maximum, graphe, raisonnement]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2024, cours de Groupe A"
  reference: "poly_valbonne_2024.pdf, Groupe A, « Principe de l'extremum » (Aimeric), exercice 5"
  url: "https://maths-olympiques.fr/wp-content/uploads/2024/09/poly_valbonne_2024.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/poly_valbonne_2024.pdf"
---

## Statement

Lors d'un bal, il y a un nombre fini de garçons et de filles. On sait que :

- aucun garçon n'a dansé avec **toutes** les filles ;
- chaque fille a dansé avec **au moins un** garçon.

Montrer qu'il existe deux couples de danseurs, $(f, g)$ et $(f', g')$, tels que $f$ n'a **pas** dansé avec $g'$ et $f'$ n'a **pas** dansé avec $g$.

*Ici « $(f,g)$ est un couple de danseurs » signifie simplement que la fille $f$ et le garçon $g$ ont dansé ensemble au cours de la soirée.*

## Hints

1. Il faut désigner quatre personnes : deux filles et deux garçons. Par lequel commencer ? Le principe de l'extremum suggère de partir d'un garçon particulier.
2. Prends le garçon $g$ qui a dansé avec le **plus grand nombre** de filles.
3. La première hypothèse fournit alors une fille $f'$ qui n'a pas dansé avec $g$. La seconde hypothèse fournit un garçon $g'$ pour cette fille.
4. Il ne reste plus qu'à trouver $f$ : une fille qui a dansé avec $g$ mais pas avec $g'$. Pourquoi une telle fille existe-t-elle ? Compare les deux listes de partenaires.

## Solution

Pour chaque garçon, appelons sa **liste** l'ensemble des filles avec qui il a dansé.

### Le choix extrémal

Il y a un nombre fini de garçons, donc l'un d'eux a la liste la plus longue (en cas d'égalité, on en choisit un au hasard). Notons-le $g$, et notons $L$ sa liste.

### On construit $f'$, puis $g'$

Par hypothèse, aucun garçon n'a dansé avec toutes les filles. En particulier $g$ non plus : il existe donc une fille

$$f' \quad \text{qui n'a pas dansé avec } g , \qquad \text{c'est-à-dire} \quad f' \notin L .$$

Par la seconde hypothèse, cette fille $f'$ a dansé avec au moins un garçon. Notons

$$g' \quad \text{un garçon avec qui } f' \text{ a dansé,}$$

et notons $L'$ la liste de $g'$. On a donc $f' \in L'$.

Remarquons au passage que $g' \neq g$, puisque $f' \in L'$ et $f' \notin L$.

### On construit $f$

Il nous faut une fille $f$ qui a dansé avec $g$ mais pas avec $g'$, autrement dit un élément de $L$ qui n'est pas dans $L'$. Montrons qu'il en existe un.

Raisonnons par l'absurde : supposons que **toute** fille de $L$ soit aussi dans $L'$, c'est-à-dire que $L$ soit contenu dans $L'$.

Mais $L'$ contient en plus la fille $f'$, qui n'est pas dans $L$. Donc $L'$ contient tout $L$ et au moins un élément de plus :

$$\text{nombre d'éléments de } L' \;\geqslant\; \text{nombre d'éléments de } L + 1 .$$

La liste de $g'$ serait donc strictement plus longue que celle de $g$, ce qui contredit le choix de $g$ comme garçon à la liste la plus longue.

Il existe donc bien une fille

$$f \in L \text{ avec } f \notin L' ,$$

c'est-à-dire une fille qui a dansé avec $g$ mais pas avec $g'$.

### Conclusion

Considérons les deux couples $(f, g)$ et $(f', g')$ :

- $f$ et $g$ ont dansé ensemble, puisque $f \in L$ ;
- $f'$ et $g'$ ont dansé ensemble, par construction de $g'$ ;
- $f$ n'a pas dansé avec $g'$, puisque $f \notin L'$ ;
- $f'$ n'a pas dansé avec $g$, puisque $f' \notin L$.

Ces deux couples répondent exactement à la question.

$$\boxed{\text{Les couples } (f,g) \text{ et } (f',g') \text{ conviennent.}}$$

*Ce qu'il faut retenir.* Tout tient au choix de $g$ : en prenant le garçon qui a dansé avec le plus de filles, on s'assure qu'aucun autre garçon ne peut avoir une liste strictement plus longue. C'est ce qui interdit à la liste de $g'$ de contenir celle de $g$ et de déborder en plus sur $f'$. Le principe de l'extremum sert presque toujours ainsi : on choisit l'objet maximal, on suppose que la conclusion est fausse, et on fabrique un objet encore plus grand.

## Going further

1. Où chacune des deux hypothèses a-t-elle servi ? Que se passerait-il si un garçon avait dansé avec toutes les filles ? Et si une fille n'avait dansé avec personne ?

2. Représente la situation par un graphe : un sommet par personne, une arête entre une fille et un garçon qui ont dansé ensemble. Que dit l'énoncé dans ce langage ? Tu démontres en fait que ce graphe contient une configuration précise à quatre sommets : laquelle ?

3. Construis un bal avec trois filles et trois garçons vérifiant les deux hypothèses, et exhibe les deux couples prédits par le théorème.
