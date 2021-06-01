(in-package :mu-cl-resources)

;; This is not the *nicest* solution, but it will work for now
(defparameter *default-page-size* 10000)

(define-resource mqtt-message ()
    :class (s-prefix "schema:Message")
    :properties `(
        (:message-type :string ,(s-prefix "ext:mqttMessageType") :required)
        (:created-at :datetime ,(s-prefix "schema:dateSent") :required)
        (:topic :string ,(s-prefix "ext:mqttTopic"))
        (:body :string ,(s-prefix "schema:text"))
        (:retain :boolean ,(s-prefix "ext:mqttRetain"))
    )
    :resource-base (s-url "http://mu.semte.ch/vocabularies/ext/mqtt-service")
    :on-path "mqtt-messages"
)

;;
