name "development"
description "development env"
default_attributes ({
   :moonstruckdrops => {
      :yum => {
         :jenkins => {
               :install => true
            }
         }
      }
   })
override_attributes ({
      :yum => {
         :epel => {
            :enabled => false,
            :managed => true
         }
      }
   })
