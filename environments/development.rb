name "development"
description "development env"
default_attributes {}
override_attributes (
   :yum => {
	  :epel => {
		 :enabled => {
			false
		 },
		 :managed => {
			true
		 }
	  }
   }
   )
