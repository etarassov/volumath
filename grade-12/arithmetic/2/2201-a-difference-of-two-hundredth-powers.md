---
id: "2201"
title: "Une différence de puissances centièmes"
grade: 12
theme: arithmetic
difficulty: 2
duration_min: 15
tags: [congruences, divisibilite, puissances]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Advanced, Number Theory (Part 1)"
  reference: "Handout-823-872.pdf, exercice 11 (d)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-823-872.pdf"
---

## Statement

Le nombre

$$21^{100} - 12^{100}$$

est-il un multiple de $11$ ?

Le nombre $21^{101} - 12^{101}$ l'est-il aussi ?

## Hints

1. Ce nombre a plus de cent trente chiffres. Il n'est donc pas question de le calculer : on va travailler modulo $11$.
2. Que valent $21$ et $12$ modulo $11$ ? Les deux restes sont particulièrement simples.
3. Si $a \equiv b \pmod{n}$, alors $a^k \equiv b^k \pmod{n}$ pour tout entier naturel $k$. Applique cette règle aux deux morceaux séparément.
4. Pour la deuxième question, l'exposant change de parité. Qu'est-ce que cela change pour $(-1)^k$ ?

## Solution

**Réduire les deux bases modulo 11.**

$$21 = 2 \times 11 - 1, \qquad \text{donc} \qquad 21 \equiv -1 \pmod{11}.$$

$$12 = 11 + 1, \qquad \text{donc} \qquad 12 \equiv 1 \pmod{11}.$$

**Élever à la puissance 100.**

La compatibilité des congruences avec le produit donne, en multipliant la congruence par elle-même autant de fois qu'il faut :

$$21^{100} \equiv (-1)^{100} \equiv 1 \pmod{11}, \qquad 12^{100} \equiv 1^{100} \equiv 1 \pmod{11}.$$

**Soustraire.**

$$21^{100} - 12^{100} \equiv 1 - 1 = 0 \pmod{11}.$$

**Conclusion.** Oui, $21^{100} - 12^{100}$ est un multiple de $11$.

**La deuxième question.**

Le raisonnement est le même, mais l'exposant $101$ est impair :

$$21^{101} \equiv (-1)^{101} = -1 \pmod{11}, \qquad 12^{101} \equiv 1 \pmod{11},$$

donc

$$21^{101} - 12^{101} \equiv -1 - 1 = -2 \equiv 9 \pmod{11}.$$

**Conclusion.** Non : $21^{101} - 12^{101}$ n'est pas un multiple de $11$, il laisse le reste $9$ dans la division par $11$.

**Ce qu'il faut retenir.** Avant de se lancer dans un calcul de puissance gigantesque, on remplace chaque base par son reste. Ici les deux restes sont $-1$ et $1$, les deux valeurs les plus commodes qui soient : toute l'information tient alors dans la parité de l'exposant.

## Going further

1. Pour quels entiers naturels $n$ le nombre $21^{n} - 12^{n}$ est-il un multiple de $11$ ?
2. Le nombre $21^{100} + 12^{100}$ est-il un multiple de $11$ ?
3. Montrer que pour tous entiers $a$, $b$ et pour tout entier naturel $n$, le nombre $a^n - b^n$ est un multiple de $a - b$. Retrouver ainsi la réponse à la première question sans passer par les congruences.
