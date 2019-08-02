class Quote < ApplicationRecord
  validates:saying , presence:true , length:{ minimum: 3, maximum: 140 }
  validates:author , presence:true , length:{ minimum: 3, maximum: 50 }
end
