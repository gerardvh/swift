// RUN: %target-swift-ide-test -code-completion -source-filename %s -code-completion-token=TOP_LEVEL_1 | FileCheck %s -check-prefix=KW_DECL_STMT

// RUN: %target-swift-ide-test -code-completion -source-filename %s -code-completion-token=IN_FUNC_BODY_1 | FileCheck %s -check-prefix=KW_DECL_STMT
// RUN: %target-swift-ide-test -code-completion -source-filename %s -code-completion-token=IN_FUNC_BODY_2 | FileCheck %s -check-prefix=KW_DECL_STMT
// RUN: %target-swift-ide-test -code-completion -source-filename %s -code-completion-token=IN_FUNC_BODY_3 | FileCheck %s -check-prefix=KW_DECL_STMT
// RUN: %target-swift-ide-test -code-completion -source-filename %s -code-completion-token=IN_FUNC_BODY_4 | FileCheck %s -check-prefix=KW_DECL_STMT
// RUN: %target-swift-ide-test -code-completion -source-filename %s -code-completion-token=IN_FUNC_BODY_5 | FileCheck %s -check-prefix=KW_DECL_STMT

// RUN: %target-swift-ide-test -code-completion -source-filename %s -code-completion-token=IN_NOMINAL_DECL_1 | FileCheck %s -check-prefix=KW_DECL
// RUN: %target-swift-ide-test -code-completion -source-filename %s -code-completion-token=IN_NOMINAL_DECL_2 | FileCheck %s -check-prefix=KW_DECL
// RUN: %target-swift-ide-test -code-completion -source-filename %s -code-completion-token=IN_NOMINAL_DECL_3 | FileCheck %s -check-prefix=KW_DECL
// RUN: %target-swift-ide-test -code-completion -source-filename %s -code-completion-token=IN_NOMINAL_DECL_4 | FileCheck %s -check-prefix=KW_DECL
// RUN: %target-swift-ide-test -code-completion -source-filename %s -code-completion-token=IN_NOMINAL_DECL_5 | FileCheck %s -check-prefix=KW_DECL
// RUN: %target-swift-ide-test -code-completion -source-filename %s -code-completion-token=IN_NOMINAL_DECL_6 | FileCheck %s -check-prefix=KW_DECL
// RUN: %target-swift-ide-test -code-completion -source-filename %s -code-completion-token=IN_NOMINAL_DECL_7 | FileCheck %s -check-prefix=KW_DECL
// RUN: %target-swift-ide-test -code-completion -source-filename %s -code-completion-token=IN_NOMINAL_DECL_8 | FileCheck %s -check-prefix=KW_DECL
// RUN: %target-swift-ide-test -code-completion -source-filename %s -code-completion-token=IN_NOMINAL_DECL_9 | FileCheck %s -check-prefix=KW_DECL
// RUN: %target-swift-ide-test -code-completion -source-filename %s -code-completion-token=IN_NOMINAL_DECL_10 | FileCheck %s -check-prefix=KW_DECL

// RUN: %target-swift-ide-test -code-completion -source-filename %s -code-completion-token=SUPER_KEYWORD0 | FileCheck %s -check-prefix=SUPER_KEYWORD0
// RUN: %target-swift-ide-test -code-completion -source-filename %s -code-completion-token=SUPER_KEYWORD1 | FileCheck %s -check-prefix=SUPER_KEYWORD1
// RUN: %target-swift-ide-test -code-completion -source-filename %s -code-completion-token=SUPER_KEYWORD2 | FileCheck %s -check-prefix=SUPER_KEYWORD2
// RUN: %target-swift-ide-test -code-completion -source-filename %s -code-completion-token=SUPER_KEYWORD3 | FileCheck %s -check-prefix=SUPER_KEYWORD3

// RUN: %target-swift-ide-test -code-completion -source-filename %s -code-completion-token=EXPR_1 > %t.expr1
// RUN: FileCheck %s -check-prefix=KW_EXPR < %t.expr1
// RUN: FileCheck %s -check-prefix=KW_EXPR_NEG < %t.expr1
// RUN: %target-swift-ide-test -code-completion -source-filename %s -code-completion-token=EXPR_2 > %t.expr2
// RUN: FileCheck %s -check-prefix=KW_EXPR < %t.expr2
// RUN: FileCheck %s -check-prefix=KW_EXPR_NEG < %t.expr2
// RUN: %target-swift-ide-test -code-completion -source-filename %s -code-completion-token=EXPR_3 > %t.expr3
// RUN: FileCheck %s -check-prefix=KW_EXPR < %t.expr3
// RUN: FileCheck %s -check-prefix=KW_EXPR_NEG < %t.expr3
// RUN: %target-swift-ide-test -code-completion -source-filename %s -code-completion-token=EXPR_4 > %t.expr4
// RUN: FileCheck %s -check-prefix=KW_EXPR < %t.expr4
// RUN: FileCheck %s -check-prefix=KW_EXPR_NEG < %t.expr4
// RUN: %target-swift-ide-test -code-completion -source-filename %s -code-completion-token=EXPR_5 > %t.expr5
// RUN: FileCheck %s -check-prefix=KW_EXPR < %t.expr5
// RUN: FileCheck %s -check-prefix=KW_EXPR_NEG < %t.expr5
// RUN: %target-swift-ide-test -code-completion -source-filename %s -code-completion-token=EXPR_6 > %t.expr6
// RUN: FileCheck %s -check-prefix=KW_EXPR < %t.expr6
// RUN: FileCheck %s -check-prefix=KW_EXPR_NEG < %t.expr6

