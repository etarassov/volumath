---
id: "2421"
title: "La moyenne géométrique de quatre nombres, puis de trois"
grade: 12
theme: algebra
difficulty: 4
duration_min: 45
tags: [inegalite, moyenne-geometrique, racine-n-ieme, astuce, demonstration]
adapted_from: null
see_also: ["2420"]
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Advanced Circle, The AM-GM Inequality"
  reference: "Handout-434-535.pdf, exercices 6, 8a et 7b (indications dans Handout-435-535.pdf)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-434-535.pdf"
---

## Statement

Pour des réels positifs $a_1, a_2, \ldots, a_n$, on appelle *moyenne arithmétique* le nombre $\dfrac{a_1 + \cdots + a_n}{n}$ et *moyenne géométrique* le nombre $\sqrt[n]{a_1 \cdots a_n}$.

On admet le cas $n = 2$ :

$$(\ast) \qquad \frac{a+b}{2} \ \ge \ \sqrt{ab} \qquad \text{pour tous } a, b \ge 0 .$$

1. En n'utilisant que $(\ast)$, montrer que pour tous réels $a, b, c, d \ge 0$

   $$\frac{a+b+c+d}{4} \ \ge \ \sqrt[4]{abcd} .$$

2. En déduire que pour tous réels $a, b, c \ge 0$

   $$\frac{a+b+c}{3} \ \ge \ \sqrt[3]{abc} .$$

   *Indication : appliquer la question 1 aux quatre nombres $a$, $b$, $c$ et $g$, où $g = \sqrt[3]{abc}$.*

3. En déduire que pour tous réels $a, b, c, d > 0$

   $$(a+b+c+d)\left(\frac{1}{a} + \frac{1}{b} + \frac{1}{c} + \frac{1}{d}\right) \ \ge \ 16 .$$

## Hints

1. Question 1 : écris $\dfrac{a+b+c+d}{4}$ comme la moyenne des deux nombres $\dfrac{a+b}{2}$ et $\dfrac{c+d}{2}$, puis applique $(\ast)$ trois fois.
2. Le passage de quatre à trois est l'astuce de l'exercice : on ajoute un quatrième nombre choisi exprès pour qu'il soit déjà égal à la moyenne géométrique des trois autres.
3. Question 2 : pose $g = \sqrt[3]{abc}$ et calcule $abc\,g$ en fonction de $g$ seul. Que vaut $\sqrt[4]{abcg}$ ?
4. Question 3 : applique la question 1 deux fois, une fois aux quatre nombres et une fois à leurs inverses, puis multiplie.

## Solution

### 1. Le cas de quatre nombres

Soient $a, b, c, d \ge 0$. Écrivons la moyenne des quatre comme la moyenne de deux moyennes :

$$\frac{a+b+c+d}{4} = \frac{1}{2}\left(\frac{a+b}{2} + \frac{c+d}{2}\right) .$$

Appliquons $(\ast)$ aux deux nombres positifs $\dfrac{a+b}{2}$ et $\dfrac{c+d}{2}$ :

$$\frac{1}{2}\left(\frac{a+b}{2} + \frac{c+d}{2}\right) \ \ge \ \sqrt{\frac{a+b}{2}\cdot\frac{c+d}{2}} .$$

Appliquons maintenant $(\ast)$ à $a$ et $b$, puis à $c$ et $d$ :

$$\frac{a+b}{2} \ge \sqrt{ab}, \qquad \frac{c+d}{2} \ge \sqrt{cd} .$$

Tous ces nombres sont positifs, donc on peut multiplier ces deux inégalités, puis prendre la racine carrée, qui est croissante :

$$\sqrt{\frac{a+b}{2}\cdot\frac{c+d}{2}} \ \ge \ \sqrt{\sqrt{ab}\cdot\sqrt{cd}} = \sqrt{\sqrt{abcd}} = \sqrt[4]{abcd} .$$

En enchaînant les deux inégalités :

$$\frac{a+b+c+d}{4} \ \ge \ \sqrt[4]{abcd} .$$

### 2. Le cas de trois nombres

C'est le point délicat : passer de quatre à trois, alors que la démarche naturelle va plutôt de deux à quatre puis à huit.

**L'astuce.** Soient $a, b, c \ge 0$ et posons

$$g = \sqrt[3]{abc} .$$

Appliquons la question 1 aux **quatre** nombres $a$, $b$, $c$ et $g$ :

$$\frac{a+b+c+g}{4} \ \ge \ \sqrt[4]{abc\,g} .$$

Or $abc = g^{3}$, donc $abc\,g = g^{3}\cdot g = g^{4}$ et, $g$ étant positif,

$$\sqrt[4]{abc\,g} = \sqrt[4]{g^{4}} = g .$$

L'inégalité devient

$$\frac{a+b+c+g}{4} \ \ge \ g ,$$

c'est-à-dire $a+b+c+g \ge 4g$, puis

$$a+b+c \ \ge \ 3g = 3\sqrt[3]{abc}, \qquad \text{soit} \qquad \frac{a+b+c}{3} \ \ge \ \sqrt[3]{abc} .$$

Le quatrième nombre a servi de béquille, puis a disparu.

### 3. La somme fois la somme des inverses

Soient $a, b, c, d > 0$. Appliquons la question 1 deux fois.

*Aux quatre nombres :*

$$a+b+c+d \ \ge \ 4\sqrt[4]{abcd} .$$

*À leurs inverses, qui sont eux aussi strictement positifs :*

$$\frac{1}{a} + \frac{1}{b} + \frac{1}{c} + \frac{1}{d} \ \ge \ 4\sqrt[4]{\frac{1}{abcd}} = \frac{4}{\sqrt[4]{abcd}} .$$

Les deux membres de gauche sont strictement positifs, on peut donc multiplier les deux inégalités :

$$(a+b+c+d)\left(\frac{1}{a}+\frac{1}{b}+\frac{1}{c}+\frac{1}{d}\right) \ \ge \ 4\sqrt[4]{abcd} \times \frac{4}{\sqrt[4]{abcd}} = 16 .$$

L'égalité a lieu lorsque $a = b = c = d$, et l'on vérifie qu'alors le produit vaut bien $4a \times \dfrac{4}{a} = 16$.

## Going further

1. En reprenant l'idée de la question 1, démontrer l'inégalité pour $n = 8$, puis pour $n = 16$. Quelle famille d'entiers $n$ cette méthode atteint-elle ?
2. Adapter l'astuce de la question 2 pour passer de $n$ à $n-1$. En déduire que l'inégalité est vraie pour **tout** entier $n \ge 1$.
3. Montrer que $a^{4} + b^{4} + 8 \ge 8ab$ pour tous réels $a$ et $b$. *(Appliquer la question 1 aux nombres $a^4$, $b^4$, $4$ et $4$, en commençant par traiter le cas $ab \le 0$.)*
