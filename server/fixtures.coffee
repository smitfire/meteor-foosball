if Teams.find().count() == 0
  [
    {name: 'Barcelona'}
    {name: 'Johannesburg'}
  ].forEach (data) -> Teams.insert(data)