// KW_DECL: Begin completions
// KW_DECL-DAG: Keyword[class]/None: class{{; name=.+$}}
// KW_DECL-DAG: Keyword/None: convenience{{; name=.+$}}
// KW_DECL-DAG: Keyword[deinit]/None: deinit{{; name=.+$}}
// KW_DECL-DAG: Keyword/None: dynamic{{; name=.+$}}
// KW_DECL-DAG: Keyword[enum]/None: enum{{; name=.+$}}
// KW_DECL-DAG: Keyword[extension]/None: extension{{; name=.+$}}
// KW_DECL-DAG: Keyword/None: final{{; name=.+$}}
// KW_DECL-DAG: Keyword[func]/None: func{{; name=.+$}}
// KW_DECL-DAG: Keyword[import]/None: import{{; name=.+$}}
// KW_DECL-DAG: Keyword/None: infix{{; name=.+$}}
// KW_DECL-DAG: Keyword[init]/None: init{{; name=.+$}}
// KW_DECL-DAG: Keyword[internal]/None: internal{{; name=.+$}}
// KW_DECL-DAG: Keyword/None: lazy{{; name=.+$}}
// KW_DECL-DAG: Keyword[let]/None: let{{; name=.+$}}
// KW_DECL-DAG: Keyword/None: mutating{{; name=.+$}}
// KW_DECL-DAG: Keyword/None: nonmutating{{; name=.+$}}
// KW_DECL-DAG: Keyword[operator]/None: operator{{; name=.+$}}
// KW_DECL-DAG: Keyword/None: optional{{; name=.+$}}
// KW_DECL-DAG: Keyword/None: override{{; name=.+$}}
// KW_DECL-DAG: Keyword/None: postfix{{; name=.+$}}
// KW_DECL-DAG: Keyword/None: prefix{{; name=.+$}}
// KW_DECL-DAG: Keyword[private]/None: private{{; name=.+$}}
// KW_DECL-DAG: Keyword[protocol]/None: protocol{{; name=.+$}}
// KW_DECL-DAG: Keyword[public]/None: public{{; name=.+$}}
// KW_DECL-DAG: Keyword/None: required{{; name=.+$}}
// KW_DECL-DAG: Keyword[static]/None: static{{; name=.+$}}
// KW_DECL-DAG: Keyword[struct]/None: struct{{; name=.+$}}
// KW_DECL-DAG: Keyword[subscript]/None: subscript{{; name=.+$}}
// KW_DECL-DAG: Keyword[typealias]/None: typealias{{; name=.+$}}
// KW_DECL-DAG: Keyword/None: unowned{{; name=.+$}}
// KW_DECL-DAG: Keyword[var]/None: var{{; name=.+$}}
// KW_DECL-DAG: Keyword/None: weak{{; name=.+$}}
// KW_DECL: End completions

