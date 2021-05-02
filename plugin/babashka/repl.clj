(import [java.io File]
        [java.lang ProcessBuilder$Redirect]
        [java.net ServerSocket])

(require '[babashka.wait :as wait]
         '[clojure.string :as str])

(let [nrepl-port (with-open [sock (ServerSocket. 0)]
                   (.getLocalPort sock))
      cp (str/join File/pathSeparatorChar ["src" "test"])
      pb (doto (ProcessBuilder. (into ["bb" "--nrepl-server"
                                       (str nrepl-port)
                                       "--classpath" cp]
                                      *command-line-args*))
           (.redirectOutput ProcessBuilder$Redirect/INHERIT))
      proc (.start pb)]
  (spit ".nrepl-port" nrepl-port)
  (wait/wait-for-port "localhost" nrepl-port)
  (.waitFor proc))
