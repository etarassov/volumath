---
id: "0808"
title: "La ligne de tram circulaire"
grade: 8
theme: algebra
difficulty: 3
duration_min: 25
tags: [proportion, mise-en-equation, cercle]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Club de mathématiques de Lyon, feuille « Problèmes divers. Démonstrations par coloriage »"
  reference: "Moscou.Coloriage.pdf, exercice 9, d'après Mathematical Olympiads for Middle School (Moscou), 2016"
  url: ""
  original_language: "fr"
  local_copy: "sources/originals/clublyon/Moscou.Coloriage.pdf"
---

## Statement

Dans une petite ville, il y a une seule ligne de tram, circulaire, et le tram peut la parcourir dans les deux sens, toujours à la même vitesse. Trois arrêts sont sur cette ligne : le cirque, le parc et le zoo.

Pour aller du parc au zoo, le tram met **trois fois plus** de temps par le chemin qui passe par le cirque que par le chemin qui ne passe pas par le cirque.

Pour aller du cirque au zoo, le chemin qui passe par le parc est **deux fois plus court** que celui qui ne passe pas par le parc.

Pour aller du parc au cirque, quel chemin est le plus court : celui qui passe par le zoo, ou celui qui n'y passe pas ? Et combien de fois plus court ?

## Hints

1. Fais un dessin : un cercle et trois arrêts dessus. Les trois arrêts découpent le cercle en trois arcs.
2. Donne un nom à chacun des trois arcs : $a$ pour l'arc entre le cirque et le parc, $b$ pour l'arc entre le parc et le zoo, $c$ pour l'arc entre le zoo et le cirque. Ces arcs ne contiennent aucun autre arrêt.
3. Pour aller d'un arrêt à un autre, il y a exactement deux chemins : l'arc direct, ou la somme des deux autres arcs. Écris les deux conditions de l'énoncé.
4. Tu obtiens $a + c = 3b$ et $c = 2(a+b)$. Deux équations pour trois inconnues, c'est normal : la réponse est un rapport. Exprime $b$ et $c$ en fonction de $a$.

## Solution

**Réponse : le chemin qui ne passe pas par le zoo, et il est $11$ fois plus court.**

Comme le tram roule toujours à la même vitesse, comparer des temps revient à comparer des longueurs.

**Étape 1. Nommer les trois arcs.**

Les trois arrêts découpent la ligne circulaire en trois arcs. Notons :

- $a$ la longueur de l'arc qui joint le cirque au parc sans passer par le zoo ;
- $b$ la longueur de l'arc qui joint le parc au zoo sans passer par le cirque ;
- $c$ la longueur de l'arc qui joint le zoo au cirque sans passer par le parc.

La ligne entière mesure $a + b + c$.

Entre deux arrêts, il y a exactement deux chemins : l'arc direct, ou le tour par l'autre côté, c'est-à-dire la somme des deux autres arcs.

**Étape 2. Traduire les deux conditions.**

*Du parc au zoo.* Le chemin qui ne passe pas par le cirque mesure $b$. Celui qui passe par le cirque mesure $a + c$. Il est trois fois plus long :
$$a + c = 3b.$$

*Du cirque au zoo.* Le chemin qui passe par le parc mesure $a + b$. Celui qui ne passe pas par le parc mesure $c$. Le premier est deux fois plus court :
$$c = 2(a + b).$$

**Étape 3. Tout exprimer en fonction de $a$.**

Remplaçons $c$ par $2(a+b)$ dans la première égalité :
$$a + 2(a + b) = 3b$$
$$3a + 2b = 3b$$
$$b = 3a.$$

Puis
$$c = 2(a + b) = 2(a + 3a) = 8a.$$

La ligne entière mesure donc $a + 3a + 8a = 12a$.

**Vérification des deux conditions.** Du parc au zoo : $b = 3a$ sans le cirque, et $a + c = 9a$ par le cirque ; c'est bien trois fois plus. ✓ Du cirque au zoo : $a + b = 4a$ par le parc, et $c = 8a$ sans le parc ; c'est bien deux fois plus court. ✓

**Étape 4. Répondre à la question.**

Du parc au cirque :

- le chemin qui ne passe pas par le zoo mesure $a$ ;
- le chemin qui passe par le zoo mesure $b + c = 3a + 8a = 11a$.

**Conclusion.** Pour aller du parc au cirque, mieux vaut ne pas passer par le zoo : ce chemin est $11$ fois plus court.

## Going further

1. Quelle fraction de la ligne représente chacun des trois arcs ?
2. Le tram fait un tour complet en $24$ minutes. Combien de temps met-il pour aller du parc au cirque par le plus court chemin ?
