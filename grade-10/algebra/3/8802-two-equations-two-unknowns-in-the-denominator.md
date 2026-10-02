---
id: "8802"
title: "Deux équations, les inconnues au dénominateur"
grade: 10
theme: algebra
difficulty: 3
duration_min: 25
tags: [systeme, identites-remarquables, analyse-synthese, fractions]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, Coupe Animath de printemps 2025 (dans le polycopié du stage olympique de Valbonne 2025)"
  reference: "Poly-2025-compresse.pdf, chapitre II « Coupe Animath de printemps 2025 », exercice 3 (collégiens), p. 19"
  url: "https://maths-olympiques.fr/wp-content/uploads/2025/09/Poly-2025-compresse.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly-2025-compresse.pdf"
---

## Statement

Trouver tous les couples de nombres réels $a$ et $b$ tels que $a + b \neq 0$, $3a - b \neq 0$ et
$$a = \frac{2}{a+b} \qquad \text{et} \qquad b = \frac{2}{3a-b}.$$

## Hints

1. Les deux conditions $a+b \neq 0$ et $3a-b \neq 0$ sont là pour que les fractions existent. Une fois cela acquis, on peut multiplier chaque égalité par son dénominateur.
2. Tu obtiens deux produits qui valent tous les deux $2$. Deux quantités égales à $2$ sont égales entre elles.
3. Développe l'égalité obtenue et range tout du même côté. Une identité remarquable apparaît.
4. Une fois trouvé le lien entre $a$ et $b$, reviens à la première équation pour trouver leurs valeurs, puis vérifie que les couples trouvés conviennent vraiment.

## Solution

On procède en deux temps, ce qu'on appelle une **analyse** puis une **synthèse** : d'abord on suppose qu'un couple convient et on voit ce que cela impose ; ensuite on vérifie que les candidats trouvés conviennent bien.

### Analyse

Soit $(a, b)$ un couple qui convient. Comme $a+b \neq 0$ et $3a-b \neq 0$, on peut multiplier chaque équation par son dénominateur :
$$a(a+b) = 2 \qquad \text{et} \qquad b(3a-b) = 2 .$$

Les deux membres de gauche valent tous les deux $2$, donc ils sont égaux :
$$a(a+b) = b(3a-b).$$

Développons :
$$a^2 + ab = 3ab - b^2 ,$$
puis rangeons tout à gauche :
$$a^2 - 2ab + b^2 = 0 .$$

On reconnaît une identité remarquable :
$$(a - b)^2 = 0 ,$$
ce qui donne $a - b = 0$, c'est-à-dire
$$a = b .$$

Reportons dans la première équation $a(a+b) = 2$ :
$$a(a + a) = 2, \qquad \text{donc} \qquad 2a^2 = 2, \qquad \text{donc} \qquad a^2 = 1 .$$

Il y a donc deux candidats : $a = b = 1$ et $a = b = -1$.

### Synthèse

Il reste à vérifier que ces deux couples conviennent, y compris les conditions sur les dénominateurs.

**Pour $a = b = 1$ :** on a $a + b = 2 \neq 0$ et $3a - b = 3 - 1 = 2 \neq 0$. Ensuite
$$\frac{2}{a+b} = \frac{2}{2} = 1 = a \qquad \text{et} \qquad \frac{2}{3a-b} = \frac{2}{2} = 1 = b .$$
Ce couple convient.

**Pour $a = b = -1$ :** on a $a + b = -2 \neq 0$ et $3a - b = -3 + 1 = -2 \neq 0$. Ensuite
$$\frac{2}{a+b} = \frac{2}{-2} = -1 = a \qquad \text{et} \qquad \frac{2}{3a-b} = \frac{2}{-2} = -1 = b .$$
Ce couple convient aussi.

**Conclusion.** Les seules solutions sont
$$(a, b) = (1, 1) \qquad \text{et} \qquad (a, b) = (-1, -1).$$

### Une autre route pour l'analyse

On peut aussi tirer $b$ de la première équation : $a(a+b) = 2$ donne $b = \dfrac{2}{a} - a$ (on a bien $a \neq 0$, sinon $a(a+b) = 0 \neq 2$). En remplaçant dans la seconde équation et en simplifiant, on arrive à
$$a^4 - 2a^2 + 1 = 0, \qquad \text{c'est-à-dire} \qquad (a^2-1)^2 = 0 ,$$
donc $a^2 = 1$ de nouveau. Le chemin est plus calculatoire, mais il mène au même endroit.

## Going further

Même question avec le système $a = \dfrac{3}{a+b}$ et $b = \dfrac{3}{5a - b}$. La méthode de l'analyse fonctionne-t-elle encore ?
