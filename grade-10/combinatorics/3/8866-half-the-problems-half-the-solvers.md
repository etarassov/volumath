---
id: "8866"
title: "La moitié des problèmes, la moitié des participants"
grade: 10
theme: combinatorics
difficulty: 3
duration_min: 20
tags: [double comptage, moyenne, raisonnement par labsurde, inegalite]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2025, cours de Groupe B, « Combinatoire : Double comptage » (Noé)"
  reference: "Poly-2025-compresse.pdf, Groupe B, « Combinatoire : Double comptage », exercice 1, p. 232"
  url: "https://maths-olympiques.fr/wp-content/uploads/2025/09/Poly-2025-compresse.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly-2025-compresse.pdf"
---

## Statement

Au club de mathématiques, $n$ problèmes sont affichés au mur, et $m$ élèves participent à la séance.

Chaque élève a résolu au moins la moitié des problèmes, c'est-à-dire au moins $\dfrac{n}{2}$ d'entre eux.

Montrer qu'il existe alors un problème qui a été résolu par au moins la moitié des élèves, c'est-à-dire par au moins $\dfrac{m}{2}$ d'entre eux.

## Hints

1. Une même quantité peut se compter de deux façons. Ici, compte les **couples** (élève, problème résolu par cet élève).
2. Compte-les d'abord élève par élève. Que donne l'hypothèse ?
3. Compte-les ensuite problème par problème. Que donnerait la situation contraire de ce qu'on veut prouver ?
4. Raisonne par l'absurde : suppose que **chaque** problème a été résolu par moins de $\tfrac{m}{2}$ élèves, et majore le même total.

## Solution

### Ce qu'on va compter

Appelons **réussite** un couple (élève, problème) tel que cet élève ait résolu ce problème, et notons $P$ le nombre total de réussites. Tout l'exercice consiste à évaluer $P$ de deux façons.

### Premier comptage : élève par élève

Chaque élève apporte autant de réussites qu'il a résolu de problèmes, c'est-à-dire au moins $\tfrac{n}{2}$. Il y a $m$ élèves, donc
$$P \; \geqslant \; m \times \frac{n}{2} \; = \; \frac{mn}{2} .$$

### Second comptage : problème par problème

Raisonnons par l'absurde et supposons que **chaque** problème a été résolu par strictement moins de $\tfrac{m}{2}$ élèves.

Chaque problème apporte alors strictement moins de $\tfrac{m}{2}$ réussites. Il y a $n$ problèmes, donc
$$P \; < \; n \times \frac{m}{2} \; = \; \frac{mn}{2} .$$

(Ici $n \geqslant 1$, sinon il n'y aurait rien à démontrer, donc l'inégalité stricte se conserve en multipliant par $n$.)

### La contradiction

On obtient à la fois $P \geqslant \tfrac{mn}{2}$ et $P < \tfrac{mn}{2}$, ce qui est impossible.

### Conclusion

L'hypothèse absurde est donc fausse : au moins un problème a été résolu par au moins $\tfrac{m}{2}$ élèves.

### Pourquoi ça marche

Le même nombre $\tfrac{mn}{2}$ apparaît des deux côtés, et ce n'est pas un hasard : l'hypothèse « au moins la moitié des problèmes par élève » et la conclusion « au moins la moitié des élèves par problème » sont exactement symétriques quand on échange le rôle des lignes et des colonnes d'un tableau élèves $\times$ problèmes. Le double comptage consiste précisément à lire ce tableau une fois par lignes et une fois par colonnes.

## Going further

1. Remplacer « la moitié » par « le tiers » des deux côtés : l'énoncé reste-t-il vrai ?
2. Et si chaque élève résout au moins $\tfrac{n}{3}$ problèmes, que peut-on garantir sur le problème le plus résolu ?
3. Construire un exemple avec $n = m = 4$ où **aucun** problème n'est résolu par plus de la moitié des élèves, pour voir que la borne $\tfrac{m}{2}$ ne peut pas être améliorée.
