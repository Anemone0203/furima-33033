class Arrival < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '1~2日で発送' },
    { id: 3, name: '2~3で発送' },
    { id: 4, name: '4~7で発送' }
  ]
end
