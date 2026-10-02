---
id: "10601"
title: "Un système cyclique de trois équations"
grade: 10
theme: algebra
difficulty: 4
duration_min: 40
tags: [systeme, factorisation, disjonction-de-cas, signe]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2019-2020 n° 2 (algèbre)"
  reference: "2019-11_sujet-envoi-2-1.pdf, Exercices Juniors, exercice 5 ; corrigé 2020-01_corrige-commente-envoi-2.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2019/11/sujet-envoi-2-1.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2019-11_sujet-envoi-2-1.pdf"
---

## Statement

Trouver tous les triplets de nombres réels $(a, b, c)$ qui vérifient les trois égalités

$$a(b^2 + c) = c(c + ab)$$

$$b(c^2 + a) = a(a + bc)$$

$$c(a^2 + b) = b(b + ac)$$

## Hints

1. Commence par chercher des solutions simples. Que se passe-t-il si $a = b = c$ ?
2. Développe la première égalité et regroupe les termes pour l'écrire sous la forme $ab(b - c) = c(c - a)$. Fais de même avec les deux autres.
3. Multiplie les trois égalités obtenues membre à membre. Tu obtiens un produit égal à zéro : quels cas cela donne-t-il ?
4. Dans le cas $abc = 1$, divise chaque égalité par un produit bien choisi pour obtenir $b - c = c^2(c - a)$. Que peux-tu dire alors des signes de $a - b$, $b - c$ et $c - a$ ?

## Solution

**Étape 1. Une remarque sur la forme du système.**

Si on remplace $a$ par $b$, $b$ par $c$ et $c$ par $a$, la première égalité devient la deuxième, la deuxième devient la troisième, et la troisième devient la première. On dit que le système est **cyclique**. Cela permettra de ne traiter qu'un cas sur trois quand les trois cas se ressemblent.

Attention : le système n'est pas symétrique. Échanger seulement $a$ et $b$ le change complètement. On n'a donc pas le droit de supposer, par exemple, $a \geqslant b \geqslant c$.

**Étape 2. Réécrire les égalités.**

Développons la première égalité : $ab^2 + ac = c^2 + abc$. En regroupant, $ab^2 - abc = c^2 - ac$, c'est-à-dire

$$ab(b - c) = c(c - a)$$

De la même façon, les deux autres égalités deviennent

$$bc(c - a) = a(a - b) \qquad \text{et} \qquad ca(a - b) = b(b - c)$$

**Étape 3. Multiplier les trois égalités.**

En multipliant membre à membre, le membre de gauche vaut $ab \cdot bc \cdot ca \cdot (b - c)(c - a)(a - b) = (abc)^2 (a - b)(b - c)(c - a)$, et le membre de droite vaut $abc\,(a - b)(b - c)(c - a)$. Donc

$$abc\,(abc - 1)\,(a - b)(b - c)(c - a) = 0$$

Un produit est nul quand l'un de ses facteurs est nul. Il y a donc trois cas : $abc = 0$, ou deux des trois nombres sont égaux, ou $abc = 1$.

**Étape 4. Le cas $abc = 0$.**

L'un des trois nombres est nul. Grâce à l'étape 1, on peut supposer que c'est $a$. La première égalité réécrite, $ab(b - c) = c(c - a)$, donne $0 = c^2$, donc $c = 0$. La troisième, $ca(a - b) = b(b - c)$, donne alors $0 = b^2$, donc $b = 0$. On trouve seulement $(0, 0, 0)$.

**Étape 5. Le cas où deux nombres sont égaux.**

Toujours grâce à l'étape 1, on peut supposer $a = b$. La deuxième égalité réécrite donne $bc(c - a) = a(a - b) = 0$. Donc $b = 0$, ou $c = 0$, ou $c = a$.

- Si $b = 0$ ou $c = 0$, on est dans le cas de l'étape 4, et $a = b = c = 0$.
- Sinon $c = a$, et donc $a = b = c$.

**Étape 6. Le cas $abc = 1$.**

Les trois nombres sont alors non nuls, et $ab = \frac{1}{c}$. La première égalité réécrite devient $\frac{b - c}{c} = c(c - a)$, soit

$$b - c = c^2 (c - a)$$

De même, $c - a = a^2(a - b)$ et $a - b = b^2(b - c)$.

Comme $a^2$, $b^2$ et $c^2$ sont strictement positifs, ces égalités disent que $b - c$ a le même signe que $c - a$, que $c - a$ a le même signe que $a - b$, et que $a - b$ a le même signe que $b - c$. Les trois nombres $a - b$, $b - c$ et $c - a$ ont donc tous le même signe.

Or leur somme vaut $(a - b) + (b - c) + (c - a) = 0$. Trois nombres de même signe dont la somme est nulle sont tous nuls. Donc $a = b = c$.

**Étape 7. Vérification.**

Dans tous les cas, on a trouvé $a = b = c$. Réciproquement, si $a = b = c = t$ avec $t$ réel quelconque, chacune des trois égalités s'écrit $t(t^2 + t) = t(t + t^2)$, ce qui est vrai.

**Conclusion : les solutions sont exactement les triplets $(t, t, t)$, où $t$ est un nombre réel quelconque.**
