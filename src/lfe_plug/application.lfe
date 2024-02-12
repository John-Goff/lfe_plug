(defmodule #eLfePlug.Application
  (behaviour #eApplication)
  (module-alias (#eLfePlug.Router #eRouter))
  (export
   (start 2) (stop 1)))

(defun start (_type _args)
  (let ((children '(#(#eBandit (#(plug #eLfePlug.Router) #(scheme http) #(port 7157)))))
        (opts '(#(strategy one_for_one) #(name #eLfePlug.Supervisor))))
    (#eSupervisor:start_link children opts)))

(defun stop (_state) 'ok)
