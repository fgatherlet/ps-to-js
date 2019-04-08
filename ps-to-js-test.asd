#|
  This file is a part of ps-to-js project.
  Copyright (c) 2019 fgatherlet (fgatherlet@gmaill.com)
|#

(defsystem "ps-to-js-test"
  :defsystem-depends-on ("prove-asdf")
  :author "fgatherlet"
  :license "MIT"
  :depends-on ("ps-to-js"
               "prove")
  :components ((:module "t"
                :components
                ((:test-file "test"))))
  :description "Test system for ps-to-js"

  :perform (test-op (op c) (symbol-call :prove-asdf :run-test-system c)))
