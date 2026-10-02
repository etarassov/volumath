---
id: "10617"
title: "Trois fractions avec a⁶ au dénominateur"
grade: 10
theme: algebra
difficulty: 5
duration_min: 60
tags: [inegalite, fractions, cas-d-egalite, factorisation]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2020-2021 n° 2 (algèbre)"
  reference: "2020-11_Sujet-envoi-2.pdf, Exercices Juniors, exercice 9 ; corrigé 2021-01_Corrige-envoi-2.pdf. Le corrigé contient des coquilles (c²a au lieu de c²b dans le troisième numérateur, b + c + 2b au lieu de b + c + 2a) ; il utilise aussi l'inégalité des moyennes à trois termes et celle de Cauchy-Schwarz, remplacées ici par des calculs de carrés."
  url: "https://maths-olympiques.fr/wp-content/uploads/2020/11/Sujet-envoi-2.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2020-11_Sujet-envoi-2.pdf"
---

## Statement

Soient $a$, $b$, $c$ trois réels strictement positifs tels que $a + b + c = 3$. Montrer que

$$\frac{abc + a^2 c}{a^6 + b^2 + 4ac + 2} + \frac{abc + b^2 a}{b^6 + c^2 + 4ab + 2} + \frac{abc + c^2 b}{c^6 + a^2 + 4bc + 2} \leqslant \frac{3}{4}$$

## Hints

1. Regarde d'abord le cas $a = b = c = 1$. Que vaut chaque fraction ?
2. Pour majorer une fraction à numérateur positif, on peut **minorer** son dénominateur. Commence par $a^6 + 2$ : montre que $a^6 + 2 \geqslant 3a^2$ en factorisant $t^3 - 3t + 2$, avec $t = a^2$.
3. Ensuite, $a^2 + b^2 \geqslant 2ab$ permet d'écrire le premier dénominateur au-dessus de $2a(a + b + 2c)$. Le numérateur, lui, vaut $ac(a + b)$.
4. Tu dois arriver à montrer que $\frac{c(a + b)}{a + b + 2c} + \cdots \leqslant \frac{3}{2}$. Écris $\frac{c(a + b)}{a + b + 2c} = c - \frac{2c^2}{a + b + 2c}$.
5. Pour minorer $\frac{x^2}{y}$ avec $y > 0$, développe $\frac{(4x - y)^2}{16y} \geqslant 0$.

## Solution

On note $F_1$, $F_2$, $F_3$ les trois fractions. Si $a = b = c = 1$, chacune vaut $\frac{1 + 1}{1 + 1 + 4 + 2} = \frac{1}{4}$, et la somme vaut exactement $\frac{3}{4}$. Toutes les inégalités ci-dessous devront donc être des égalités en ce point, ce qui guide les choix.

**Étape 1. Trois outils.**

- **(A)** Pour tout réel $t$, $t^3 - 3t + 2 = (t - 1)^2 (t + 2)$. On le vérifie en développant : $(t^2 - 2t + 1)(t + 2) = t^3 - 3t + 2$. Pour $t = a^2 \geqslant 0$, le membre de droite est positif, donc $a^6 + 2 \geqslant 3a^2$.
- **(B)** Pour tous réels $u$ et $v$, $(u - v)^2 \geqslant 0$ donne $u^2 + v^2 \geqslant 2uv$.
- **(C)** Pour tout réel $x$ et tout réel $y > 0$, $\frac{x^2}{y} \geqslant \frac{x}{2} - \frac{y}{16}$. En effet, la différence vaut $\frac{16x^2 - 8xy + y^2}{16y} = \frac{(4x - y)^2}{16y} \geqslant 0$.

**Étape 2. On minore les dénominateurs.**

Avec (A) puis (B), le premier dénominateur vérifie

$$a^6 + b^2 + 4ac + 2 \geqslant 3a^2 + b^2 + 4ac = 2a^2 + (a^2 + b^2) + 4ac \geqslant 2a^2 + 2ab + 4ac = 2a(a + b + 2c)$$

Le numérateur vaut $abc + a^2 c = ac(a + b)$, qui est positif. Un dénominateur plus petit donne une fraction plus grande, donc

$$F_1 \leqslant \frac{ac(a + b)}{2a(a + b + 2c)} = \frac{1}{2} \cdot \frac{c(a + b)}{a + b + 2c}$$

De la même façon, $abc + b^2 a = ab(b + c)$ et $b^6 + c^2 + 4ab + 2 \geqslant 2b(b + c + 2a)$, puis $abc + c^2 b = bc(c + a)$ et $c^6 + a^2 + 4bc + 2 \geqslant 2c(c + a + 2b)$. Donc

$$F_2 \leqslant \frac{1}{2} \cdot \frac{a(b + c)}{b + c + 2a} \qquad \text{et} \qquad F_3 \leqslant \frac{1}{2} \cdot \frac{b(c + a)}{c + a + 2b}$$

**Étape 3. Ce qu'il reste à montrer.**

Notons $T$ la somme des trois fractions de droite, sans les $\frac{1}{2}$. Il suffit de montrer que $T \leqslant \frac{3}{2}$. Or

$$\frac{c(a + b)}{a + b + 2c} = \frac{c(a + b + 2c) - 2c^2}{a + b + 2c} = c - \frac{2c^2}{a + b + 2c}$$

et de même pour les deux autres. En additionnant, et comme $a + b + c = 3$ :

$$T = 3 - 2U \qquad \text{avec} \qquad U = \frac{c^2}{a + b + 2c} + \frac{a^2}{b + c + 2a} + \frac{b^2}{c + a + 2b}$$

L'inégalité $T \leqslant \frac{3}{2}$ revient donc à $U \geqslant \frac{3}{4}$.

**Étape 4. On minore $U$.**

Appliquons (C) à chacune des trois fractions de $U$ :

$$U \geqslant \frac{c + a + b}{2} - \frac{(a + b + 2c) + (b + c + 2a) + (c + a + 2b)}{16} = \frac{a + b + c}{2} - \frac{4(a + b + c)}{16} = \frac{a + b + c}{4}$$

Comme $a + b + c = 3$, on obtient $U \geqslant \frac{3}{4}$.

**Étape 5. On remonte.**

$U \geqslant \frac{3}{4}$ donne $T = 3 - 2U \leqslant \frac{3}{2}$, puis, par l'étape 2,

$$F_1 + F_2 + F_3 \leqslant \frac{T}{2} \leqslant \frac{3}{4}$$

**Conclusion : l'inégalité est démontrée, et elle est une égalité pour $a = b = c = 1$.**
