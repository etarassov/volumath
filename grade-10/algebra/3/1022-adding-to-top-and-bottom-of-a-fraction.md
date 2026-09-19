---
id: "1022"
title: "Ajouter en haut et en bas d'une fraction"
grade: 10
theme: algebra
difficulty: 3
duration_min: 30
tags: [fractions, inegalite, produit en croix, equation, contre-exemple]
adapted_from: null
see_also: ["0501"]
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Advanced, Did Dream cheat?"
  reference: "Handout-4807-4988.pdf, exercices 1 et 3"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-4807-4988.pdf"
---

## Statement

Dans tout l'exercice, $p$ et $q$ sont des entiers strictement positifs.

1. Trouver la fraction $\dfrac{p}{q}$, irréductible et comprise strictement entre $0$ et $1$, qui **ne change pas de valeur** lorsqu'on ajoute $30$ au numérateur et $40$ au dénominateur.
2. La valeur d'une fraction $\dfrac{p}{q}$ peut-elle **augmenter** lorsqu'on ajoute $1$ au numérateur et $100$ au dénominateur ? Autrement dit, peut-on avoir
$$\frac{p}{q} < \frac{p+1}{q+100} \;?$$
Si oui, dire exactement pour quelles fractions cela se produit, et donner un exemple.

## Hints

1. Deux fractions à dénominateurs positifs sont égales exactement quand leurs produits en croix le sont.
2. Pour la question 1, écrivez l'égalité $\frac{p}{q} = \frac{p+30}{q+40}$, faites le produit en croix et développez. Beaucoup de termes se simplifient.
3. Pour la question 2, l'intuition dit souvent « non, ajouter beaucoup plus en bas qu'en haut fait forcément diminuer ». Testez sur $\frac{1}{2}$, puis sur $\frac{1}{1000}$.
4. L'inégalité entre deux fractions à dénominateurs strictement positifs se traite aussi par produit en croix, dans le même sens.

## Solution

### Question 1

On cherche $\dfrac{p}{q} = \dfrac{p+30}{q+40}$, avec $q > 0$ et $q + 40 > 0$. Les deux dénominateurs étant strictement positifs, on peut faire le produit en croix :
$$p\,(q+40) = q\,(p+30),$$
$$pq + 40p = pq + 30q,$$
$$40p = 30q,$$
$$\frac{p}{q} = \frac{30}{40} = \frac{3}{4}.$$

La fraction cherchée est donc $\dfrac{3}{4}$ : c'est bien une fraction irréductible strictement comprise entre $0$ et $1$, et c'est la seule possible.

**Vérification.**
$$\frac{3 + 30}{4 + 40} = \frac{33}{44} = \frac{3}{4}. \quad \checkmark$$

**Ce qui se passe ici.** Ajouter $30$ en haut et $40$ en bas, c'est ajouter la fraction « $\frac{30}{40}$ » sous forme de tranche. La valeur ne change que si cette tranche a déjà la valeur de la fraction de départ.

### Question 2

Oui, c'est possible, et il est facile de voir quand.

Comme $q > 0$ et $q + 100 > 0$, l'inégalité
$$\frac{p}{q} < \frac{p+1}{q+100}$$
équivaut, par produit en croix, à
$$p\,(q + 100) < q\,(p+1),$$
$$pq + 100p < pq + q,$$
$$100\,p < q.$$

**Conclusion.** La fraction augmente exactement lorsque $q > 100\,p$, c'est-à-dire lorsque
$$\frac{p}{q} < \frac{1}{100}.$$

**Un exemple.** Prenons $\dfrac{1}{1000}$, qui est bien inférieure à $\dfrac{1}{100}$ :
$$\frac{1}{1000} = \text{0,001} \qquad \text{et} \qquad \frac{1 + 1}{1000 + 100} = \frac{2}{1100} \approx \text{0,00182}.$$
La valeur a presque doublé.

**Un contre-exemple.** Avec $\dfrac{1}{2}$, qui est bien supérieure à $\dfrac{1}{100}$ :
$$\frac{1}{2} = \text{0,5} \qquad \text{et} \qquad \frac{2}{102} \approx \text{0,0196}.$$
La valeur s'effondre, comme le dit l'intuition.

**Pourquoi l'intuition se trompe.** Ajouter $1$ en haut et $100$ en bas revient à faire la « moyenne » de la fraction de départ avec la fraction $\frac{1}{100}$. Le résultat se place toujours entre les deux. Si la fraction de départ est plus petite que $\frac{1}{100}$, elle remonte ; si elle est plus grande, elle descend. Ce qui compte n'est donc pas de comparer $1$ et $100$, mais de comparer $\frac{1}{100}$ à la fraction de départ.

## Going further

1. Montrer, plus généralement, que pour $a$, $b$, $p$, $q$ strictement positifs, la fraction $\dfrac{p+a}{q+b}$ est toujours comprise entre $\dfrac{p}{q}$ et $\dfrac{a}{b}$.
2. Quelle fraction irréductible strictement comprise entre $0$ et $1$ ne change pas quand on ajoute $2\,024$ au numérateur et $2\,026$ au dénominateur ?
3. Peut-on avoir $\dfrac{p}{q} < \dfrac{p+1}{q+1000000}$ ? Pour quelles fractions ?
4. Trouver deux fractions irréductibles, de dénominateurs **différents** tous deux supérieurs à $100$, dont la somme a un dénominateur inférieur à $100$ une fois réduite. *(C'est possible : chercher un exemple.)*
