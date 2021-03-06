(set-info :smt-lib-version 2.6)
(set-logic HORN)
(set-info :origin "
  Horn benchmarks for manually merged regression verification problems.

  References:

  http://formal.iti.kit.edu/projects/improve/reve/

  Dennis Felsing, Sarah Grebing, Vladimir Klebanov, Philipp Rümmer,
  Mattias Ulbrich:
  Automating regression verification. ASE 2014: 349-360

  Yulia Demyanova, Philipp Rümmer, Florian Zuleger:
  Systematic Predicate Abstraction Using Variable Roles. NFM 2017: 265-281

  C programs converted to SMT-LIB2 using Eldarica
")
(set-info :status sat)
(declare-fun inv_main14 (Int Int Int Int) Bool)
(declare-fun inv_main17 (Int Int Int) Bool)
(declare-fun inv_main3 (Int) Bool)
(declare-fun inv_main7 (Int Int Int) Bool)
(assert (forall ((var0 Int)) (inv_main3 var0 ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (or (not (and (inv_main14 var1 var3 var2 var0 ) (<= 0 (+ 10 (* (- 1) var0 ) ) ) ) ) (inv_main14 var1 var3 var2 (+ var0 1 ) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (or (not (and (inv_main7 var0 var2 var1 ) (<= 0 (+ 10 (* (- 1) var1 ) ) ) ) ) (inv_main7 var0 var2 (+ var1 1 ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (or (not (and (inv_main14 var1 var3 var2 var0 ) (not (<= 0 (+ 10 (* (- 1) var0 ) ) ) ) ) ) (inv_main17 var1 var3 var0 ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (or (not (inv_main3 var0 ) ) (inv_main7 var0 var0 0 ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (or (not (and (inv_main7 var0 var2 var1 ) (not (<= 0 (+ 10 (* (- 1) var1 ) ) ) ) ) ) (inv_main14 var0 var1 var0 1 ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (not (and (inv_main17 var0 var1 var2 ) (not (= var1 var2 ) ) ) ) ) ) ) )
(check-sat)
