---
id: "8536"
title: "La plus grande valeur de x − y"
grade: 11
theme: algebra
difficulty: 4
duration_min: 40
tags: [maximum, somme-et-produit, trinome, systeme]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2022, cours de Groupe A"
  reference: "Poly_Valbonne_2022-Corrigé-1.pdf, chapitre III, « Révisions » (Isaline) du Groupe A, exercice 10 (Olympiades turques junior 2021)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/09/Poly_Valbonne_2022-Corrigé-1.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly_Valbonne_2022-Corrigé-1.pdf"
---

## Statement

Soient $x$, $y$ et $z$ trois nombres réels vérifiant

$$x + y + z = 2 \qquad \text{et} \qquad xy + yz + zx = 1 .$$

Quelle est la plus grande valeur que peut prendre $x - y$ ?

## Hints

1. La quantité cherchée, $x - y$, ne fait pas intervenir $z$. Commence donc par éliminer $z$ entre les deux équations.
2. Pose $b = x + y$ et $a = x - y$. Exprime $xy$ à l'aide de $a$ et $b$, en te souvenant que $(x+y)^2 - (x-y)^2 = 4xy$.
3. Tu devrais obtenir une relation qui donne $a^2$ en fonction de $b$ seulement. C'est un trinôme du second degré en $b$.
4. Cherche le maximum de ce trinôme, puis n'oublie pas de vérifier que ce maximum est bien atteint par des nombres réels $x$, $y$, $z$.

## Solution

**On élimine $z$.** La première équation donne $z = 2 - x - y$. Reportons-la dans la
seconde :

$$xy + z(x + y) = 1, \qquad \text{donc} \qquad xy + (2 - x - y)(x + y) = 1 .$$

**On passe à la somme et à la différence.** Posons

$$b = x + y \qquad \text{et} \qquad a = x - y .$$

On sait que $(x+y)^2 - (x-y)^2 = 4xy$, donc

$$xy = \frac{b^2 - a^2}{4} .$$

L'équation devient

$$\frac{b^2 - a^2}{4} + (2 - b)\,b = 1 .$$

Multiplions par $4$ :

$$b^2 - a^2 + 8b - 4b^2 = 4 ,$$

c'est-à-dire

$$a^2 = -3b^2 + 8b - 4 .$$

**Le maximum du trinôme.** La fonction $b \mapsto -3b^2 + 8b - 4$ est un trinôme du second
degré dont le coefficient dominant $-3$ est négatif : il atteint son maximum au sommet, en

$$b = \frac{-8}{2 \times (-3)} = \frac{4}{3} .$$

La valeur du maximum est

$$-3 \times \frac{16}{9} + 8 \times \frac{4}{3} - 4 = -\frac{16}{3} + \frac{32}{3}
- \frac{12}{3} = \frac{4}{3} .$$

Donc

$$a^2 \leqslant \frac{4}{3}, \qquad \text{d'où} \qquad |x - y| \leqslant \frac{2}{\sqrt{3}}
= \frac{2\sqrt{3}}{3} .$$

**Le maximum est atteint.** Prenons $b = \dfrac{4}{3}$ et $a = \dfrac{2}{\sqrt{3}}$, c'est-à-dire

$$x = \frac{b + a}{2} = \frac{2}{3} + \frac{1}{\sqrt{3}}, \qquad
y = \frac{b - a}{2} = \frac{2}{3} - \frac{1}{\sqrt{3}}, \qquad
z = 2 - b = \frac{2}{3} .$$

Vérifions. D'une part $x + y + z = \dfrac{4}{3} + \dfrac{2}{3} = 2$. D'autre part,

$$xy = \left(\frac{2}{3}\right)^2 - \left(\frac{1}{\sqrt{3}}\right)^2 = \frac{4}{9}
- \frac{1}{3} = \frac{1}{9},$$

et $z(x+y) = \dfrac{2}{3} \times \dfrac{4}{3} = \dfrac{8}{9}$, donc
$xy + yz + zx = \dfrac{1}{9} + \dfrac{8}{9} = 1$. Les deux conditions sont vérifiées, et
$x - y = \dfrac{2}{\sqrt{3}}$.

**Conclusion.** La plus grande valeur possible de $x - y$ est

$$\frac{2\sqrt{3}}{3} \approx \text{1,1547} .$$
