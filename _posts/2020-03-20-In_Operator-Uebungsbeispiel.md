---
title: Beispielcode zum IN-Operator in Kotlin
description: Wie wenden wir den IN-Operator in Kotlin an? Hier einige Quellcode-Beispiele.
tags: in-operator, Java, Kotlin, Programmierung, Softwareentwicklung, Programmiersprache
lang: de
author: bernhard_j_mayr
layout: post
---

# Übungsbeispiel zum ```in```-Operator
Implementiere die Funktion ```isValidIdentifier```. Ein valider Identifier weist folgende Merkmale auf:

- nicht leerer String
- beginnt mit einem Buchstaben oder ```_```
- beinhaltet nur Buchstaben, ```_``` und Ziffern.

```kotlin
fun isValidIdentifier(s: String): Boolean {
    TODO()
}

fun main(args: Array<String>) {
    println(isValidIdentifier("name"))   // true
    println(isValidIdentifier("_name"))  // true
    println(isValidIdentifier("_12"))    // true
    println(isValidIdentifier(""))       // false
    println(isValidIdentifier("012"))    // false
    println(isValidIdentifier("no$"))    // false
}
```

**Lösung**

```kotlin
fun isValidIdentifier(s: String): Boolean {
    fun isValidCharacter(ch: Char) =
        ch == '_' || ch in '0'..'9' || ch in 'a'..'z' || ch in 'A'..'Z'
    if (s.isEmpty() || s[0] in '0'..'9') return false
    for (ch in s) {
        if (!isValidCharacter(ch)) return false
    }
    return true
}

fun main(args: Array<String>) {
    println(isValidIdentifier("name"))   // true
    println(isValidIdentifier("_name"))  // true
    println(isValidIdentifier("_12"))    // true
    println(isValidIdentifier(""))       // false
    println(isValidIdentifier("012"))    // false
    println(isValidIdentifier("no$"))    // false
}
```
