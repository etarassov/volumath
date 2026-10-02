---
id: "12889"
title: "a + b + c = 0, abc = −16 et une plus petite valeur"
grade: 10
theme: algebra
difficulty: 4
duration_min: 45
tags: [inegalite, minimum, somme-et-produit, identites-remarquables, signe, cas-d-egalite]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, test de sélection du 2 avril 2025"
  reference: "2025-10_Sujet-Test-4-2024-2025.pdf, test junior, exercice 3 ; corrigé 2025-10_Corrige-Test-4-2024-2025.pdf (même départ que la solution alternative n° 2 : on pose s = a + b et p = ab ; on montre ensuite W = (s² − p)²/8, ce qui évite l'inégalité des moyennes)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2025/10/Sujet-Test-4-2024-2025.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2025-10_Sujet-Test-4-2024-2025.pdf"
---

## Statement

Soient $a$, $b$ et $c$ des nombres réels tels que $a + b + c = 0$ et $abc = -16$. Déterminer la plus petite valeur que peut prendre l'expression

$$W = \frac{a^2 + b^2}{c} + \frac{b^2 + c^2}{a} + \frac{c^2 + a^2}{b}.$$

## Hints

1. Cherchez trois entiers $a$, $b$, $c$ qui vérifient les deux conditions, et calculez $W$.
2. Montrez qu'exactement un des trois nombres est négatif. On peut supposer que c'est $c$.
3. Posez $s = a + b$ et $p = ab$. Écrivez $c$, la condition $abc = -16$, puis $W$, à l'aide de $s$ et de $p$ seulement.
4. Avec $(a - b)^2 \geq 0$, montrez que $s \geq 4$.

## Solution

La réponse : **la plus petite valeur de $W$ est $18$.**

### Un seul des trois nombres est négatif

Comme $abc = -16$, aucun des trois nombres n'est nul. Leur produit est négatif, donc un ou trois d'entre eux sont négatifs. S'ils étaient tous les trois négatifs, leur somme serait strictement négative, alors qu'elle vaut $0$. Donc exactement un des trois nombres est strictement négatif, et les deux autres sont strictement positifs.

L'expression $W$ ne change pas quand on échange les rôles de $a$, $b$ et $c$ : par exemple, en échangeant $a$ et $b$, les trois fractions sont simplement écrites dans un autre ordre. On peut donc supposer que $c < 0$ et que $a > 0$, $b > 0$.

### On passe à la somme et au produit

On pose $s = a + b$ et $p = ab$, qui sont strictement positifs. La condition $a + b + c = 0$ donne $c = -s$. La condition $abc = -16$ donne $p \times (-s) = -16$, c'est-à-dire

$$ps = 16.$$

On rappelle deux identités :

$$a^2 + b^2 = (a + b)^2 - 2ab = s^2 - 2p, \qquad a^3 + b^3 = (a + b)^3 - 3ab(a + b) = s^3 - 3ps.$$

La seconde vient du développement $(a + b)^3 = a^3 + 3a^2 b + 3ab^2 + b^3 = a^3 + b^3 + 3ab(a + b)$.

### W en fonction de s et de p

**La première fraction.** Comme $c = -s$,

$$\frac{a^2 + b^2}{c} = -\frac{s^2 - 2p}{s} = -s + \frac{2p}{s}.$$

**Les deux autres.** Comme $c^2 = s^2$, on les met au même dénominateur $ab = p$ :

$$\frac{b^2 + s^2}{a} + \frac{a^2 + s^2}{b} = \frac{b^3 + s^2 b + a^3 + s^2 a}{ab} = \frac{(a^3 + b^3) + s^2 (a + b)}{p} = \frac{s^3 - 3ps + s^3}{p} = \frac{2s^3}{p} - 3s.$$

**Le total.** En additionnant,

$$W = \frac{2s^3}{p} + \frac{2p}{s} - 4s.$$

On multiplie par $ps = 16$ :

$$16\,W = 2s^4 + 2p^2 - 4ps^2 = 2\left(s^4 - 2ps^2 + p^2\right) = 2\left(s^2 - p\right)^2.$$

Donc

$$W = \frac{(s^2 - p)^2}{8}.$$

### Une minoration

Comme $(a - b)^2 \geq 0$, on a $a^2 + b^2 \geq 2ab$, donc $s^2 = a^2 + 2ab + b^2 \geq 4ab = 4p$. En multipliant par $s > 0$ :

$$s^3 \geq 4ps = 64.$$

Si l'on avait $s < 4$, on aurait $s^3 < 64$. Donc $s \geq 4$, puis $p = 16/s \leq 4$. Par conséquent

$$s^2 - p \geq 16 - 4 = 12 > 0, \qquad \text{et donc} \qquad W = \frac{(s^2 - p)^2}{8} \geq \frac{12^2}{8} = \frac{144}{8} = 18.$$

### La valeur 18 est atteinte

Pour $a = b = 2$ et $c = -4$, on a bien $a + b + c = 0$ et $abc = -16$, et

$$W = \frac{4 + 4}{-4} + \frac{4 + 16}{2} + \frac{16 + 4}{2} = -2 + 10 + 10 = 18.$$

### Conclusion

**La plus petite valeur de $W$ est $18$, atteinte pour $(a, b, c) = (2, 2, -4)$ et les triplets obtenus en permutant ces nombres.**

## Going further

1. Montrez que $a^2 + b^2 + c^2 = 2(s^2 - p)$, puis que $W = (a^2 + b^2 + c^2)^2 / 32$.
2. Montrez directement, sans supposer $c < 0$, que $(a^2 + b^2)/c = c + 32/c^2$, puis que $W = 32\,(1/a^2 + 1/b^2 + 1/c^2)$.
3. Montrez que la plus petite valeur n'est atteinte que pour $(2, 2, -4)$ et ses permutations.