// KW_DECL_STMT: Begin completions
//
// Declaration keywords.
//
// KW_DECL_STMT-DAG: Keyword[class]/None: class{{; name=.+$}}
// KW_DECL_STMT-DAG: Keyword/None: convenience{{; name=.+$}}
// KW_DECL_STMT-DAG: Keyword[deinit]/None: deinit{{; name=.+$}}
// KW_DECL_STMT-DAG: Keyword/None: dynamic{{; name=.+$}}
// KW_DECL_STMT-DAG: Keyword[enum]/None: enum{{; name=.+$}}
// KW_DECL_STMT-DAG: Keyword[extension]/None: extension{{; name=.+$}}
// KW_DECL_STMT-DAG: Keyword/None: final{{; name=.+$}}
// KW_DECL_STMT-DAG: Keyword[func]/None: func{{; name=.+$}}
// KW_DECL_STMT-DAG: Keyword[import]/None: import{{; name=.+$}}
// KW_DECL_STMT-DAG: Keyword/None: infix{{; name=.+$}}
// KW_DECL_STMT-DAG: Keyword[init]/None: init{{; name=.+$}}
// KW_DECL_STMT-DAG: Keyword[internal]/None: internal{{; name=.+$}}
// KW_DECL_STMT-DAG: Keyword/None: lazy{{; name=.+$}}
// KW_DECL_STMT-DAG: Keyword[let]/None: let{{; name=.+$}}
// KW_DECL_STMT-DAG: Keyword/None: mutating{{; name=.+$}}
// KW_DECL_STMT-DAG: Keyword/None: nonmutating{{; name=.+$}}
// KW_DECL_STMT-DAG: Keyword[operator]/None: operator{{; name=.+$}}
// KW_DECL_STMT-DAG: Keyword/None: optional{{; name=.+$}}
// KW_DECL_STMT-DAG: Keyword/None: override{{; name=.+$}}
// KW_DECL_STMT-DAG: Keyword/None: postfix{{; name=.+$}}
// KW_DECL_STMT-DAG: Keyword/None: prefix{{; name=.+$}}
// KW_DECL_STMT-DAG: Keyword[private]/None: private{{; name=.+$}}
// KW_DECL_STMT-DAG: Keyword[protocol]/None: protocol{{; name=.+$}}
// KW_DECL_STMT-DAG: Keyword[public]/None: public{{; name=.+$}}
// KW_DECL_STMT-DAG: Keyword/None: required{{; name=.+$}}
// KW_DECL_STMT-DAG: Keyword[static]/None: static{{; name=.+$}}
// KW_DECL_STMT-DAG: Keyword[struct]/None: struct{{; name=.+$}}
// KW_DECL_STMT-DAG: Keyword[subscript]/None: subscript{{; name=.+$}}
// KW_DECL_STMT-DAG: Keyword[typealias]/None: typealias{{; name=.+$}}
// KW_DECL_STMT-DAG: Keyword/None: unowned{{; name=.+$}}
// KW_DECL_STMT-DAG: Keyword[var]/None: var{{; name=.+$}}
// KW_DECL_STMT-DAG: Keyword/None: weak{{; name=.+$}}
//
// Statement keywords.
//
// KW_DECL_STMT-DAG: Keyword[if]/None: if{{; name=.+$}}
// KW_DECL_STMT-DAG: Keyword[do]/None: do{{; name=.+$}}
// KW_DECL_STMT-DAG: Keyword[else]/None: else{{; name=.+$}}
// KW_DECL_STMT-DAG: Keyword[for]/None: for{{; name=.+$}}
// KW_DECL_STMT-DAG: Keyword[in]/None: in{{; name=.+$}}
// KW_DECL_STMT-DAG: Keyword[while]/None: while{{; name=.+$}}
// KW_DECL_STMT-DAG: Keyword[return]/None: return{{; name=.+$}}
// KW_DECL_STMT-DAG: Keyword[break]/None: break{{; name=.+$}}
// KW_DECL_STMT-DAG: Keyword[continue]/None: continue{{; name=.+$}}
// KW_DECL_STMT-DAG: Keyword[fallthrough]/None: fallthrough{{; name=.+$}}
// KW_DECL_STMT-DAG: Keyword[switch]/None: switch{{; name=.+$}}
// KW_DECL_STMT-DAG: Keyword[case]/None: case{{; name=.+$}}
// KW_DECL_STMT-DAG: Keyword[default]/None: default{{; name=.+$}}
// KW_DECL_STMT-DAG: Keyword[where]/None: where{{; name=.+$}}
// KW_DECL_STMT-DAG: Keyword[catch]/None: catch{{; name=.+$}}
//
// Misc.
//
// KW_DECL_STMT-DAG: Keyword[throw]/None: throw{{; name=.+$}}
// KW_DECL_STMT-DAG: Keyword[try]/None: try{{; name=.+$}}
// KW_DECL_STMT-DAG: Keyword[try]/None: try!{{; name=.+$}}
// KW_DECL_STMT-DAG: Keyword[try]/None: try?{{; name=.+$}}
// KW_DECL_STMT-DAG: Keyword[__FUNCTION__]/None: __FUNCTION__[#String#]{{; name=.+$}}
// KW_DECL_STMT-DAG: Keyword[__FILE__]/None: __FILE__[#String#]{{; name=.+$}}
// KW_DECL_STMT-DAG: Keyword[__LINE__]/None: __LINE__[#Int#]{{; name=.+$}}
// KW_DECL_STMT-DAG: Keyword[__COLUMN__]/None: __COLUMN__[#Int#]{{; name=.+$}}
//
// Literals
//
// KW_DECL_STMT-DAG: Literal[Boolean]/None: false[#Bool#]{{; name=.+$}}
// KW_DECL_STMT-DAG: Literal[Boolean]/None: true[#Bool#]{{; name=.+$}}
// KW_DECL_STMT-DAG: Literal[Nil]/None: nil{{; name=.+$}}
// KW_DECL_STMT: End completions


