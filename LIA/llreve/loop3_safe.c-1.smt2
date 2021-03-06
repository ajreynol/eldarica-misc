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
(declare-fun inv_main12 (Int Int Int Int) Bool)
(declare-fun inv_main29 (Int Int Int Int Int) Bool)
(declare-fun inv_main3 (Int) Bool)
(declare-fun inv_main37 (Int Int Int) Bool)
(assert (forall ((var0 Int)) (inv_main3 var0 ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (forall ((var5 Int)) (or (not (and (inv_main29 var2 var3 var0 var1 var4 ) (and (not (= var5 0 ) ) (<= 0 (+ (+ var0 (* (- 1) var1 ) ) (- 1) ) ) ) ) ) (inv_main29 var2 var3 var0 (+ var1 1 ) (+ var4 2 ) ) ) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (or (not (and (inv_main12 var2 var1 var0 var4 ) (and (not (= var3 0 ) ) (<= 0 (+ var1 (* (- 1) var0 ) ) ) ) ) ) (inv_main12 var2 var1 (+ var0 1 ) (+ var4 2 ) ) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (forall ((var5 Int)) (or (not (and (inv_main29 var3 var4 var0 var2 var5 ) (not (and (not (= var1 0 ) ) (<= 0 (+ (+ var0 (* (- 1) var2 ) ) (- 1) ) ) ) ) ) ) (inv_main37 var3 var4 var5 ) ) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (or (not (and (inv_main3 var0 ) (<= 0 (+ (+ 1 (* (- 1) var0 ) ) (- 1) ) ) ) ) (inv_main12 var0 1 1 0 ) ) ) )
(assert (forall ((var0 Int)) (or (not (and (inv_main3 var0 ) (not (<= 0 (+ (+ 1 (* (- 1) var0 ) ) (- 1) ) ) ) ) ) (inv_main12 var0 var0 1 0 ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (or (not (and (inv_main12 var2 var1 var0 var4 ) (and (<= 0 (+ (+ 1 (* (- 1) var2 ) ) (- 1) ) ) (not (and (not (= var3 0 ) ) (<= 0 (+ var1 (* (- 1) var0 ) ) ) ) ) ) ) ) (inv_main29 var2 var4 1 1 2 ) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (or (not (and (inv_main12 var2 var1 var0 var4 ) (and (not (<= 0 (+ (+ 1 (* (- 1) var2 ) ) (- 1) ) ) ) (not (and (not (= var3 0 ) ) (<= 0 (+ var1 (* (- 1) var0 ) ) ) ) ) ) ) ) (inv_main29 var2 var4 var2 1 2 ) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (not (and (inv_main37 var0 var1 var2 ) (not (= var1 var2 ) ) ) ) ) ) ) )
(check-sat)
