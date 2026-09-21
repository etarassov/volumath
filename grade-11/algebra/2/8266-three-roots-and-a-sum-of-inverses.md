---
id: "8266"
title: "Trois racines et une somme d'inverses"
grade: 11
theme: algebra
difficulty: 2
duration_min: 20
tags: [polynome, racines, relations coefficients racines, factorisation]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2019, La Muraille"
  reference: "PolycopieV1-1.pdf, chapitre IX « La Muraille », exercice 6 (niveau 1, proposé par Anatole Bouton). La Muraille ne publie pas de solutions."
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/PolycopieV1-1.pdf"
---

## Statement

On note $a$, $b$, $c$ les trois solutions réelles de l'équation

$$x^3 - 2x^2 - 5x + 6 = 0 .$$

Combien vaut

$$\frac{1}{ab} + \frac{1}{ac} + \frac{1}{bc} \ ?$$

## Hints

1. Première approche, la plus directe : cette équation a une racine évidente. Laquelle ?
2. Une fois cette racine trouvée, factorise par $(x - \text{racine})$ : il reste un trinôme du
   second degré.
3. Deuxième approche, sans calculer les racines : mets les trois fractions au même
   dénominateur.
4. Tu obtiens $\dfrac{a+b+c}{abc}$. Or la somme et le produit des racines se lisent
   directement sur les coefficients du polynôme.

## Solution

**Réponse : $-\dfrac{1}{3}$.**

**Première méthode : on calcule les racines.**

On essaie $x = 1$ :

$$1 - 2 - 5 + 6 = 0 . \ \checkmark$$

Donc $1$ est racine, et le polynôme se factorise par $x - 1$ :

$$x^3 - 2x^2 - 5x + 6 = (x-1)\left(x^2 - x - 6\right) .$$

Le trinôme $x^2 - x - 6$ a pour discriminant $1 + 24 = 25 = 5^2$, donc pour racines
$\dfrac{1 \pm 5}{2}$, c'est-à-dire $3$ et $-2$. Les trois solutions sont donc

$$a = 1, \qquad b = 3, \qquad c = -2 .$$

On calcule directement :

$$\frac{1}{ab} + \frac{1}{ac} + \frac{1}{bc} = \frac{1}{3} + \frac{1}{-2} + \frac{1}{-6} =
\frac{2}{6} - \frac{3}{6} - \frac{1}{6} = -\frac{2}{6} = -\frac{1}{3} .$$

**Deuxième méthode : sans calculer les racines.**

Mettons les trois fractions au même dénominateur $abc$ :

$$\frac{1}{ab} + \frac{1}{ac} + \frac{1}{bc} = \frac{c}{abc} + \frac{b}{abc} + \frac{a}{abc} =
\frac{a+b+c}{abc} .$$

Il suffit donc de connaître la somme et le produit des racines. Développons :

$$(x-a)(x-b)(x-c) = x^3 - (a+b+c)\,x^2 + (ab+ac+bc)\,x - abc .$$

En comparant avec $x^3 - 2x^2 - 5x + 6$, on lit

$$a+b+c = 2, \qquad ab+ac+bc = -5, \qquad abc = -6 .$$

D'où

$$\frac{1}{ab} + \frac{1}{ac} + \frac{1}{bc} = \frac{a+b+c}{abc} = \frac{2}{-6} =
-\frac{1}{3} .$$

$$\boxed{\frac{1}{ab} + \frac{1}{ac} + \frac{1}{bc} = -\frac{1}{3}}$$

**Laquelle des deux méthodes préférer ?** La première est plus courte ici, parce que les
racines sont entières. La seconde marche même quand elles sont horribles : c'est elle qu'il
faut retenir.

## Going further

1. Avec les mêmes $a$, $b$, $c$, combien vaut $\dfrac{1}{a} + \dfrac{1}{b} + \dfrac{1}{c}$ ?
2. Et $a^2 + b^2 + c^2$ ? (Partir de $(a+b+c)^2$.)
3. Reprendre la deuxième méthode pour $x^3 - 3x + 1 = 0$. Cette équation a bien trois racines
   réelles, mais aucune n'est rationnelle : la première méthode est donc hors de portée.
