---
id: "0865"
title: "Une somme de 671 fractions"
grade: 9
theme: algebra
difficulty: 4
duration_min: 35
tags: [fractions, somme telescopique, calcul litteral, suites]
adapted_from: null
see_also: ["0615"]
created: 2026-09-19
source:
  name: "Club de mathématiques de Lyon, feuille « Calcul », niveau collège - débutants, 16 avril 2024"
  reference: "Nombres.Introduction.pdf, exercice 49, section « Fractions »"
  url: ""
  original_language: "fr"
  local_copy: "sources/originals/clublyon/Nombres.Introduction.pdf"
---

## Statement

Soient $n$ et $k$ des entiers naturels non nuls.

**a)** Démontre que

$$\frac{1}{n(n+k)} = \frac{1}{k}\left( \frac{1}{n} - \frac{1}{n+k} \right).$$

**b)** Calcule

$$\frac{1}{1 \times 4} + \frac{1}{4 \times 7} + \frac{1}{7 \times 10} + \cdots + \frac{1}{2011 \times 2014}.$$

## Hints

1. Pour la question a), pars du membre de droite : réduis $\dfrac{1}{n} - \dfrac{1}{n+k}$ au même dénominateur et simplifie le numérateur.
2. Pour la question b), repère d'abord la règle de fabrication des termes. Dans chaque dénominateur, de combien les deux facteurs diffèrent-ils ? Et quel lien y a-t-il entre le second facteur d'un terme et le premier facteur du terme suivant ?
3. La question a) sert à transformer chaque terme de la somme. Avec quelle valeur de $k$ faut-il l'appliquer ici ?
4. Écris les trois ou quatre premiers termes transformés, puis additionne-les sans rien calculer. Que remarques-tu ?
5. Presque tout se détruit deux à deux. Il ne reste que le tout premier morceau et le tout dernier.

## Solution

### a) L'identité

On part du membre de droite. On réduit la différence au même dénominateur :

$$\frac{1}{n} - \frac{1}{n+k} = \frac{n+k}{n(n+k)} - \frac{n}{n(n+k)} = \frac{(n+k) - n}{n(n+k)} = \frac{k}{n(n+k)}.$$

En multipliant par $\dfrac{1}{k}$ (ce qui est licite car $k \neq 0$) :

$$\frac{1}{k}\left( \frac{1}{n} - \frac{1}{n+k} \right) = \frac{1}{k} \times \frac{k}{n(n+k)} = \frac{1}{n(n+k)}.$$

C'est bien l'égalité demandée.

### b) La somme

**Comment la somme est fabriquée.** Les dénominateurs sont

$$1 \times 4, \quad 4 \times 7, \quad 7 \times 10, \quad \ldots, \quad 2011 \times 2014.$$

Dans chacun, les deux facteurs diffèrent de $3$, et le second facteur d'un terme est le premier
facteur du terme suivant. Les premiers facteurs sont donc

$$1, \ 4, \ 7, \ 10, \ \ldots, \ 2011,$$

c'est-à-dire les nombres de la forme $n = 1 + 3m$. Comme $2011 = 1 + 3 \times 670$, la somme compte
$670 + 1 = 671$ termes.

**On transforme chaque terme.** On applique la question a) avec $k = 3$ :

$$\frac{1}{n(n+3)} = \frac{1}{3}\left( \frac{1}{n} - \frac{1}{n+3} \right).$$

La somme s'écrit donc

$$S = \frac{1}{3}\left[ \left(\frac{1}{1} - \frac{1}{4}\right) + \left(\frac{1}{4} - \frac{1}{7}\right) + \left(\frac{1}{7} - \frac{1}{10}\right) + \cdots + \left(\frac{1}{2011} - \frac{1}{2014}\right) \right].$$

**Tout se simplifie.** Dans le crochet, chaque fraction apparaît deux fois, une fois avec le signe
$-$ puis une fois avec le signe $+$ dans la parenthèse suivante : $-\frac{1}{4}$ et $+\frac{1}{4}$,
$-\frac{1}{7}$ et $+\frac{1}{7}$, et ainsi de suite jusqu'à $\frac{1}{2011}$. Tous ces couples
s'annulent. Il ne survit que le premier terme de la première parenthèse et le dernier terme de la
dernière :

$$S = \frac{1}{3}\left( 1 - \frac{1}{2014} \right) = \frac{1}{3} \times \frac{2013}{2014}.$$

**On simplifie.** Comme $2013 = 3 \times 671$ :

$$S = \frac{3 \times 671}{3 \times 2014} = \frac{671}{2014}.$$

**Conclusion.**

$$\frac{1}{1 \times 4} + \frac{1}{4 \times 7} + \cdots + \frac{1}{2011 \times 2014} = \frac{671}{2014}.$$

Cette fraction est irréductible, car $671 = 11 \times 61$ et $2014 = 2 \times 19 \times 53$ n'ont
aucun facteur commun. Sa valeur approchée est $\text{0,333}\ldots$, tout juste en dessous de $\frac{1}{3}$ :
c'est normal, puisque $S = \frac{1}{3}\left(1 - \frac{1}{2014}\right)$ est un tout petit peu plus
petit que $\frac{1}{3}$.

**Contrôle sur un cas court.** Avec seulement les deux premiers termes, la méthode prédit
$\frac{1}{3}\left(1 - \frac{1}{7}\right) = \frac{1}{3} \times \frac{6}{7} = \frac{2}{7}$. Et le
calcul direct donne $\frac{1}{4} + \frac{1}{28} = \frac{7}{28} + \frac{1}{28} = \frac{8}{28} = \frac{2}{7}$. $\checkmark$

## Going further

1. Avec la même méthode et $k = 1$, calcule $\dfrac{1}{1 \times 2} + \dfrac{1}{2 \times 3} + \cdots + \dfrac{1}{99 \times 100}$. (Réponse : $\frac{99}{100}$.)
2. De quel nombre la somme de l'énoncé se rapproche-t-elle si on continue indéfiniment : $\frac{1}{1 \times 4} + \frac{1}{4 \times 7} + \frac{1}{7 \times 10} + \cdots$ ?
3. Calcule $\dfrac{1}{1 \times 3} + \dfrac{1}{3 \times 5} + \dfrac{1}{5 \times 7} + \cdots + \dfrac{1}{99 \times 101}$.
