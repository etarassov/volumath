---
id: "41131"
title: "L'échiquier numéroté et les pièces"
grade: 8
theme: arithmetic
difficulty: 2
duration_min: 15
tags: [divisibilite, echiquier, somme, criteres-de-divisibilite]
adapted_from: null
see_also: []
same_as: []
created: 2026-11-27
source:
  name: "MathCool, Грузия, август 2026 г., группа «Земляные элементали», листок «Делимость» (А. А. Пронина)"
  reference: "mathcool-2026-08-17-delimost.pdf, задача 11"
  url: ""
  original_language: "ru"
  local_copy: "sources/originals/mathcool/mathcool-2026-08-17-delimost.pdf"
---

## Statement

On écrit dans les cases d'un échiquier les nombres entiers de $1$ à $64$, dans un ordre quelconque : chaque case reçoit un nombre, et chaque nombre est écrit une seule fois.

Au cours d'une partie d'échecs, peut-il arriver que la somme des nombres écrits sur les cases occupées par des pièces soit exactement la moitié de la somme des nombres écrits sur les cases libres ?

## Hints

1. Appelle $S$ la somme des nombres des cases occupées. Que vaudrait alors la somme des nombres des cases libres ?
2. Écris la somme de tous les nombres de $1$ à $64$ à l'aide de $S$.
3. Calcule $1 + 2 + \cdots + 64$. Ce nombre est-il divisible par $3$ ?

## Solution

Supposons que cela arrive, et notons $S$ la somme des nombres écrits sur les cases occupées. La somme des nombres des cases libres vaut alors $2S$. Toute case est occupée ou libre, donc la somme de tous les nombres écrits vaut

$$S + 2S = 3S.$$

Elle serait donc divisible par $3$.

**Calculons cette somme.** On regroupe les nombres par paires : $1 + 64$, $2 + 63$, $3 + 62$, ..., $32 + 33$. Il y a $32$ paires, et chacune vaut $65$, donc

$$1 + 2 + \cdots + 64 = 32 \times 65 = 2080.$$

La somme des chiffres de $2080$ vaut $2 + 0 + 8 + 0 = 10$, qui n'est pas divisible par $3$. Donc $2080$ n'est pas divisible par $3$, et ne peut pas s'écrire $3S$.

**Conclusion : c'est impossible, quel que soit l'ordre des nombres sur l'échiquier et quelle que soit la position des pièces.**
