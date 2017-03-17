(set-env!
 :resource-paths #{"resources"}
 :source-paths #{"src" #_"cljs"}
 :dependencies '[[org.clojure/clojure "1.9.0-alpha15"]
                 [boot-deps "0.1.6"]
                 [net.n01se/clojure-jna "1.0.0"]
                 [org.clojure/tools.nrepl "0.2.12"]

                 #_(

                 [com.cemerick/piggieback "0.2.1"]
                 [org.clojure/tools.nrepl "0.2.12"]
                 [weasel "0.7.0" :exclusions [org.clojure/clojurescript]]
                 [green-tags "0.3.0-alpha"]
                 [hiccup "1.0.5"]
                 [aleph "0.4.2-alpha10"]
                 [ring "1.6.0-beta6"  :exclusions [org.clojure/java.classpath]]
                 [org.clojure/data.json "0.2.6"]
                 [org.clojure/core.async "0.2.395"]
                 [org.omcljs/om "1.0.0-alpha47"]
                 [sablono "0.7.6"]
                 [org.clojure/test.check "0.9.0"]
                    [juxt/dirwatch "0.2.3"])])

(swap! boot.repl/*default-dependencies*
       concat '[[cider/cider-nrepl "0.12.0"]
                #_[refactor-nrepl "2.0.0-SNAPSHOT"]])

(swap! boot.repl/*default-middleware*
       conj 'cider.nrepl/cider-middleware)

(def package-version
  (let [v (clojure.string/trim-newline (slurp "VERSION"))
        p (System/getenv "PATCH_LEVEL")]
    (if p
      (str v "." p)
      (str v ".0-SNAPSHOT" p))))

(task-options!
 pom {:project 'paxton
      :version package-version}
 jar {:main 'paxton.core}
 target {:dir #{"target/"}})


(deftask build []
  (comp
   (aot :namespace #{'paxton.core})
   (pom)
   (uber)
   (jar)
   (sift :include #{#"project.jar$"})
   (target)))

(require 'paxton.core)