// KW_EXPR: Begin completions
//
// Expressions
//
// KW_EXPR-DAG: Keyword[try]/None: try{{; name=.+$}}
// KW_EXPR-DAG: Keyword[try]/None: try!{{; name=.+$}}
// KW_EXPR-DAG: Keyword[try]/None: try?{{; name=.+$}}
// KW_EXPR-DAG: Keyword[__FUNCTION__]/None: __FUNCTION__[#String#]{{; name=.+$}}
// KW_EXPR-DAG: Keyword[__FILE__]/None: __FILE__[#String#]{{; name=.+$}}
// KW_EXPR-DAG: Keyword[__LINE__]/None: __LINE__[#Int#]{{; name=.+$}}
// KW_EXPR-DAG: Keyword[__COLUMN__]/None: __COLUMN__[#Int#]{{; name=.+$}}
//
// let and var
//
// KW_EXPR-DAG: Keyword[let]/None: let{{; name=.+$}}
// KW_EXPR-DAG: Keyword[var]/None: var{{; name=.+$}}
//
// Literals
//
// KW_EXPR-DAG: Literal[Boolean]/None: false[#Bool#]{{; name=.+$}}
// KW_EXPR-DAG: Literal[Boolean]/None: true[#Bool#]{{; name=.+$}}
// KW_EXPR-DAG: Literal[Nil]/None: nil{{; name=.+$}}
// KW_EXPR: End completions

// KW_EXPR_NEG: Begin completions
//
// Declaration keywords
//
// KW_EXPR_NEG-NOT: class
// KW_EXPR_NEG-NOT: convenience
// KW_EXPR_NEG-NOT: mutating
// KW_EXPR_NEG-NOT: weak
//
// Statement keywords
//
// KW_EXPR_NEG-NOT: Keyword{{.*}}throw
// KW_EXPR_NEG-NOT: while
// KW_EXPR_NEG-NOT: switch
// KW_EXPR_NEG-NOT: catch
// KW_EXPR_NEG-NOT: break
// KW_EXPR_NEG: End completions

#^TOP_LEVEL_1^#

func testInFuncBody1() {
  #^IN_FUNC_BODY_1^#
}

struct InStructFunc {
  func testInFuncBody2() {
    #^IN_FUNC_BODY_2^#
  }
}

enum InEnumFunc {
  func testInFuncBody3() {
    #^IN_FUNC_BODY_3^#
  }
}

class InClassFunc {
  func testInFuncBody4() {
    #^IN_FUNC_BODY_4^#
  }
}

class InClassFunc {
  class Nested {
    func testInFuncBody5() {
      #^IN_FUNC_BODY_5^#
    }
  }
}


struct InStruct {
  #^IN_NOMINAL_DECL_1^#
}

enum InEnum {
  #^IN_NOMINAL_DECL_2^#
}

class InClass {
  #^IN_NOMINAL_DECL_3^#
}

protocol InProtocol {
  #^IN_NOMINAL_DECL_4^#
}

struct AfterOtherKeywords1 {
  public #^IN_NOMINAL_DECL_5^#
}

struct AfterOtherKeywords2 {
  mutating #^IN_NOMINAL_DECL_6^#
}

class AfterOtherKeywords3 {
  override #^IN_NOMINAL_DECL_7^#
}

class AfterOtherKeywords4 {
  public override #^IN_NOMINAL_DECL_8^#
}

extension InStruct {
  #^IN_NOMINAL_DECL_9^#
}

extension InProtocol {
  #^IN_NOMINAL_DECL_10^#
}

class SuperSuperClass {
   func f1() {
    #^SUPER_KEYWORD0^#
// SUPER_KEYWORD0-NOT: Keyword{{.*}}super
  }
}

class SuperClass : SuperSuperClass {
   func f2() {
    #^SUPER_KEYWORD1^#
  }
// SUPER_KEYWORD1: Keyword[super]/CurrNominal:                       super[#SuperSuperClass#]; name=super{{$}}
}

class SubClass : SuperClass {
  func f3() {
    #^SUPER_KEYWORD2^#
  }
// SUPER_KEYWORD2: Keyword[super]/CurrNominal:                       super[#SuperClass#]; name=super{{$}}
}

extension SubClass {
  func f4() {
    #^SUPER_KEYWORD3^#
  }
// SUPER_KEYWORD3: Keyword[super]/CurrNominal:                       super[#SuperClass#]; name=super{{$}}
}

func inExpr1() {
  (#^EXPR_1^#)
}
func inExpr2() {
  let x = #^EXPR_2^#
}
func inExpr3() {
  if #^EXPR_3^# {}
}
func inExpr4() {
  let x = 1
  x + #^EXPR_4^#
}
func inExpr5() {
  var x: Int
  x = #^EXPR_5^#
}
func inExpr6() -> Int {
  return #^EXPR_6^#
}
