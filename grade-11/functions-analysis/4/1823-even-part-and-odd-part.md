---
id: "1823"
title: "Une partie paire et une partie impaire"
grade: 11
theme: functions-analysis
difficulty: 4
duration_min: 35
tags: [fonctions, parite, existence-et-unicite, analyse-synthese]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Advanced, Functions and Quadratic Equations"
  reference: "Handout-1598-1504.pdf, exercice 2 b) (corrigé dans Handout-1632-1520.pdf)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-1598-1504.pdf"
---

## Statement

Rappel. Une fonction $u$ définie sur $\mathbb{R}$ est **paire** si $u(-x) = u(x)$ pour tout réel $x$, et **impaire** si $u(-x) = -u(x)$ pour tout réel $x$.

Soit $f$ une fonction quelconque définie sur $\mathbb{R}$ et à valeurs réelles.

Démontrer qu'il existe une fonction paire $g$ et une fonction impaire $h$, toutes deux définies sur $\mathbb{R}$, telles que

$$f = g + h,$$

et qu'il n'y a **qu'une seule** façon de le faire.

## Hints

1. Commence par un exemple pour te faire une idée : décompose $f(x) = 3x - x^2$, puis $f(x) = (x+1)^2$.
2. Pour un problème d'existence **et** d'unicité, la bonne méthode est l'analyse-synthèse. Dans l'analyse, on **suppose** le problème résolu et on cherche à quoi $g$ et $h$ sont forcément égales.
3. Suppose donc $f = g+h$ avec $g$ paire et $h$ impaire. Écris la relation en $x$, puis écris-la en $-x$.
4. Tu obtiens deux égalités : $f(x) = g(x) + h(x)$ et $f(-x) = g(x) - h(x)$. Que se passe-t-il si tu les additionnes ? Si tu les soustrais ?
5. L'analyse te donne les seules formules possibles pour $g$ et $h$ : c'est l'unicité. Il reste la synthèse : vérifier que ces formules conviennent vraiment.

## Solution

On raisonne par **analyse-synthèse**.

### Analyse : si une telle décomposition existe, elle est forcée

Supposons qu'il existe une fonction paire $g$ et une fonction impaire $h$ telles que $f = g + h$. Alors, pour tout réel $x$ :

$$f(x) = g(x) + h(x). \qquad (1)$$

Écrivons la même relation en $-x$ :

$$f(-x) = g(-x) + h(-x).$$

Comme $g$ est paire et $h$ impaire, $g(-x) = g(x)$ et $h(-x) = -h(x)$, donc

$$f(-x) = g(x) - h(x). \qquad (2)$$

**En additionnant $(1)$ et $(2)$ :**

$$f(x) + f(-x) = 2g(x), \qquad \text{donc} \qquad g(x) = \frac{f(x) + f(-x)}{2}.$$

**En soustrayant $(2)$ de $(1)$ :**

$$f(x) - f(-x) = 2h(x), \qquad \text{donc} \qquad h(x) = \frac{f(x) - f(-x)}{2}.$$

Ainsi, **si** une telle décomposition existe, alors $g$ et $h$ sont nécessairement données par ces deux formules. Cela prouve déjà l'**unicité**.

### Synthèse : ces formules conviennent

Définissons maintenant, pour tout réel $x$,

$$g(x) = \frac{f(x) + f(-x)}{2}, \qquad h(x) = \frac{f(x) - f(-x)}{2}.$$

Ces deux fonctions sont bien définies sur $\mathbb{R}$ tout entier, puisque $f$ l'est. Vérifions les trois propriétés voulues.

**$g$ est paire :**

$$g(-x) = \frac{f(-x) + f(x)}{2} = \frac{f(x) + f(-x)}{2} = g(x).$$

**$h$ est impaire :**

$$h(-x) = \frac{f(-x) - f(x)}{2} = -\,\frac{f(x) - f(-x)}{2} = -h(x).$$

**Leur somme vaut $f$ :**

$$g(x) + h(x) = \frac{f(x)+f(-x)}{2} + \frac{f(x)-f(-x)}{2} = \frac{2f(x)}{2} = f(x).$$

### Conclusion

Toute fonction $f$ définie sur $\mathbb{R}$ s'écrit d'une seule façon comme somme d'une fonction paire et d'une fonction impaire, à savoir

$$f(x) = \underbrace{\frac{f(x)+f(-x)}{2}}_{\text{partie paire}} \; + \; \underbrace{\frac{f(x)-f(-x)}{2}}_{\text{partie impaire}}.$$

**Exemples.**

| $f(x)$ | partie paire $g(x)$ | partie impaire $h(x)$ |
|---|---|---|
| $3x - x^2$ | $-x^2$ | $3x$ |
| $(x+1)^2$ | $x^2+1$ | $2x$ |
| $x^3 + 5x^2 - 2x + 7$ | $5x^2 + 7$ | $x^3 - 2x$ |

Pour un polynôme, la partie paire rassemble les termes de degré pair et la partie impaire ceux de degré impair. La décomposition générale dit que ce phénomène vaut pour n'importe quelle fonction, même très irrégulière.

## Going further

1. Décompose la fonction $f(x) = \dfrac{1}{x+2}$, définie sur $\mathbb{R}$ privé de $-2$. Où faut-il faire attention par rapport à l'énoncé ?
2. Quelles sont les fonctions qui sont à la fois paires et impaires ? Retrouve, avec cette réponse, l'unicité de la décomposition par un autre chemin : si $f = g+h = g'+h'$, que dire de $g-g'$ ?
3. Décompose $f(x) = 2^x$. (Les deux morceaux obtenus sont, à un facteur près, le cosinus et le sinus hyperboliques.)
