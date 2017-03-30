# Paxton

A compositor for Wayland (written in/extensible using)
Clojure. Doesn't work yet

Per Wikipedia, "Sir Joseph Paxton (3 August 1803 – 8 June 1865) was an
English gardener, architect and Member of Parliament, best known for
designing the Crystal Palace".  Clearly a man who knew how to arange
windows


```
$ nix-shell # or arrange in some other way to install the dependencies
[nix-shell:~/src/paxton]$ boot repl
...
boot.user=> (future (paxton.core/-main))
```

If you are running under X11, it will pop up a blank Wayland window.
When you move the mouse around and hit keys you will see debugging spew
which is (should be) in some way lightly correlated with your
activity.

In another window you can now run e.g. `weston-terminal` which will
render its initial window and let you type into it.  Actual window
management of any kind is still yet to be implemented.



