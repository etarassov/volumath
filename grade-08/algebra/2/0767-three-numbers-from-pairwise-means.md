---
id: "0767"
title: "Trois nombres et leurs moyennes deux à deux"
grade: 8
theme: algebra
difficulty: 2
duration_min: 15
tags: [moyenne, equation, somme]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Club de maths, Lyon, niveau collège débutants"
  reference: "CalculLitteral.pdf, « Problèmes divers », exercice 20 (le même problème figure aussi dans Nombres.Introduction.pdf)"
  url: ""
  original_language: "fr"
  local_copy: "sources/originals/clublyon/CalculLitteral.pdf"
---

## Statement

On prend trois nombres. Si on les regarde deux par deux, on peut calculer trois moyennes :
la moyenne des deux premiers, celle du premier et du troisième, celle des deux derniers.

Ces trois moyennes valent $17$, $23$ et $25$.

Quels sont les trois nombres de départ ?

## Hints

1. Donne un nom à chacun des trois nombres, par exemple $a$, $b$ et $c$, et traduis chaque
   moyenne par une égalité.
2. La moyenne de deux nombres vaut $17$. Que vaut alors leur **somme** ?
3. Tu obtiens trois égalités. Additionne-les toutes les trois et regarde ce qui apparaît à
   gauche : chaque nombre y est compté deux fois.
4. Une fois que tu connais $a + b + c$, comment retrouver $c$ tout seul, sachant que tu
   connais déjà $a + b$ ?

## Solution

**Réponse : les trois nombres sont $15$, $19$ et $31$.**

**Étape 1. Traduire l'énoncé.**

Appelons $a$, $b$ et $c$ les trois nombres. Dire que la moyenne de $a$ et $b$ vaut $17$,
c'est dire que
$$\frac{a+b}{2} = 17, \qquad \text{donc} \qquad a + b = 34 .$$

De la même façon, les deux autres moyennes donnent
$$a + c = 46 \qquad \text{et} \qquad b + c = 50 .$$

**Étape 2. L'idée : additionner les trois égalités.**

Ajoutons les trois lignes membre à membre :
$$(a+b) + (a+c) + (b+c) = 34 + 46 + 50 = 130 .$$

À gauche, chacun des trois nombres apparaît exactement deux fois. Le membre de gauche vaut
donc $2a + 2b + 2c$, c'est-à-dire $2\,(a+b+c)$. On obtient
$$2\,(a+b+c) = 130, \qquad \text{donc} \qquad a + b + c = 65 .$$

C'est le point clé : **on connaît maintenant la somme des trois nombres**, alors que
l'énoncé ne la donnait pas.

**Étape 3. Retrouver chaque nombre.**

Pour isoler $c$, il suffit d'enlever $a + b$ de la somme totale :
$$c = (a+b+c) - (a+b) = 65 - 34 = 31 .$$

De la même manière :
$$b = 65 - 46 = 19, \qquad a = 65 - 50 = 15 .$$

**Étape 4. Vérification.**

$$\frac{15+19}{2} = \frac{34}{2} = 17, \qquad
  \frac{15+31}{2} = \frac{46}{2} = 23, \qquad
  \frac{19+31}{2} = \frac{50}{2} = 25 .$$

Les trois moyennes sont bien celles de l'énoncé.

**Conclusion.** Les trois nombres cherchés sont $15$, $19$ et $31$.

## Going further

Les trois moyennes étaient $17$, $23$ et $25$. Que se passe-t-il si on remplace ces trois
valeurs par $10$, $20$ et $30$ ? Et par $1$, $2$ et $10$ ?

*Réponse.* Avec $10$, $20$, $30$ on trouve $a+b+c = 60$ et les nombres $0$, $20$, $40$.
Avec $1$, $2$, $10$ on trouve $a+b+c = 13$ et les nombres $-7$, $9$, $11$ : rien n'oblige
les trois nombres à être positifs. La méthode, elle, ne change jamais : on additionne les
trois sommes, on divise par $2$, puis on retire chaque somme à tour de rôle.
