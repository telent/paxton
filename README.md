# Paxton

A compositor for Wayland (written in/extensible using) Clojure.

Doesn't work yet

```
$ nix-shell
[nix-shell:~/src/paxton]$ boot repl
...
boot.user=> (paxton.core/-main)
```

If you move the mouse around and hit keys you will see debugging spew
which is (should be) in some way lightly correlated with your activity.

In another winow you can now run e.g. `weston-terminal` which will
render its initial window and let you type into it.  Actual window
management of any kind is still yet to be implemented.



