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
(set-info :status unsat)
(declare-fun inv_main19 (Int Int Int Int Int) Bool)
(declare-fun inv_main25 (Int Int Int) Bool)
(declare-fun inv_main3 (Int) Bool)
(declare-fun inv_main8 (Int Int Int Int) Bool)
(assert (forall ((var0 Int)) (inv_main3 var0 ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (forall ((var5 Int)) (or (not (and (inv_main19 var4 var1 var5 var2 var0 ) (and (not (= var3 0 ) ) (<= 0 (+ var5 (* (- 1) var2 ) ) ) ) ) ) (inv_main19 var4 var1 var5 (+ var2 1 ) (+ var0 var2 ) ) ) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (or (not (and (inv_main8 var2 var4 var1 var3 ) (and (not (= var0 0 ) ) (<= 0 (+ var4 (* (- 1) var1 ) ) ) ) ) ) (inv_main8 var2 var4 (+ var1 1 ) (+ var3 var1 ) ) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (forall ((var5 Int)) (or (not (and (inv_main19 var3 var1 var5 var2 var0 ) (not (and (not (= var4 0 ) ) (<= 0 (+ var5 (* (- 1) var2 ) ) ) ) ) ) ) (inv_main25 var3 var1 var0 ) ) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (or (not (inv_main3 var0 ) ) (inv_main8 var0 var0 0 0 ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (or (not (and (inv_main8 var2 var4 var1 var3 ) (not (and (not (= var0 0 ) ) (<= 0 (+ var4 (* (- 1) var1 ) ) ) ) ) ) ) (inv_main19 var2 var3 var2 1 0 ) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (not (and (inv_main25 var2 var1 var0 ) (not (= var1 var0 ) ) ) ) ) ) ) )
(check-sat)
